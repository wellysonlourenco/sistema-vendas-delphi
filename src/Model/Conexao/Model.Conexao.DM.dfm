object ModelConexaoDM: TModelConexaoDM
  Height = 305
  Width = 553
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=D:\git\sistema-vendas-delphi\Dados\DADOS.fdb'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol='
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 176
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 280
    Top = 32
  end
end
