object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Desafio Delphi'
  ClientHeight = 811
  ClientWidth = 1194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 792
    Width = 1194
    Height = 19
    Panels = <
      item
        Width = 300
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1194
    Height = 68
    Align = alTop
    Color = 16280064
    ParentBackground = False
    TabOrder = 1
    object Label9: TLabel
      Left = 1
      Top = 1
      Width = 488
      Height = 66
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = 'Desafio Delphi - Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object Image1: TImage
      Left = 868
      Top = 1
      Width = 325
      Height = 66
      Align = alRight
      Center = True
      Proportional = True
    end
  end
  object BitBtn2: TBitBtn
    Left = 609
    Top = 439
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 2
  end
  object pnPrincipal: TPanel
    Left = 0
    Top = 68
    Width = 1194
    Height = 743
    Color = clSilver
    ParentBackground = False
    TabOrder = 3
    object pnBotoes: TPanel
      Left = 0
      Top = 694
      Width = 1193
      Height = 49
      Color = clSilver
      ParentBackground = False
      TabOrder = 2
      object btnSair: TBitBtn
        Left = 1080
        Top = 7
        Width = 105
        Height = 34
        Hint = 'Fecha o cadastro de Clientes'
        Caption = '&Sair'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000590000005900000000000000000000000000FF0000FF
          0000FF0000000000000000000000F7B26421F6B66376F6B564CBF7B564F0F5B4
          654E000000000000000000000000000000000000000000000000000000000000
          000000000000F5B7644AF6B564CBF6B564FFF6B564FFF6B564FFF6B564FFF6B6
          63A7000000000000000000000000000000000000000000000000000000000000
          000000000000F6B564EDF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFEF39621FFF39621FCF39721C1F49B21170000000000000000000000000000
          000000000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39621FFF39621FFF39621FFF296218D0000000000000000000000000000
          000000000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39621FFF39621FFF39621FFF39621AA0000000000000000000000000000
          000000000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39621FFF39621FFF39621FFF39621AA0000000000000000000000000000
          000000000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39621FFF39621FFF39621FFF39621AA000000008A7D60DD8B7D60700000
          000000000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39621FCF3962192F3972058F2981F39000000008B7D60FF8B7D60FF8A7D
          607800000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF3962192926D6D078B7E614F8A7E60558A7E60558B7D60FF8B7D60FF8B7D
          60FF8B7D6070F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF2952163897B62348B7D60F98B7D60FF8B7D60FF8B7D60FF8B7D60FF8B7D
          60FF8C7D60DFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39622BEFF9224070000000000000000000000008B7D60FF8B7D60FF8B7D
          60EE897B6234F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39621FFF49621DFF39620ADF4962272000000008B7D60FF8B7D60EE897B
          623400000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5AB
          4EFFF39621FFF39621FFF39621FFF39621AA000000008B7E608A8B805E2E0000
          000000000000F6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF6B564FFF5A9
          49FFF39621FFF39621FFF39621FFF39621AA0000000000000000000000000000
          000000000000F6B564FCF6B564FFF6B564FFF6B564FFF6B462FFF5AB4EFFF39A
          28FFF39621FFF39621FFF39621FFF296218D0000000000000000000000000000
          000000000000F7B561A1F7B460FEF5AB4FFFF4A138FFF49724FFF39621FFF396
          21FFF39621FFF39621FCF39621C2F49520180000000000000000000000000000
          000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btnSairClick
      end
      object btnExcluir: TBitBtn
        Left = 858
        Top = 7
        Width = 105
        Height = 34
        Hint = 'Exclui o Cliente carregado'
        Caption = '&Excluir'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          200003000000000400006F0000006F00000000000000000000000000FF0000FF
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF001B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1B
          E3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1B
          E3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1B
          E3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1BE3E01B1B
          E3E01B1BE3E0FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = btnExcluirClick
      end
      object btnGravar: TBitBtn
        Left = 747
        Top = 6
        Width = 105
        Height = 34
        Hint = 'Grava o Cliente'
        Caption = '&Gravar'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          200003000000000400007D0000007D00000000000000000000000000FF0000FF
          0000FF0000005D4A32E65E4C32FF5E4C32FF8B7D6AFF8B7D6AFF8B7D6AFF8B7D
          6AFF8B7D6AFF8B7D6AFF8B7D6AFF8B7D6AFF8B7D6AFF897D68FF5E4C32FF5E4C
          32FF5D4A32E4685439FF665238FF6A553AFFF2EFEAFFF0EDE9FFF0EDE9FFF0ED
          E9FFF0EDE9FFF0EDE9FFF0EDE9FFF0EDE9FFF0EDE9FFF0ECE7FF6A553AFF6A55
          3AFF695539FF655136FF5A482FFF6A553AFFF3F0EBFFF2F0EBFFF2F0EBFFF2F0
          EBFFF2F0EBFFF2F0EBFFF2F0EBFFF2F0EBFFF2F0EBFFF1EDE8FF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A5539FF6A553AFFF1EFEAFFF0EDE7FFF0EDE7FFF0ED
          E7FFF0EDE7FFF0EDE7FFF0EDE7FFF0EDE7FFF0EDE7FFF0ECE7FF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFFF1EFEAFFF0EDE7FFF0EDE7FFF0ED
          E7FFF0EDE7FFF0EDE7FFF0EDE7FFF0EDE7FFF0EDE7FFF0ECE7FF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFFC5C0C4FFC5C1C5FFC5C1C5FFC5C1
          C5FFC5C1C5FFC5C1C5FFC5C1C5FFC5C1C5FFC5C1C5FFC3BEC3FF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF5363E2FF5363E5FF5363E5FF5363
          E5FF5363E5FF5363E5FF5363E5FF5363E5FF5363E5FF5363E5FF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF655963FF645868FF645868FF6458
          68FF645868FF645868FF645868FF645868FF645868FF645864FF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF7D6B54FF887761FF887761FF8877
          61FFE0DAD2FFECE8E1FFECE8E1FFECE8E1FFECE8E1FFE7E3DCFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF806E58FF8A7964FF8A7964FF8A79
          64FFEBE6E1FFF3F0EBFFF3F0EBFFBDB4A6FFA59887FFF3F0EBFF6A553AFF6A55
          3AFF6A553AFF6A553AFF6A553AFF6A553AFF806E58FF8A7964FF8A7964FF8A79
          64FFEBE6E1FFF3F0EBFFF3F0EBFFB9ADA0FF9D8E7CFFF3F0EBFF6A553AFF6A55
          3AFF6A543AFC6A553AFF6A553AFF6A553AFF806E58FF8A7964FF8A7964FF8A79
          64FFEBE6E1FFF3F0EBFFF3F0EBFFB9ADA0FF9D8E7CFFF3F0EBFF6A553AFF6A55
          39FE6A553A6069543AE66A553AFF6A553AFF806E58FF8A7964FF8A7964FF8A79
          64FFEBE6E1FFF3F0EBFFF3F0EBFFE5E0D9FFDFD9D1FFF3F0EBFF6A553AF66853
          385600000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnGravarClick
      end
      object btnNovo: TBitBtn
        Left = 636
        Top = 6
        Width = 105
        Height = 34
        Hint = 'Cadastra um novo Cliente'
        Caption = '&Novo'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000610000006100000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000004FB0
          4B3A50AF4CF250AF4CF152AD4D38000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000050AF
          4B7350AF4CFF50AF4CFF50AF4B73000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          00000000000051AE4C394FB04B774FB04B774FB04B774FB04B774FB04B774FB0
          4CB550AF4CFF50AF4CFF4FB04CB54FB04B774FB04B774FB04B774FB04B774FB0
          4B7752AD4D3850AF4CF250AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
          4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
          4CFF50AF4CF150AF4CF350AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
          4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
          4CFF50AF4CF252AD4E3B4FB04B774FB04B774FB04B774FB04B774FB04B774FB0
          4CB550AF4CFF50AF4CFF4FB04CB54FB04B774FB04B774FB04B774FB04B774FB0
          4B774FB04B3A0000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004FB0
          4D7450AF4CFF50AF4CFF4FB04D74000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000050AF
          4B7350AF4CFF50AF4CFF50AF4B73000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000052AD
          4E3B50AF4CF350AF4CF251AE4C39000000000000000000000000000000000000
          000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnNovoClick
      end
      object btnLimpar: TBitBtn
        Left = 969
        Top = 7
        Width = 105
        Height = 34
        Hint = 'Limpa os campos do cadastro'
        Caption = '&Limpar'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          200003000000000400006F0000006F00000000000000000000000000FF0000FF
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080E6FF0A76CBEAB66DC2
          E715FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007FD9FA8D79D1F2FF72C5
          E165FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0080E6FF0A7EDAFB7B7FD9FA9B7AD2F2FF75C8
          E6E868A7CF20FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0080E6FF0A7DD8F8BD7DD8F9FF7ED9FAFF7ED8F9FF5F93
          C1FF5176A4EF4080BF04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0080E6FF0A7DD9FABD7DD8F9FF78CFEEFF7DD6F7FF6095C3FF4E6B
          A1FF629BC4FF72C1E031FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF007DD9F9B37ED9FAFF7BD4F5FF7BD3F3FF6095C3FF4E6BA1FF66A2
          CDFF7ED8F9FF74C6E38BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0079D7FF137ED9FA5F7ED8F8E65F92C0FF4E6BA1FF66A2CDFF7ED9
          FAFF7DD8F9FF6DA7D965FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF006FB3DD1E567FB1EF66A2CDFF7ED9FAFF7ED9
          FAFF79BBF3FF6457D5F85B61C22AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004080BF0480DBFA327FD8F98B76B8
          ED616B5DE5F76F5AEFFF575BB9E843649017FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006066CC285E63C8E64D6AA0FF486294D543649017FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00496D9E154E6BA2D24D6AA0FF486294D543649017FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6AA0FF486294D543649017FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6AA0FF486294D54364
          9017FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6AA0FF4862
          94D543649017FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6A
          A0FF496395BAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6A
          A1B64B659A95}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = btnLimparClick
      end
    end
    object pnGrid: TPanel
      Left = 0
      Top = 120
      Width = 1193
      Height = 574
      Color = clSilver
      ParentBackground = False
      TabOrder = 1
      object grdClientes: TcxGrid
        Left = 8
        Top = 7
        Width = 1177
        Height = 561
        TabOrder = 0
        object grdClientesTableView: TcxGridTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          FilterBox.Visible = fvNever
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          object grdClientesTableViewColumn1: TcxGridColumn
            Caption = 'ID'
            SortIndex = 0
            SortOrder = soDescending
            Width = 68
          end
          object grdClientesTableViewColumn2: TcxGridColumn
            Caption = 'Nome'
            Width = 58
          end
          object grdClientesTableViewColumn3: TcxGridColumn
            Caption = 'CPF/CNPJ'
            Width = 116
          end
          object grdClientesTableViewColumn4: TcxGridColumn
            Caption = 'Tipo de pessoa'
            Width = 126
          end
          object grdClientesTableViewColumn5: TcxGridColumn
            Caption = 'Telefone'
            Width = 129
          end
          object grdClientesTableViewColumn6: TcxGridColumn
            Caption = 'Email'
            Width = 54
          end
          object grdClientesTableViewColumn7: TcxGridColumn
            Caption = 'Data de cadastro'
            Width = 172
          end
          object grdClientesTableViewColumn8: TcxGridColumn
            Caption = 'Ativo'
            Width = 53
          end
        end
        object grdClientesLevel: TcxGridLevel
          GridView = grdClientesTableView
        end
      end
    end
    object pnCampos: TPanel
      Left = 1
      Top = 31
      Width = 1193
      Height = 90
      Color = clSilver
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      object lbCodigo: TLabel
        Left = 43
        Top = 11
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object lbNome: TLabel
        Left = 49
        Top = 38
        Width = 27
        Height = 13
        Caption = 'Nome'
        Enabled = False
      end
      object lbCpfCnpj: TLabel
        Left = 26
        Top = 63
        Width = 48
        Height = 13
        Caption = 'CPF/CNPJ'
        Enabled = False
      end
      object lbTelefone: TLabel
        Left = 272
        Top = 11
        Width = 42
        Height = 13
        Caption = 'Telefone'
        Enabled = False
      end
      object lbEmail: TLabel
        Left = 290
        Top = 38
        Width = 24
        Height = 13
        Caption = 'Email'
        Enabled = False
      end
      object lbDataCadastro: TLabel
        Left = 244
        Top = 65
        Width = 70
        Height = 13
        Caption = 'Data Cadastro'
        Enabled = False
      end
      object lbConsultaCliente: TLabel
        Left = 665
        Top = 16
        Width = 82
        Height = 13
        Alignment = taCenter
        Caption = 'Consultar Cliente'
      end
      object cbConsultaAtivo: TCheckBox
        Left = 665
        Top = 35
        Width = 134
        Height = 21
        Caption = 'Ativo'
        TabOrder = 14
        Visible = False
      end
      object dtConsultaData: TDateTimePicker
        Left = 665
        Top = 35
        Width = 134
        Height = 21
        Date = 44680.000000000000000000
        Format = 'dd/MM/yyyy HH:mm:ss'
        Time = 44680.000000000000000000
        Color = clInfoBk
        Kind = dtkTime
        TabOrder = 13
        Visible = False
      end
      object edNome: TEdit
        Left = 80
        Top = 35
        Width = 150
        Height = 21
        Color = clInfoBk
        TabOrder = 2
      end
      object edCpfCnpj: TEdit
        Left = 80
        Top = 62
        Width = 150
        Height = 21
        Color = clInfoBk
        TabOrder = 3
      end
      object edCodigo: TEdit
        Left = 80
        Top = 8
        Width = 124
        Height = 21
        Color = clInfoBk
        NumbersOnly = True
        TabOrder = 0
        Text = '0'
      end
      object btnCarregaCliente: TBitBtn
        Left = 206
        Top = 7
        Width = 24
        Height = 24
        Hint = 'Carrega o Cliente pelo ID informado.'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          200003000000000400006F0000006F00000000000000000000000000FF0000FF
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00328DFF5C318E
          FFE23A9EFF9DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00308EFF5F318EFFFD318E
          FFFF41A8FEEDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00318FFF5D318EFFFD318EFFFF40A7
          FEFE3D9FFF70FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF004A678E4F318EFFFC318EFFFF41A7FEFE3CA0
          FF73FFFFFF00FFFFFF00FFFFFF00FFFFFF005D48344A5E4A339564513CD16450
          3BCA5D4A348E5F49343BFFFFFF0067544088505D70BF41A7FFFD3DA0FF71FFFF
          FF00FFFFFF00FFFFFF005A4B2D11614B36AB806D5BFFBAAA98FFD2C2AFFFCFBF
          ACFFB6A694FF776452FE634E3BAA7D6C5BFD665340874B719A58FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00604B37B4A08F7DFFECDCC8FFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFE7D7C3FF938270FF624F3AABFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF005F483459847360FFEDDDCAFFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFE7D7C3FF776452FE5F49343BFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00614C37B1C8B8A6FFF8F0E6FFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFB6A694FF5D4A348EFFFFFF00FFFFFF00FFFF
          FF00FFFFFF0066523EE9E2D4C4FFFBF7F1FFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFCFBFACFF64503BCAFFFFFF00FFFFFF00FFFF
          FF00FFFFFF0066533FEFE7DBCBFFFAF5EDFFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFD2C2AFFF64513CD1FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00614D38BACCBDAAFFFDFAF7FFF2E3D0FFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFBAAA98FF5E4A3395FFFFFF00FFFFFF00FFFF
          FF00FFFFFF005F4933698E7D6AFFF6EDE1FFF5E8D9FFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFECDCC8FF806D5BFF5D48344AFFFFFF00FFFFFF00FFFF
          FF00FFFFFF0080800002614D38C7AD9D8BFFF3E5D5FFFDFAF7FFFAF3EBFFF2E3
          CFFFF2E2CEFFEDDDCAFFA08F7DFF614B36ABFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF006245311A614D38C78E7D6AFFCBBBA8FFE7DBCBFFDECF
          BCFFC6B6A3FF847360FF604B37B45A4B2D11FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00808000025F493369614D38BA66533FEF6652
          3EE9614C37B15F483459FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = btnCarregaClienteClick
      end
      object rgTipoDePessoa: TRadioGroup
        Left = 487
        Top = 8
        Width = 98
        Height = 48
        Caption = 'Tipo de pessoa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'F'#237'sica'
          'J'#250'ridica')
        ParentFont = False
        TabOrder = 7
      end
      object edEmail: TEdit
        Left = 318
        Top = 35
        Width = 150
        Height = 21
        Color = clInfoBk
        TabOrder = 5
      end
      object dtDataCadastro: TDateTimePicker
        Left = 318
        Top = 62
        Width = 150
        Height = 21
        Date = 44680.000000000000000000
        Format = 'dd/MM/yyyy HH:mm:ss'
        Time = 44680.000000000000000000
        Color = clInfoBk
        Kind = dtkTime
        TabOrder = 6
      end
      object cbAtivo: TCheckBox
        Left = 495
        Top = 64
        Width = 98
        Height = 17
        Caption = 'Ativo'
        TabOrder = 8
      end
      object meTelefone: TMaskEdit
        Left = 318
        Top = 8
        Width = 150
        Height = 21
        Color = clInfoBk
        EditMask = '!\(99\)00000-0000;1;_'
        MaxLength = 14
        TabOrder = 4
        Text = '(  )     -    '
      end
      object rgFiltroConsulta: TRadioGroup
        Left = 804
        Top = 8
        Width = 125
        Height = 75
        Caption = 'Filtro da consulta'
        ItemIndex = 0
        Items.Strings = (
          'Nome'
          'CPF/CNPJ'
          'Data de cadastro'
          'Ativo')
        TabOrder = 12
        OnClick = rgFiltroConsultaClick
      end
      object edConsultaNomeCpf: TEdit
        Left = 665
        Top = 35
        Width = 134
        Height = 21
        Color = clInfoBk
        TabOrder = 9
      end
      object btnConsultaCliente: TBitBtn
        Left = 751
        Top = 10
        Width = 24
        Height = 24
        Hint = 'Consulta os Clientes a partir do filtro informado.'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          200003000000000400006F0000006F00000000000000000000000000FF0000FF
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00328DFF5C318E
          FFE23A9EFF9DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00308EFF5F318EFFFD318E
          FFFF41A8FEEDFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00318FFF5D318EFFFD318EFFFF40A7
          FEFE3D9FFF70FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF004A678E4F318EFFFC318EFFFF41A7FEFE3CA0
          FF73FFFFFF00FFFFFF00FFFFFF00FFFFFF005D48344A5E4A339564513CD16450
          3BCA5D4A348E5F49343BFFFFFF0067544088505D70BF41A7FFFD3DA0FF71FFFF
          FF00FFFFFF00FFFFFF005A4B2D11614B36AB806D5BFFBAAA98FFD2C2AFFFCFBF
          ACFFB6A694FF776452FE634E3BAA7D6C5BFD665340874B719A58FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00604B37B4A08F7DFFECDCC8FFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFE7D7C3FF938270FF624F3AABFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF005F483459847360FFEDDDCAFFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFE7D7C3FF776452FE5F49343BFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00614C37B1C8B8A6FFF8F0E6FFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFB6A694FF5D4A348EFFFFFF00FFFFFF00FFFF
          FF00FFFFFF0066523EE9E2D4C4FFFBF7F1FFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFCFBFACFF64503BCAFFFFFF00FFFFFF00FFFF
          FF00FFFFFF0066533FEFE7DBCBFFFAF5EDFFF2E2CEFFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFD2C2AFFF64513CD1FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00614D38BACCBDAAFFFDFAF7FFF2E3D0FFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFF2E2CEFFBAAA98FF5E4A3395FFFFFF00FFFFFF00FFFF
          FF00FFFFFF005F4933698E7D6AFFF6EDE1FFF5E8D9FFF2E2CEFFF2E2CEFFF2E2
          CEFFF2E2CEFFF2E2CEFFECDCC8FF806D5BFF5D48344AFFFFFF00FFFFFF00FFFF
          FF00FFFFFF0080800002614D38C7AD9D8BFFF3E5D5FFFDFAF7FFFAF3EBFFF2E3
          CFFFF2E2CEFFEDDDCAFFA08F7DFF614B36ABFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF006245311A614D38C78E7D6AFFCBBBA8FFE7DBCBFFDECF
          BCFFC6B6A3FF847360FF604B37B45A4B2D11FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00808000025F493369614D38BA66533FEF6652
          3EE9614C37B15F483459FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnClick = btnConsultaClienteClick
      end
      object btnLimpaConsulta: TBitBtn
        Left = 775
        Top = 10
        Width = 24
        Height = 24
        Hint = 'Limpa a consulta.'
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          200003000000000400006F0000006F00000000000000000000000000FF0000FF
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080E6FF0A76CBEAB66DC2
          E715FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007FD9FA8D79D1F2FF72C5
          E165FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0080E6FF0A7EDAFB7B7FD9FA9B7AD2F2FF75C8
          E6E868A7CF20FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0080E6FF0A7DD8F8BD7DD8F9FF7ED9FAFF7ED8F9FF5F93
          C1FF5176A4EF4080BF04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0080E6FF0A7DD9FABD7DD8F9FF78CFEEFF7DD6F7FF6095C3FF4E6B
          A1FF629BC4FF72C1E031FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF007DD9F9B37ED9FAFF7BD4F5FF7BD3F3FF6095C3FF4E6BA1FF66A2
          CDFF7ED8F9FF74C6E38BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0079D7FF137ED9FA5F7ED8F8E65F92C0FF4E6BA1FF66A2CDFF7ED9
          FAFF7DD8F9FF6DA7D965FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF006FB3DD1E567FB1EF66A2CDFF7ED9FAFF7ED9
          FAFF79BBF3FF6457D5F85B61C22AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004080BF0480DBFA327FD8F98B76B8
          ED616B5DE5F76F5AEFFF575BB9E843649017FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF006066CC285E63C8E64D6AA0FF486294D543649017FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00496D9E154E6BA2D24D6AA0FF486294D543649017FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6AA0FF486294D543649017FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6AA0FF486294D54364
          9017FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6AA0FF4862
          94D543649017FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6BA2D24D6A
          A0FF496395BAFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00496D9E154E6A
          A1B64B659A95}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = btnLimpaConsultaClick
      end
    end
    object pnTop: TPanel
      Left = 0
      Top = 0
      Width = 1193
      Height = 33
      Color = clGray
      ParentBackground = False
      TabOrder = 3
      object lbTopForm: TLabel
        Left = 8
        Top = 6
        Width = 186
        Height = 19
        Caption = 'CADASTRO DE CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
