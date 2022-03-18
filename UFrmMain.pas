unit UFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, UClienteDAO, UClienteDados;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label9: TLabel;
    Image1: TImage;
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
