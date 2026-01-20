inherited ViewCidadesBuscar: TViewCidadesBuscar
  Caption = 'Cidades buscar'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  inherited pnTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edtBuscar: TEdit
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 795
    end
  end
  inherited pnGrid: TPanel
    StyleElements = [seFont, seClient, seBorder]
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
          Width = 64
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
    StyleElements = [seFont, seClient, seBorder]
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
    StyleElements = [seFont, seClient, seBorder]
    inherited lbTotal: TLabel
      Height = 19
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ModelCidadesDM.QCidadesBusca
  end
end
