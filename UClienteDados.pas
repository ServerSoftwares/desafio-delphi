{
  Unit dos dados do cliente, coloque aqui todas as classes
}

unit UClienteDados;

interface

uses

  System.SysUtils, Classes, cxCustomData, Generics.Collections, UClienteDao;

type
  // Classe que representa um cliente
  TClienteDados = class

    private
      FID           : Integer;
      FNome         : String;
      FCpfCnpj      : String;
      FTipoPessoa   : String;
      FTelefone     : String;
      FEmail        : String;
      FDataCadastro : TDateTime;
      FAtivo        : Boolean;

    public
      constructor Create(ID: Integer; Nome: String; CpfCpnj: String; TipoPessoa: String; Telefone: String;
                         Email: String; DataCadastro: TDateTime; Ativo: Boolean);
      destructor  Destroy; override;

      property ID           : Integer   read FID           write FID;
      property Nome         : String    read FNome         write FNome;
      property CpfCpnj      : String    read FCpfCnpj      write FCpfCnpj;
      property TipoPessoa   : String    read FTipoPessoa   write FTipoPessoa;
      property Telefone     : String    read FTelefone     write FTelefone;
      property Email        : String    read FEmail        write FEmail;
      property DataCadastro : TDateTime read FDataCadastro write FDataCadastro;
      property Ativo        : Boolean   read FAtivo        write FAtivo;

  end;

  // Classe que representa uma lista/collection de clientes
  TClienteList = class(TcxCustomDataSource)

    private
      FListaCliente: TList<TClienteDados>;

    public
      constructor    Create(Lista: TList<TClienteDados>);
      destructor     Destroy; override;

      property ListaCliente : TList<TClienteDados> read FListaCliente write FListaCliente;

  end;

  // Dados para filtrar numa consulta
  TClienteFilter = class

  end;

implementation


{ TClienteDados }


constructor TClienteDados.Create(ID: Integer; Nome: String; CpfCpnj: String; TipoPessoa: String; Telefone: String;
                                 Email: String; DataCadastro: TDateTime; Ativo: Boolean);
begin
  Self.ID           := ID;
  Self.Nome         := Nome;
  Self.CpfCpnj      := CpfCpnj;
  Self.TipoPessoa   := TipoPessoa;
  Self.Telefone     := Telefone;
  Self.Email        := Email;
  Self.DataCadastro := DataCadastro;
  Self.Ativo        := Ativo;
end;

destructor TClienteDados.Destroy;
begin
  inherited Destroy;
end;


{ TClienteList }


constructor TClienteList.Create(Lista: TList<TClienteDados>);
begin
  inherited Create;
  FListaCliente := Lista;
end;

destructor TClienteList.Destroy;
begin
  inherited Destroy;
end;

end.
