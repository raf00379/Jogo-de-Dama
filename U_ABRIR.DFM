object Form2: TForm2
  Left = 146
  Top = 171
  Width = 544
  Height = 375
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 64
    Top = 64
    Width = 105
    Height = 81
    Stretch = True
  end
  object Bevel1: TBevel
    Left = 16
    Top = 24
    Width = 225
    Height = 185
  end
  object ScrollBar1: TScrollBar
    Left = 64
    Top = 152
    Width = 100
    Height = 15
    Max = 6
    PageSize = 0
    TabOrder = 0
    OnChange = ScrollBar1Change
  end
end
