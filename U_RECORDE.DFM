object Form4: TForm4
  Left = 173
  Top = 178
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'RECORDE'
  ClientHeight = 201
  ClientWidth = 441
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 441
    Height = 201
    Caption = 'Os 5 Melhores'
    Color = clGray
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 248
      Top = 160
      Width = 89
      Height = 25
      Caption = 'Sair'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 136
      Top = 160
      Width = 97
      Height = 25
      Caption = 'Limpar  a Lista'
      Flat = True
      OnClick = SpeedButton2Click
    end
    object Label2: TLabel
      Left = 61
      Top = 56
      Width = 15
      Height = 16
      Caption = '1�'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 61
      Top = 75
      Width = 15
      Height = 16
      Caption = '2�'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 60
      Top = 96
      Width = 15
      Height = 16
      Caption = '3�'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 59
      Top = 113
      Width = 15
      Height = 16
      Caption = '4�'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 59
      Top = 132
      Width = 15
      Height = 16
      Caption = '5�'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 80
      Top = 55
      Width = 297
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 80
      Top = 74
      Width = 297
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 80
      Top = 93
      Width = 297
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 80
      Top = 112
      Width = 297
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 80
      Top = 131
      Width = 297
      Height = 17
      AutoSize = False
      Color = clBtnHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 379
      Top = 55
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 379
      Top = 74
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 379
      Top = 93
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 379
      Top = 112
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 379
      Top = 131
      Width = 35
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 176
      Top = 37
      Width = 75
      Height = 16
      Caption = 'Jogadores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 374
      Top = 39
      Width = 41
      Height = 14
      Caption = 'Passos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
