program DesafioDelphi;

uses
  Vcl.Forms,
  UFrmMain in 'UFrmMain.pas' {Form1},
  UClienteDados in 'UClienteDados.pas',
  UClienteDao in 'UClienteDao.pas',
  UController in 'UController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.






