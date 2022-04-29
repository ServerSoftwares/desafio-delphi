{
  Classe DAO para acesso aos dados do cliente no banco de dados
}

unit UClienteDao;

interface

uses

  SysUtils, Forms, Vcl.Dialogs, FireDAC.Phys.PG, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.DApt, Classes;

type
  TClienteDAO = class

  private
    FConexao : TFDConnection;

  public
    constructor Create;
    destructor  Destroy; override;
    function    GetConexao: TFDConnection;

    property Conexao : TFDConnection read FConexao;

  end;

implementation

{ TClienteDAO }

constructor TClienteDAO.Create;
begin
  try

    // Configuração e conexão do banco PostgreSQL
    FConexao := TFDConnection.Create(Application);
    FConexao.ConnectionName := 'Postgres';
    FConexao.DriverName     := 'PG';
    FConexao.LoginPrompt    := false;

    FConexao.Connected := false;
    FConexao.Params.Values['HostName']  := 'localhost';
    FConexao.Params.Values['Database']  := 'postgres';
    FConexao.Params.Values['User_Name'] := 'postgres';
    FConexao.Params.Values['Password']  := 'postgres';
    FConexao.Connected := true;

    FConexao.Open;
  except
    on E: Exception do
       ShowMessage('Erro ao conectar! ' + E.Message);
  end;
end;

destructor TClienteDAO.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

function TClienteDAO.GetConexao: TFDConnection;
begin
  Result := FConexao;
end;

end.
