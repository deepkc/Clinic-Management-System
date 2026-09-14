object DM_Hospital: TDM_Hospital
  OldCreateOrder = False
  Height = 346
  Width = 587
  object DB: TDatabase
    AliasName = 'Orahospital'
    DatabaseName = 'HOSPITAL'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME='
      'USER NAME=midashospital'
      'ODBC DSN=OraHospital'
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
      'PASSWORD=midas')
    SessionName = 'Default'
    Left = 112
    Top = 56
  end
end
