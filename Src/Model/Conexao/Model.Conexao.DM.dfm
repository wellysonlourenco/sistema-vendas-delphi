object ModelConexaoDM: TModelConexaoDM
  Height = 299
  Width = 528
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\github\sistema-vendas-code4-delphi\Dados\DADOS.fdb'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 120
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 112
    Top = 104
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 112
    Top = 160
  end
end
