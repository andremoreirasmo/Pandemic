object FrmRelatorio: TFrmRelatorio
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'FrmRelatorio'
  ClientHeight = 456
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PnlPrograma: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 456
    Margins.Left = 1
    Margins.Top = 4
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -6
    object Titulo: TLabel
      Left = 217
      Top = 32
      Width = 122
      Height = 19
      Caption = 'Casos de Covid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7366145
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblSelectPais: TLabel
      Left = 120
      Top = 104
      Width = 162
      Height = 24
      Caption = 'Selecione o Pa'#237's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7366145
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblSelectConsulta: TLabel
      Left = 120
      Top = 211
      Width = 187
      Height = 24
      Caption = 'Fazer consulta por'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7366145
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 136
      Top = 144
      Width = 313
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7366144
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Selecione'
    end
    object Panel1: TPanel
      Left = 120
      Top = 249
      Width = 273
      Height = 72
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7366144
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object LblCidade: TLabel
        Left = 38
        Top = 9
        Width = 43
        Height = 16
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7366144
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LblRegiao: TLabel
        Left = 118
        Top = 9
        Width = 44
        Height = 16
        Caption = 'Regi'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7366144
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RdCidade: TRadioButton
        Left = 17
        Top = 4
        Width = 15
        Height = 25
        TabOrder = 0
      end
      object RdRegiao: TRadioButton
        Left = 97
        Top = 4
        Width = 15
        Height = 25
        TabOrder = 1
      end
    end
    object ComboBox2: TComboBox
      Left = 136
      Top = 295
      Width = 313
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7366144
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'Selecione'
    end
    object PnlBotao: TPanel
      Left = 192
      Top = 357
      Width = 185
      Height = 41
      BevelOuter = bvNone
      Color = 7366144
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7366144
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      object SpeedButton1: TSpeedButton
        Left = 0
        Top = 0
        Width = 185
        Height = 41
        Align = alClient
        Caption = 'Emitir relat'#243'rio'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 1
      end
    end
  end
end
