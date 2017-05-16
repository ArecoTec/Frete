object FreteView: TFreteView
  Left = 0
  Top = 0
  Caption = 'Controle de Fretes'
  ClientHeight = 198
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblPesoCarg: TLabel
    Left = 120
    Top = 51
    Width = 55
    Height = 13
    Caption = 'Peso Carga'
  end
  object lblValorFrete: TLabel
    Left = 120
    Top = 80
    Width = 53
    Height = 13
    Caption = 'Valor Frete'
  end
  object btnCalcularFrete: TButton
    Left = 324
    Top = 165
    Width = 75
    Height = 25
    Caption = 'Calcular Frete'
    TabOrder = 0
    OnClick = btnCalcularFreteClick
  end
  object edtPesoCarga: TEdit
    Left = 192
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtPesoCarga'
  end
  object edtValorFrete: TEdit
    Left = 192
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edtValorFrete'
  end
end
