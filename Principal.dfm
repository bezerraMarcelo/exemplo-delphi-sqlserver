object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Testar conex'#227'o com o SQL Server'
  ClientHeight = 237
  ClientWidth = 240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 62
    Width = 77
    Height = 13
    Caption = 'Bando de dados'
  end
  object Label2: TLabel
    Left = 30
    Top = 106
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Label3: TLabel
    Left = 30
    Top = 152
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Label4: TLabel
    Left = 30
    Top = 21
    Width = 40
    Height = 13
    Caption = 'Servidor'
  end
  object edtBancoDeDados: TEdit
    Left = 30
    Top = 80
    Width = 177
    Height = 21
    TabOrder = 1
    Text = 'teste'
  end
  object edtUsuario: TEdit
    Left = 30
    Top = 125
    Width = 177
    Height = 21
    TabOrder = 2
    Text = 'sa'
  end
  object edtSenha: TEdit
    Left = 30
    Top = 168
    Width = 177
    Height = 21
    PasswordChar = '*'
    TabOrder = 3
  end
  object btnTestar: TButton
    Left = 114
    Top = 200
    Width = 93
    Height = 25
    Caption = 'Testar conex'#227'o'
    TabOrder = 4
    OnClick = btnTestarClick
  end
  object edtServidor: TEdit
    Left = 30
    Top = 35
    Width = 177
    Height = 21
    TabOrder = 0
    Text = 'localhost'
  end
  object conexao: TADOConnection
    LoginPrompt = False
    Left = 32
    Top = 176
  end
end
