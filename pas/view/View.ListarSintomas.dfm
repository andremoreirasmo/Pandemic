inherited FrmListarSintomas: TFrmListarSintomas
  Caption = 'FrmListarSintomas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlHeader: TPanel
    inherited PnlNomePrograma: TPanel
      Width = 720
      ExplicitWidth = 720
      inherited LblNomePrograma: TLabel
        Width = 720
        Caption = 'Sintomas'
        ExplicitWidth = 65
      end
    end
    inherited PnlIconesMenu: TPanel
      Left = 720
      Width = 32
      ExplicitLeft = 720
      ExplicitWidth = 32
      inherited PnlFechar: TPanel
        Left = 3
        ExplicitLeft = 3
      end
    end
  end
  inherited PnlBottom: TPanel
    inherited PnlBotoes: TPanel
      inherited PnlBotao: TPanel
        inherited BtnOk: TSpeedButton
          Caption = 'SELECIONAR'
          OnClick = BtnOkClick
        end
      end
    end
  end
  inherited DBGridDados: TDBGrid
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_sym'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'des_sym'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 653
        Visible = True
      end>
  end
  inherited FDQDados: TFDQuery
    SQL.Strings = (
      'select ID_SYM,DES_SYM from SYMPTOMS')
  end
end
