object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object DB: TDatabase
    AliasName = 'Orahospital'
    DatabaseName = 'Hospital'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME=klab'
      'ODBC DSN=Orahospital'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'SQLQRYMODE='
      'LANGDRIVER='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'PASSWORD=klab')
    SessionName = 'Default'
    Left = 112
    Top = 88
  end
end
