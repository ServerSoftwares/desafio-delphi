unit UController;

interface

uses

  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs, Variants, Contnrs,  StrUtils,
  FireDAC.Comp.Client, FireDAC.Stan.Param, System.Generics.Collections, UClienteDao, UClienteDados;

type
  TController = class

  private
    FConexaoBanco  : TClienteDAO;
    FClienteDados  : TClienteDados;
    FClienteList   : TClienteList;
    FClienteFilter : TClienteFilter;
    FListaCliente  : TList<TClienteDados>;
    FQuery         : TFDQuery;

  public
    constructor Create;
    destructor  Destroy; override;

    // Métodos do CRUD
    function CarregaListaCliente : TList<TClienteDados>;
    function CarregaClientePorID(ID: Integer): TClienteDados;
    function ConsultaCliente(TipoConsulta: Integer; Valor: Variant) : TList<TClienteDados>;

    function flValidaGravacao(Nome, CpfCnpj, Telefone, Email: string): Boolean;

    function flGravaCliente(Nome, CpfCnpj, TipoPessoa, Telefone, Email: string; DataCadastro: TDateTime; Ativo: Boolean): string;
    function flEditaCliente(ID: Integer; Nome, CpfCnpj, TipoPessoa, Telefone, Email: string; DataCadastro: TDateTime; Ativo: Boolean): string;
    function flExcluiCliente(ID: Integer): string;

    property ClienteDados : TClienteDados        read FClienteDados;
    property ClienteList  : TClienteList         read FClienteList;
    property Query        : TFDQuery             read FQuery        write FQuery;
    property ListaCliente : TList<TClienteDados> read FListaCliente write FListaCliente;

  end;

implementation


{ TController }


constructor TController.Create;
begin
  FConexaoBanco     := TClienteDAO.Create;
  FQuery            := TFDQuery.Create(Application);
  FQuery.Connection := FConexaoBanco.Conexao;
  FClienteFilter    := TClienteFilter.Create;
  FListaCliente     := TList<TClienteDados>.Create;
  FClienteList      := TClienteList.Create(FListaCliente);
  CarregaListaCliente;
end;

destructor TController.Destroy;
begin
  FreeAndNil(FListaCliente);
  FreeAndNil(FClienteList);
  FreeAndNil(FClienteFilter);
  FreeAndNil(FClienteDados);
  inherited Destroy;
end;

function TController.CarregaListaCliente: TList<TClienteDados>;
begin

  // Busca todos os clientes no banco e os insere na lista, depois retorna a lista para exibir no grid
  try
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
             FListaCliente.Add(FClienteDados);
             FQuery.Next;
           end;
    FQuery.Close;
  except
    on E: Exception do
       ShowMessage('Erro! ' + E.Message);
  end;

  Result := FListaCliente;
end;

function TController.CarregaClientePorID(ID: Integer): TClienteDados;
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

function TController.ConsultaCliente(TipoConsulta: Integer; Valor: Variant): TList<TClienteDados>;
begin

  // Consulta dos Clientes usando os 4 tipos de filtro
  case TipoConsulta of

       // Consulta por Nome
       0: begin
            try
              FQuery.Close;
              FQuery.SQL.Clear;
              FQuery.SQL.Add('select * from CLIENTE where NOME like :vNOME order by ID asc');
              FQuery.ParamByName('vNOME').AsString := '%' + Valor + '%';

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
                       FListaCliente.Add(FClienteDados);
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
              FQuery.ParamByName('vCPF_CNPJ').AsString := Valor;

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
                       FListaCliente.Add(FClienteDados);
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
              FQuery.SQL.Add('select * from CLIENTE where DATA_CADASTRO = :vDATA_CADASTRO order by ID asc');
              FQuery.ParamByName('vDATA_CADASTRO').AsDateTime := Valor;

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
                       FListaCliente.Add(FClienteDados);
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
              FQuery.ParamByName('vATIVO').AsBoolean := Valor;

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
                       FListaCliente.Add(FClienteDados);
                       FQuery.Next;
                     end;
                  FQuery.Close;
            except
              on E: Exception do
                 ShowMessage('Erro! ' + E.Message);
            end;
          end;
  end;

  Result := FListaCliente;
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

         // Insere o novo Cliente na lista
         try
           FClienteDados := TClienteDados.Create(0,
                                                 Nome,
                                                 CpfCnpj,
                                                 TipoPessoa,
                                                 Telefone,
                                                 Email,
                                                 DataCadastro,
                                                 Ativo);
           FListaCliente.Add(FClienteDados);
         except
           on E: Exception do
              Result := Result + E.Message;
         end;

         // Faz a gravação do Cliente
         FQuery.Close;
         FQuery.SQL.Clear;
         FQuery.SQL.Add('insert into CLIENTE(NOME, CPF_CNPJ, TIPO_PESSOA, TELEFONE, EMAIL, DATA_CADASTRO, ATIVO) ');
         FQuery.SQL.Add('values (:vNOME, :vCPF_CNPJ, :vTIPO_PESSOA, :vTELEFONE, :vEMAIL, :vDATA_CADASTRO, :vATIVO)');

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
           FListaCliente.First;
           for i := 0 to FListaCliente.Count - 1 do
               begin
                 if   FListaCliente.Items[i].ID = ID then
                      begin
                        FListaCliente.Items[i].Nome         := Nome;
                        FListaCliente.Items[i].CpfCpnj      := CpfCnpj;
                        FListaCliente.Items[i].TipoPessoa   := TipoPessoa;
                        FListaCliente.Items[i].Telefone     := Telefone;
                        FListaCliente.Items[i].Email        := Email;
                        FListaCliente.Items[i].DataCadastro := DataCadastro;
                        FListaCliente.Items[i].Ativo        := Ativo;
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
    FListaCliente.First;
    for i := 0 to FListaCliente.Count - 1 do
        begin
          if   FListaCliente.Items[i].ID = ID then
               begin
                 FListaCliente.Delete(i);
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

end.
