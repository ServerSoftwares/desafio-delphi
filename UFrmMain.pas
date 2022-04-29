unit UFrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, UClienteDAO, UClienteDados, UController, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Generics.Collections, dxLayoutContainer,
  cxGridCustomLayoutView, cxGridLayoutView, cxContainer, cxColorComboBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, Vcl.Mask;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label9: TLabel;
    Image1: TImage;
    BitBtn2: TBitBtn;
    pnPrincipal: TPanel;
    pnBotoes: TPanel;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnNovo: TBitBtn;
    btnLimpar: TBitBtn;
    pnGrid: TPanel;
    pnCampos: TPanel;
    lbCodigo: TLabel;
    lbNome: TLabel;
    lbCpfCnpj: TLabel;
    lbTelefone: TLabel;
    edNome: TEdit;
    edCpfCnpj: TEdit;
    edCodigo: TEdit;
    btnCarregaCliente: TBitBtn;
    pnTop: TPanel;
    lbTopForm: TLabel;
    grdClientes: TcxGrid;
    grdClientesTableView: TcxGridTableView;
    grdClientesTableViewColumn1: TcxGridColumn;
    grdClientesTableViewColumn2: TcxGridColumn;
    grdClientesTableViewColumn3: TcxGridColumn;
    grdClientesTableViewColumn4: TcxGridColumn;
    grdClientesTableViewColumn5: TcxGridColumn;
    grdClientesTableViewColumn6: TcxGridColumn;
    grdClientesTableViewColumn7: TcxGridColumn;
    grdClientesTableViewColumn8: TcxGridColumn;
    grdClientesLevel: TcxGridLevel;
    rgTipoDePessoa: TRadioGroup;
    edEmail: TEdit;
    lbEmail: TLabel;
    dtDataCadastro: TDateTimePicker;
    lbDataCadastro: TLabel;
    cbAtivo: TCheckBox;
    meTelefone: TMaskEdit;
    rgFiltroConsulta: TRadioGroup;
    lbConsultaCliente: TLabel;
    edConsultaNomeCpf: TEdit;
    btnConsultaCliente: TBitBtn;
    btnLimpaConsulta: TBitBtn;
    dtConsultaData: TDateTimePicker;
    cbConsultaAtivo: TCheckBox;

    // Métodos de eventos do form
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure btnCarregaClienteClick(Sender: TObject);
    procedure btnConsultaClienteClick(Sender: TObject);
    procedure rgFiltroConsultaClick(Sender: TObject);

    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

    // Métodos de controle do form
    procedure plLimpaTela;
    procedure plHabilitaComponentes(Habilita: Boolean);
    procedure btnLimpaConsultaClick(Sender: TObject);

  public
  end;

var
  Form1: TForm1;
  FController: TController;

implementation

{$R *.dfm}


{ TForm1 }


procedure TForm1.FormCreate(Sender: TObject);
begin
  // Cria o Controller
  FController := TController.Create;

  // Define a lista de clientes como DataSource do grid
  grdClientesTableView.DataController.CustomDataSource := FController.ClienteList;
  FController.ClienteList.DataChanged;

  plLimpaTela;
  plHabilitaComponentes(False);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FController);
end;

procedure TForm1.btnCarregaClienteClick(Sender: TObject);
begin

  // Carrega cliente buscando por ID
  try
    FController.CarregaClientePorID(StrToInt(edCodigo.Text));

    if  not(FController.ClienteDados.ID = 0) then
        begin
          plHabilitaComponentes(True);
          edNome.Text              := FController.ClienteDados.Nome;
          edCpfCnpj.Text           := FController.ClienteDados.CpfCpnj;
          if (FController.ClienteDados.TipoPessoa = 'Física') then rgTipoDePessoa.ItemIndex := 0 else rgTipoDePessoa.ItemIndex := 1;
          meTelefone.Text          := FController.ClienteDados.Telefone;
          edEmail.Text             := FController.ClienteDados.Email;
          dtDataCadastro.DateTime  := FController.ClienteDados.DataCadastro;
          cbAtivo.Checked          := FController.ClienteDados.Ativo;
        end;
  except
    on E: Exception do
       begin
         plLimpaTela;
         plHabilitaComponentes(False);
         edCodigo.SetFocus;
         Application.MessageBox(PChar(E.Message), 'Houve um erro ao carregar o Cliente', MB_OK + MB_ICONWARNING)
       end;
  end;
end;

procedure TForm1.btnConsultaClienteClick(Sender: TObject);
begin

  // Executa a consulta com base no filtro selecionado
  case rgFiltroConsulta.ItemIndex of

       // Nome e CPF/CNPJ
       0, 1: FController.ConsultaCliente(rgFiltroConsulta.ItemIndex, edConsultaNomeCpf.Text);

       // Data de cadastro
       2: FController.ConsultaCliente(rgFiltroConsulta.ItemIndex, dtConsultaData.DateTime);

       // Ativo
       3: FController.ConsultaCliente(rgFiltroConsulta.ItemIndex, cbConsultaAtivo.Checked);
  end;
end;

procedure TForm1.rgFiltroConsultaClick(Sender: TObject);
begin

  // Exibe ou oculta os campos de Consulta
  case rgFiltroConsulta.ItemIndex of

       0, 1: begin
               edConsultaNomeCpf.Visible := True;
               edConsultaNomeCpf.Text    := EmptyStr;
               dtConsultaData.Visible    := False;
               dtConsultaData.DateTime   := Now;
               cbConsultaAtivo.Visible   := False;
               cbConsultaAtivo.Checked   := False;
             end;

          2: begin
               edConsultaNomeCpf.Visible := False;
               edConsultaNomeCpf.Text    := EmptyStr;
               dtConsultaData.Visible    := True;
               dtConsultaData.DateTime   := Now;
               cbConsultaAtivo.Visible   := False;
               cbConsultaAtivo.Checked   := False;
             end;

          3: begin
               edConsultaNomeCpf.Visible := False;
               edConsultaNomeCpf.Text    := EmptyStr;
               dtConsultaData.Visible    := False;
               dtConsultaData.DateTime   := Now;
               cbConsultaAtivo.Visible   := True;
               cbConsultaAtivo.Checked   := False;
             end;
  end;
end;

procedure TForm1.btnNovoClick(Sender: TObject);
begin
  plLimpaTela;
  plHabilitaComponentes(True);
  btnExcluir.Enabled := False;
  edCodigo.Text      := '0';
end;

procedure TForm1.btnGravarClick(Sender: TObject);
var
  loMsgErro : string;
begin

  // Insere ou Edita o cliente
  if  (edCodigo.Text = '0') then
       begin
         loMsgErro := FController.flGravaCliente(edNome.Text, edCpfCnpj.Text, rgTipoDePessoa.Items[rgTipoDePessoa.ItemIndex], meTelefone.Text,
                                                edEmail.Text, dtDataCadastro.DateTime, cbAtivo.Checked);
       end
  else
       begin
         loMsgErro := FController.flEditaCliente(StrToInt(edCodigo.Text), edNome.Text, edCpfCnpj.Text, rgTipoDePessoa.Items[rgTipoDePessoa.ItemIndex],
                                                meTelefone.Text, edEmail.Text, dtDataCadastro.DateTime, cbAtivo.Checked)
       end;

  // Verifica se houve algum erro durante a gravação
  if  (loMsgErro) = EmptyStr then
       begin
         Application.MessageBox(PChar('Cliente gravado com sucesso!'), 'Gravacão concluída', MB_OK + MB_ICONINFORMATION);
         plLimpaTela;
         plHabilitaComponentes(False);
       end
  else Application.MessageBox(PChar('Houve um erro durante a gravação do Cliente: ' + loMsgErro), 'Gravação não concluída', MB_OK + MB_ICONERROR);
end;

procedure TForm1.btnExcluirClick(Sender: TObject);
var
  loMsgErro : string;
begin
  loMsgErro := FController.flExcluiCliente(StrToInt(edCodigo.Text));

  // Verifica se houve algum erro durante a exclusão
  if  (loMsgErro) = EmptyStr then
       begin
         Application.MessageBox('Cliente excluído com sucesso!', 'Exclusão concluída', MB_OK + MB_ICONINFORMATION);
         plLimpaTela;
         plHabilitaComponentes(False);
       end
  else Application.MessageBox(PChar('Houve um erro durante a exclusão do Cliente: ' + loMsgErro), 'Exclusão não concluída', MB_OK + MB_ICONERROR);
end;

procedure TForm1.btnLimpaConsultaClick(Sender: TObject);
begin
  //a
end;

procedure TForm1.btnLimparClick(Sender: TObject);
begin
  plLimpaTela;
  plHabilitaComponentes(false);
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.plLimpaTela;
begin
  edCodigo.Text            := '0';
  edNome.Text              := EmptyStr;
  edCpfCnpj.Text           := EmptyStr;
  meTelefone.Text          := EmptyStr;
  edEmail.Text             := EmptyStr;
  dtDataCadastro.DateTime  := Now;
  rgTipoDePessoa.ItemIndex := 0;
  cbAtivo.Checked          := False;
  edConsultaNomeCpf.Text   := EmptyStr;
  dtConsultaData.DateTime  := Now;
  cbConsultaAtivo.Checked  := False;
end;

procedure TForm1.plHabilitaComponentes(Habilita: Boolean);
begin
  edCodigo.Enabled           := not Habilita;
  lbCodigo.Enabled           := not Habilita;
  btnCarregaCliente.Enabled  := not Habilita;
  lbNome.Enabled             := Habilita;
  edNome.Enabled             := Habilita;
  lbCpfCnpj.Enabled          := Habilita;
  edCpfCnpj.Enabled          := Habilita;
  lbTelefone.Enabled         := Habilita;
  meTelefone.Enabled         := Habilita;
  lbEmail.Enabled            := Habilita;
  edEmail.Enabled            := Habilita;
  lbDataCadastro.Enabled     := Habilita;
  dtDataCadastro.Enabled     := Habilita;
  rgTipoDePessoa.Enabled     := Habilita;
  cbAtivo.Enabled            := Habilita;
  btnGravar.Enabled          := Habilita;
  btnExcluir.Enabled         := Habilita;
end;

end.
