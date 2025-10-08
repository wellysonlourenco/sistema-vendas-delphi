inherited ViewCidadesBuscar: TViewCidadesBuscar
  Caption = 'ViewCidadesBuscar'
  ClientHeight = 470
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitHeight = 508
  TextHeight = 15
  inherited pnTopo: TPanel
    inherited edtBuscar: TEdit
      Width = 638
      ExplicitWidth = 634
    end
  end
  inherited pnRodape: TPanel
    Top = 424
    Height = 46
    ExplicitTop = 424
    ExplicitWidth = 701
    ExplicitHeight = 46
    inherited rdGroupFiltros: TRadioGroup
      Height = 46
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'Codigo'
        'Nome'
        'UF')
    end
    inherited btnCadastrar: TBitBtn
      Top = 15
      Height = 26
      Margins.Top = 15
      Margins.Bottom = 5
      ExplicitLeft = 447
      ExplicitHeight = 40
    end
    inherited btnUtilizar: TBitBtn
      Top = 15
      Height = 26
      Margins.Top = 15
      Margins.Bottom = 5
      ExplicitLeft = 539
      ExplicitHeight = 40
    end
    inherited btnFechar: TBitBtn
      Top = 15
      Height = 26
      Margins.Top = 15
      Margins.Bottom = 5
      ExplicitLeft = 620
      ExplicitHeight = 40
    end
  end
  inherited pnGrid: TPanel
    Height = 367
    inherited DBGrid1: TDBGrid
      Height = 343
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_IBGE'
          Visible = True
        end>
    end
    inherited pnTotal: TPanel
      Top = 344
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ModelCidadesDM.QCidadesBusca
  end
end
