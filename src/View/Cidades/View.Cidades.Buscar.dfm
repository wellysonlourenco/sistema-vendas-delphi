inherited ViewCidadesBuscar: TViewCidadesBuscar
  Caption = 'Cidades buscar'
  ClientHeight = 470
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitHeight = 508
  TextHeight = 15
  inherited pnTopo: TPanel
    inherited edtBuscar: TEdit
      Width = 921
      ExplicitWidth = 630
    end
  end
  inherited pnRodape: TPanel
    Top = 424
    Height = 46
    ExplicitTop = 423
    ExplicitHeight = 46
    inherited rdGroupFiltros: TRadioGroup
      Height = 46
      Columns = 3
      ItemIndex = 1
      Items.Strings = (
        'Codigo (F1)'
        'Nome (F2)'
        'UF (F3)')
      ExplicitHeight = 46
    end
    inherited btnCadastrar: TBitBtn
      Height = 36
      ExplicitLeft = 708
      ExplicitTop = 8
      ExplicitHeight = 33
    end
    inherited btnUtilizar: TBitBtn
      Height = 36
      ExplicitLeft = 677
      ExplicitTop = 15
      ExplicitHeight = 26
    end
    inherited btnFechar: TBitBtn
      Height = 36
      ExplicitLeft = 922
      ExplicitTop = 1
      ExplicitHeight = 36
    end
    inherited btnAlterar: TBitBtn
      Height = 36
      ExplicitLeft = 776
      ExplicitTop = 1
      ExplicitHeight = 36
    end
  end
  inherited pnGrid: TPanel
    Height = 367
    ExplicitHeight = 366
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
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_IBGE'
          Width = 64
          Visible = True
        end>
    end
    inherited pnTotal: TPanel
      Top = 344
      ExplicitTop = 344
    end
  end
  inherited DataSource1: TDataSource
    DataSet = ModelCidadesDM.QCidadesBusca
  end
end
