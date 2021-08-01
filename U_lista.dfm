object Form1: TForm1
  Left = 138
  Top = 256
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'RECORDES'
  ClientHeight = 207
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 601
    Height = 201
    Caption = 'Os 5 Melhores'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 368
      Top = 160
      Width = 89
      Height = 25
      Cursor = crHandPoint
      Caption = 'Sair'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 176
      Top = 160
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Caption = 'Limpar a Lista'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Label2: TLabel
      Left = 15
      Top = 58
      Width = 15
      Height = 16
      Caption = '1'#176
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 77
      Width = 15
      Height = 16
      Caption = '2'#176
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 15
      Top = 96
      Width = 15
      Height = 16
      Caption = '3'#176
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 113
      Width = 15
      Height = 16
      Caption = '4'#176
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 14
      Top = 132
      Width = 15
      Height = 16
      Caption = '5'#176
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 40
      Top = 55
      Width = 257
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 40
      Top = 74
      Width = 257
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label9: TLabel
      Left = 40
      Top = 93
      Width = 257
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label10: TLabel
      Left = 40
      Top = 112
      Width = 257
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label11: TLabel
      Left = 40
      Top = 131
      Width = 257
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label12: TLabel
      Left = 308
      Top = 55
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label13: TLabel
      Left = 308
      Top = 74
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label14: TLabel
      Left = 308
      Top = 93
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label15: TLabel
      Left = 308
      Top = 112
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label16: TLabel
      Left = 308
      Top = 131
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 48
      Top = 37
      Width = 67
      Height = 16
      Caption = 'Jogadores'
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 303
      Top = 37
      Width = 45
      Height = 16
      Caption = 'Passos'
      Color = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 431
      Top = 37
      Width = 50
      Height = 16
      Caption = 'Tempo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      AlignWithMargins = True
      Left = 390
      Top = 56
      Width = 120
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label29: TLabel
      AlignWithMargins = True
      Left = 390
      Top = 75
      Width = 120
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label30: TLabel
      AlignWithMargins = True
      Left = 390
      Top = 93
      Width = 120
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label34: TLabel
      AlignWithMargins = True
      Left = 390
      Top = 112
      Width = 120
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label35: TLabel
      AlignWithMargins = True
      Left = 390
      Top = 131
      Width = 120
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 527
      Top = 35
      Width = 34
      Height = 16
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 513
      Top = 97
      Width = 82
      Height = 13
      Caption = 'Label20'
    end
    object Label21: TLabel
      Left = 513
      Top = 116
      Width = 46
      Height = 13
      Caption = 'Label21'
    end
    object Label22: TLabel
      Left = 513
      Top = 78
      Width = 82
      Height = 13
      Caption = 'Label22'
    end
    object Label23: TLabel
      Left = 513
      Top = 57
      Width = 82
      Height = 13
      Caption = 'Label23'
    end
    object Label24: TLabel
      Left = 513
      Top = 135
      Width = 82
      Height = 13
      Caption = 'Label24'
    end
  end
  object XPManifest1: TXPManifest
    Left = 216
    Top = 24
  end
end
