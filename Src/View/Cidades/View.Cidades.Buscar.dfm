inherited ViewCidadesBuscar: TViewCidadesBuscar
  Caption = 'ViewCidadesBuscar'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTopo: TPanel
    inherited edtBuscar: TEdit
      ExplicitWidth = 795
    end
  end
  inherited pnGrid: TPanel
    ExplicitTop = 73
    ExplicitHeight = 375
    inherited DBGrid1: TDBGrid
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
  end
  inherited pnRodape: TPanel
    inherited rdGroupFiltros: TRadioGroup
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'UF')
    end
    inherited btnUtilizar: TBitBtn
      ExplicitTop = 8
    end
  end
  inherited pnTotal: TPanel
    inherited lbTotal: TLabel
      Height = 19
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ModelCidadesDM.QCidadesBusca
  end
end
