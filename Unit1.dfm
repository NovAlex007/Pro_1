object Form1: TForm1
  Left = 245
  Top = 132
  Width = 521
  Height = 449
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 112
    Width = 130
    Height = 20
    Caption = #1054#1041#1066#1045#1052' '#1060#1040#1049#1051#1040': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 112
    Width = 48
    Height = 20
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 216
    Top = 112
    Width = 38
    Height = 20
    Caption = #1041#1072#1081#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 16
    Top = 64
    Width = 201
    Height = 25
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 32
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 16
    Top = 144
    Width = 81
    Height = 25
    Caption = 'CRC'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo3: TMemo
    Left = 112
    Top = 144
    Width = 233
    Height = 25
    Lines.Strings = (
      'Memo3')
    TabOrder = 3
  end
  object Button2: TButton
    Left = 400
    Top = 8
    Width = 97
    Height = 33
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1087#1086#1083#1103
    TabOrder = 4
    OnClick = Button2Click
  end
  object OpenDialog1: TOpenDialog
    Filter = #1060#1072#1081#1083'|*.txt'
    Left = 65528
    Top = 32
  end
  object MainMenu1: TMainMenu
    object N1: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1058#1077#1089#1090#1086#1074#1099#1081' '#1060#1072#1081#1083
      OnClick = N1Click
    end
    object Stream1: TMenuItem
      Caption = #1063#1090#1077#1085#1080#1077' '#1092#1072#1081#1083#1072' Stream'
      OnClick = Stream1Click
    end
  end
end
