unit UController;

interface

uses

  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs, Variants, Contnrs,  StrUtils,
  FireDAC.Comp.Client, FireDAC.Stan.Param, System.Generics.Collections, UClienteDao, UClienteDados, UFrmEditarCliente;

type
  TController = class

  private
    FConexaoBanco     : TClienteDAO;
    FClienteDados     : TClienteDados;
    FClienteList      : TClienteList;
    FQuery            : TFDQuery;
    FrmEditarClientes : TForm2;

  public
    constructor Create;
    destructor  Destroy; override;

    // Validações e consultas
    function  plCarregaClientePorID(ID: Integer): TClienteDados;
    procedure plCarregaListaCliente;
    procedure plConsultaCliente(TipoConsulta: Integer; Filtro: Variant);

    function  flValidaGravacao(Nome, CpfCnpj, Telefone, Email: string): Boolean;

    // Métodos do CRUD
    function  flGravaCliente(Nome, CpfCnpj, TipoPessoa, Telefone, Email: string; DataCadastro: TDateTime; Ativo: Boolean): string;
    function  flEditaCliente(ID: Integer; Nome, CpfCnpj, TipoPessoa, Telefone, Email: string; DataCadastro: TDateTime; Ativo: Boolean): string;
    function  flExcluiCliente(ID: Integer): string;

    // Métodos tela edição
    procedure ChamaTelaEdição(Codigo: Integer);
    procedure DefineEventosTelaEdicao;

    // Eventos tela edição
    procedure OnClickBtnGravar(Sender: TObject);
    procedure OnClickBtnExcluir(Sender: TObject);

    property  ClienteDados : TClienteDados        read FClienteDados;
    property  ClienteList  : TClienteList         read FClienteList;
    property  Query        : TFDQuery             read FQuery        write FQuery;

  end;

implementation


{ TController }


constructor TController.Create;
begin
  FConexaoBanco     := TClienteDAO.Create;
  FQuery            := TFDQuery.Create(Application);
  FQuery.Connection := FConexaoBanco.Conexao;
  FClienteList      := TClienteList.Create;
  FrmEditarClientes := TForm2.Create(nil);
  plCarregaListaCliente;
end;

destructor TController.Destroy;
begin
  FreeAndNil(FrmEditarClientes);
  FreeAndNil(FClienteList);
  FreeAndNil(FClienteDados);
  inherited Destroy;
end;

function TController.plCarregaClientePorID(ID: Integer): TClienteDados;
begin

  // Carrega o Cliente por ID e retorna um objeto de Cliente

  try
    FQuery.Close;
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select * from CLIENTE where ID = :vID');
    FQuery.ParamByName('vID').AsInteger := ID;
    FQuery.Open;

    FClienteDados := TClienteDados.Create(FQuery.FieldByName('ID').AsInteger,
                                          FQuery.FieldByName('NOME').AsString,
                                          FQuery.FieldByName('CPF_CNPJ').AsString,
                                          FQuery.FieldByName('TIPO_PESSOA').AsString,
                                          FQuery.FieldByName('TELEFONE').AsString,
                                          FQuery.FieldByName('EMAIL').AsString,
                                          FQuery.FieldByName('DATA_CADASTRO').AsDateTime,
                                          FQuery.FieldByName('ATIVO').AsBoolean);

    FQuery.Close;
  except
    on E: Exception do
       ShowMessage('Erro! ' + E.Message);
  end;

  Result := FClienteDados;
end;

procedure TController.plCarregaListaCliente;
begin

  // Busca todos os clientes no banco e os insere na lista, depois retorna a lista para exibir no grid
  try
    FClienteList.plLimpaListaCliente;

    FQuery.Close;
    FQuery.SQL.Clear;
    FQuery.SQL.Add('select * from CLIENTE order by ID asc');
    FQuery.Open;

    FQuery.First;
    while (not(FQuery.Eof)) do
           begin
             FClienteDados := TClienteDados.Create(FQuery.FieldByName('ID').AsInteger,
                                                   FQuery.FieldByName('NOME').AsString,
                                                   FQuery.FieldByName('CPF_CNPJ').AsString,
                                                   FQuery.FieldByName('TIPO_PESSOA').AsString,
                                                   FQuery.FieldByName('TELEFONE').AsString,
                                                   FQuery.FieldByName('EMAIL').AsString,
                                                   FQuery.FieldByName('DATA_CADASTRO').AsDateTime,
                                                   FQuery.FieldByName('ATIVO').AsBoolean);

             FClienteList.ListaCliente.Add(FClienteDados);
             FQuery.Next;
           end;
    FQuery.Close;
  except
    on E: Exception do
       ShowMessage('Erro! ' + E.Message);
  end;
end;

procedure TController.plConsultaCliente(TipoConsulta: Integer; Filtro: Variant);
begin

  // Consulta dos Clientes usando os 4 tipos de filtro
  FClienteList.plLimpaListaCliente;

  case TipoConsulta of

       // Consulta por Nome
       0: begin
            try
              FQuery.Close;
              FQuery.SQL.Clear;
              FQuery.SQL.Add('select * from CLIENTE where NOME like :vNOME order by ID asc');
              FQuery.ParamByName('vNOME').AsString := '%' + Filtro + '%';

              FQuery.Open;
              FQuery.First;
              while (not(FQuery.Eof)) do
                     begin
                       FClienteDados := TClienteDados.Create(FQuery.FieldByName('ID').AsInteger,
                                                             FQuery.FieldByName('NOME').AsString,
                                                             FQuery.FieldByName('CPF_CNPJ').AsString,
                                                             FQuery.FieldByName('TIPO_PESSOA').AsString,
                                                             FQuery.FieldByName('TELEFONE').AsString,
                                                             FQuery.FieldByName('EMAIL').AsString,
                                                             FQuery.FieldByName('DATA_CADASTRO').AsDateTime,
                                                             FQuery.FieldByName('ATIVO').AsBoolean);
                       FClienteList.ListaCliente.Add(FClienteDados);
                       FQuery.Next;
                     end;
                  FQuery.Close;
            except
              on E: Exception do
                 ShowMessage('Erro! ' + E.Message);
            end;
          end;

       // Consulta por CPF/CNPJ
       1: begin
            try
              FQuery.Close;
              FQuery.SQL.Clear;
              FQuery.SQL.Add('select * from CLIENTE where CPF_CNPJ = :vCPF_CNPJ order by ID asc');
              FQuery.ParamByName('vCPF_CNPJ').AsString := Filtro;

              FQuery.Open;
              FQuery.First;
              while (not(FQuery.Eof)) do
                     begin
                       FClienteDados := TClienteDados.Create(FQuery.FieldByName('ID').AsInteger,
                                                             FQuery.FieldByName('NOME').AsString,
                                                             FQuery.FieldByName('CPF_CNPJ').AsString,
                                                             FQuery.FieldByName('TIPO_PESSOA').AsString,
                                                             FQuery.FieldByName('TELEFONE').AsString,
                                                             FQuery.FieldByName('EMAIL').AsString,
                                                             FQuery.FieldByName('DATA_CADASTRO').AsDateTime,
                                                             FQuery.FieldByName('ATIVO').AsBoolean);
                       FClienteList.ListaCliente.Add(FClienteDados);
                       FQuery.Next;
                     end;
                  FQuery.Close;
            except
              on E: Exception do
                 ShowMessage('Erro! ' + E.Message);
            end;
          end;

       // Consulta por Data de cadastro
       2: begin
            try
              FQuery.Close;
              FQuery.SQL.Clear;
              FQuery.SQL.Add('select * from CLIENTE where to_char(DATA_CADASTRO, ' + QuotedStr('DD/MM/YYYY') + ') = ' + QuotedStr(DateToStr(Filtro)) + ' order by ID asc');

              FQuery.Open;
              FQuery.First;
              while (not(FQuery.Eof)) do
                     begin
                       FClienteDados := TClienteDados.Create(FQuery.FieldByName('ID').AsInteger,
                                                             FQuery.FieldByName('NOME').AsString,
                                                             FQuery.FieldByName('CPF_CNPJ').AsString,
                                                             FQuery.FieldByName('TIPO_PESSOA').AsString,
                                                             FQuery.FieldByName('TELEFONE').AsString,
                                                             FQuery.FieldByName('EMAIL').AsString,
                                                             FQuery.FieldByName('DATA_CADASTRO').AsDateTime,
                                                             FQuery.FieldByName('ATIVO').AsBoolean);
                       FClienteList.ListaCliente.Add(FClienteDados);
                       FQuery.Next;
                     end;
                  FQuery.Close;
            except
              on E: Exception do
                 ShowMessage('Erro! ' + E.Message);
            end;
          end;

       // Consulta por Ativo
       3: begin
            try
              FQuery.Close;
              FQuery.SQL.Clear;
              FQuery.SQL.Add('select * from CLIENTE where ATIVO = :vATIVO order by ID asc');
              FQuery.ParamByName('vATIVO').AsBoolean := Filtro;

              FQuery.Open;
              FQuery.First;
              while (not(FQuery.Eof)) do
                     begin
                       FClienteDados := TClienteDados.Create(FQuery.FieldByName('ID').AsInteger,
                                                             FQuery.FieldByName('NOME').AsString,
                                                             FQuery.FieldByName('CPF_CNPJ').AsString,
                                                             FQuery.FieldByName('TIPO_PESSOA').AsString,
                                                             FQuery.FieldByName('TELEFONE').AsString,
                                                             FQuery.FieldByName('EMAIL').AsString,
                                                             FQuery.FieldByName('DATA_CADASTRO').AsDateTime,
                                                             FQuery.FieldByName('ATIVO').AsBoolean);
                       FClienteList.ListaCliente.Add(FClienteDados);
                       FQuery.Next;
                     end;
                  FQuery.Close;
            except
              on E: Exception do
                 ShowMessage('Erro! ' + E.Message);
            end;
          end;
  end;
end;

function TController.flValidaGravacao(Nome, CpfCnpj, Telefone, Email: string): Boolean;
begin
  Result := (not(Nome.IsEmpty)
         and not(CpfCnpj.IsEmpty)
         and not(Telefone.IsEmpty)
         and not(Email.IsEmpty));
end;

function TController.flGravaCliente(Nome, CpfCnpj, TipoPessoa, Telefone, Email: string; DataCadastro: TDateTime; Ativo: Boolean): string;
begin

  if   flValidaGravacao(Nome, CpfCnpj, Telefone, Email) then
       begin

         // Faz a gravação do Cliente
         FQuery.Close;
         FQuery.SQL.Clear;
         FQuery.SQL.Add('insert into CLIENTE(NOME, CPF_CNPJ, TIPO_PESSOA, TELEFONE, EMAIL, DATA_CADASTRO, ATIVO) ');
         FQuery.SQL.Add('values (:vNOME, :vCPF_CNPJ, :vTIPO_PESSOA, :vTELEFONE, :vEMAIL, :vDATA_CADASTRO, :vATIVO) returning ID {into :vID}');

         FQuery.ParamByName('vID').AsInteger:= 0;
         FQuery.ParamByName('vNOME').AsString            := Nome;
         FQuery.ParamByName('vCPF_CNPJ').AsString        := CpfCnpj;
         FQuery.ParamByName('vTIPO_PESSOA').AsString     := TipoPessoa;
         FQuery.ParamByName('vTELEFONE').AsString        := Telefone;
         FQuery.ParamByName('vEMAIL').AsString           := Email;
         FQuery.ParamByName('vDATA_CADASTRO').AsDateTime := DataCadastro;
         FQuery.ParamByName('vATIVO').AsBoolean          := Ativo;

         try
           FQuery.ExecSQL;
           Result := EmptyStr;
         except
           on E: Exception do
              Result := Result + E.Message;
         end;

         // Insere o novo Cliente na lista
         try
           FClienteDados := TClienteDados.Create(FQuery.Params[7].AsInteger,
                                                 Nome,
                                                 CpfCnpj,
                                                 TipoPessoa,
                                                 Telefone,
                                                 Email,
                                                 DataCadastro,
                                                 Ativo);
           FClienteList.ListaCliente.Add(FClienteDados);
         except
           on E: Exception do
              Result := Result + E.Message;
         end;

       end
  else Result := Result + 'Os campos "Nome", "CPF/CNPJ", "Telefone" e "Email" são obrigatórios e devem ser informados.';

end;

function TController.flEditaCliente(ID: Integer; Nome, CpfCnpj, TipoPessoa, Telefone, Email: string; DataCadastro: TDateTime; Ativo: Boolean): string;
var
  i: Integer;
begin

  if   flValidaGravacao(Nome, CpfCnpj, Telefone, Email) then
       begin

         // Atualiza o Cliente na lista
         try
           FClienteList.ListaCliente.First;
           for i := 0 to FClienteList.ListaCliente.Count - 1 do
               begin
                 if   FClienteList.ListaCliente.Items[i].ID = ID then
                      begin
                        FClienteList.ListaCliente.Items[i].Nome         := Nome;
                        FClienteList.ListaCliente.Items[i].CpfCpnj      := CpfCnpj;
                        FClienteList.ListaCliente.Items[i].TipoPessoa   := TipoPessoa;
                        FClienteList.ListaCliente.Items[i].Telefone     := Telefone;
                        FClienteList.ListaCliente.Items[i].Email        := Email;
                        FClienteList.ListaCliente.Items[i].DataCadastro := DataCadastro;
                        FClienteList.ListaCliente.Items[i].Ativo        := Ativo;
                        Break;
                      end;
               end;
         except
           on E: Exception do
              ShowMessage('Erro: ' + E.Message);
         end;

         // Faz a Alteração do Cliente
         FQuery.Close;
         FQuery.SQL.Clear;
         FQuery.SQL.Add('update CLIENTE set NOME = :vNOME, CPF_CNPJ = :vCPF_CNPJ, TIPO_PESSOA = :vTIPO_PESSOA, ');
         FQuery.SQL.Add(' TELEFONE = :vTELEFONE, EMAIL = :vEMAIL, DATA_CADASTRO = :vDATA_CADASTRO, ATIVO = :vATIVO');
         FQuery.SQL.Add(' where ID = :vID');

         FQuery.ParamByName('vID').asInteger             := ID;
         FQuery.ParamByName('vNOME').AsString            := Nome;
         FQuery.ParamByName('vCPF_CNPJ').AsString        := CpfCnpj;
         FQuery.ParamByName('vTIPO_PESSOA').AsString     := TipoPessoa;
         FQuery.ParamByName('vTELEFONE').AsString        := Telefone;
         FQuery.ParamByName('vEMAIL').AsString           := Email;
         FQuery.ParamByName('vDATA_CADASTRO').AsDateTime := DataCadastro;
         FQuery.ParamByName('vATIVO').AsBoolean          := Ativo;

         try
           FQuery.ExecSQL;
           Result := EmptyStr;
         except
           on E: Exception do
              begin
                ShowMessage('Erro: ' + E.Message);
                Result := EmptyStr;
              end;
         end;
       end
  else Result := Result + 'Os campos "Nome", "CPF/CNPJ", "Telefone" e "Email" são obrigatórios e devem ser informados.';

end;

function TController.flExcluiCliente(ID: Integer): String;
var
  i: Integer;
begin

  // Percorre a lista para remover o Cliente excluído
  try
    FClienteList.ListaCliente.First;
    for i := 0 to FClienteList.ListaCliente.Count - 1 do
        begin
          if   FClienteList.ListaCliente.Items[i].ID = ID then
               begin
                 FClienteList.ListaCliente.Delete(i);
                 Break;
               end;
        end;
  except
    on E: Exception do
       Result := Result + E.Message;
  end;

  // Faz a exclusão do cliente
  FQuery.Close;
  FQuery.SQL.Clear;
  FQuery.SQL.Add('delete from CLIENTE where ID = :vID');
  
  FQuery.ParamByName('vID').AsInteger := ID;

  try
    FQuery.ExecSQL;
    Result := EmptyStr;
  except
    on E: Exception do
       Result := Result + E.Message;
  end;
end;

procedure TController.ChamaTelaEdição(Codigo: Integer);
var
  I : Integer;
begin
  // Define eventos da segunda tela
  DefineEventosTelaEdicao;

  // Carrega os campos da tela com os dados do cliente a partir da lista
  FClienteList.ListaCliente.First;
  for i := 0 to FClienteList.ListaCliente.Count -1 do
      begin
        if  (FClienteList.ListaCliente.Items[i].ID = Codigo) then
             begin
               FrmEditarClientes.edCodigo.Text           := IntToStr(FClienteList.ListaCliente.Items[i].ID);
               FrmEditarClientes.edNome.Text             := FClienteList.ListaCliente.Items[i].Nome;
               FrmEditarClientes.edCpfCnpj.Text          := FClienteList.ListaCliente.Items[i].CpfCpnj;
               FrmEditarClientes.meTelefone.Text         := FClienteList.ListaCliente.Items[i].Telefone;
               FrmEditarClientes.edEmail.Text            := FClienteList.ListaCliente.Items[i].Email;
               FrmEditarClientes.dtDataCadastro.DateTime := FClienteList.ListaCliente.Items[i].DataCadastro;

               if   FClienteList.ListaCliente.Items[i].TipoPessoa = 'Física' then
                    FrmEditarClientes.rgTipoDePessoa.ItemIndex := 0
               else FrmEditarClientes.rgTipoDePessoa.ItemIndex := 1;

               FrmEditarClientes.cbAtivo.Checked         := FClienteList.ListaCliente.Items[i].Ativo;

               Break;
             end;
      end;

  FrmEditarClientes.ShowModal;
end;

procedure TController.DefineEventosTelaEdicao;
begin
  FrmEditarClientes.btnGravar.OnClick  := OnClickBtnGravar;
  FrmEditarClientes.btnExcluir.OnClick := OnClickBtnExcluir;
end;

procedure TController.OnClickBtnGravar(Sender: TObject);
begin
  flEditaCliente(StrToInt(FrmEditarClientes.edCodigo.Text), FrmEditarClientes.edNome.Text, FrmEditarClientes.edCpfCnpj.Text,
                 FrmEditarClientes.rgTipoDePessoa.Items[FrmEditarClientes.rgTipoDePessoa.ItemIndex], FrmEditarClientes.meTelefone.Text,
                 FrmEditarClientes.edEmail.Text, FrmEditarClientes.dtDataCadastro.DateTime, FrmEditarClientes.cbAtivo.Checked);
  FrmEditarClientes.Close;
end;

procedure TController.OnClickBtnExcluir(Sender: TObject);
begin
  flExcluiCliente(StrToInt(FrmEditarClientes.edCodigo.Text));
  FrmEditarClientes.Close;
end;

end.
