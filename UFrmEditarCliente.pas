unit UFrmEditarCliente;

interface

uses Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.Controls, Vcl.Forms, System.Classes;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbNome: TLabel;
    edNome: TEdit;
    lbCpfCnpj: TLabel;
    edCpfCnpj: TEdit;
    lbTelefone: TLabel;
    meTelefone: TMaskEdit;
    lbEmail: TLabel;
    edEmail: TEdit;
    lbDataCadastro: TLabel;
    dtDataCadastro: TDateTimePicker;
    cbAtivo: TCheckBox;
    rgTipoDePessoa: TRadioGroup;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    procedure btnSairClick(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
