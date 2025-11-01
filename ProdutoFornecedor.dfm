object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto e Fornecedor'
  ClientHeight = 353
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object grpProduto: TGroupBox
    Left = 8
    Top = 24
    Width = 460
    Height = 100
    Caption = 'Produto'
    TabOrder = 0
    object lblDescricao: TLabel
      Left = 20
      Top = 32
      Width = 54
      Height = 15
      Caption = 'Descri'#231#227'o:'
    end
    object lblPreco: TLabel
      Left = 20
      Top = 61
      Width = 33
      Height = 15
      Caption = 'Pre'#231'o:'
    end
    object edtDescricao: TEdit
      Left = 88
      Top = 29
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object edtPreco: TEdit
      Left = 88
      Top = 58
      Width = 121
      Height = 23
      TabOrder = 1
    end
  end
  object grpFornecedor: TGroupBox
    Left = 8
    Top = 144
    Width = 460
    Height = 150
    Caption = 'Fornecedor'
    TabOrder = 1
    object lblNome: TLabel
      Left = 20
      Top = 24
      Width = 36
      Height = 15
      Caption = 'Nome:'
    end
    object lblCNPJ: TLabel
      Left = 26
      Top = 64
      Width = 30
      Height = 15
      Caption = 'CNPJ:'
    end
    object lblEmail: TLabel
      Left = 24
      Top = 112
      Width = 32
      Height = 15
      Caption = 'Email:'
    end
    object edtNomeFornecedor: TEdit
      Left = 62
      Top = 24
      Width = 121
      Height = 23
      TabOrder = 0
    end
    object edtCNPJ: TEdit
      Left = 62
      Top = 64
      Width = 121
      Height = 23
      TabOrder = 1
    end
    object edtEmail: TEdit
      Left = 62
      Top = 116
      Width = 121
      Height = 23
      TabOrder = 2
    end
  end
  object btnArmazenar: TButton
    Left = 8
    Top = 312
    Width = 113
    Height = 25
    Caption = 'Armazenar Dados'
    TabOrder = 2
    OnClick = btnArmazenarClick
  end
  object btnExibir: TButton
    Left = 344
    Top = 312
    Width = 124
    Height = 25
    Caption = 'Exibir Dados'
    TabOrder = 3
    OnClick = btnExibirClick
  end
end
