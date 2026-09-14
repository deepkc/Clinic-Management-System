unit Unit_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, OleCtrls, DateEditXControl_TLB,
  ComCtrls,
//  Unit_Status,
  DBCtrls, Grids, DBGrids, dblookup, CheckLst, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, jpeg, Fxn;
//  Unit_PatientInfo


type
    THackDbGrid = class(TdbGrid);

type
  TFrame_Doc = class(TFrame)
    Panel2: TPanel;
    Panel3: TPanel;
    DateEditX1: TDateEditX;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Query_Department: TOraQuery;
    DS_Department: TDataSource;
    DS_Doctor: TDataSource;
    Query_Doctor: TOraQuery;
    dblcb_department: TDBLookupComboBox;
    Img: TImage;
    BB_View: TBitBtn;
    CheckListBox1: TCheckListBox;
    CheckBox1: TCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    DBGrid_Appoinment: TDBGrid;
    DS_Appoinment: TDataSource;
    Query_Appoinment: TOraQuery;
    TT_Appoinment: TOraTable;
    BB_Status: TBitBtn;
    Query_Temp: TOraQuery;
    btn_Save: TBitBtn;
    btn_Close: TBitBtn;
    MonthCalendar1: TMonthCalendar;
    Constructor Create(Aowner: Tcomponent); Override;
    procedure dblcb_departmentClick(Sender: TObject);
    procedure ImgClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure BB_ViewClick(Sender: TObject);
    procedure GridColumnWidth;
    procedure DBGrid_AppoinmentDrawColumnCell
      (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btn_CloseClick(Sender: TObject);
    procedure DBGrid_AppoinmentDblClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure BB_StatusClick(Sender: TObject);
    procedure new;
  private
    { Private declarations }
  public
    { Public declarations }
  var
    Arr_CLB_DoctorID: Array of Array of String;
    Pi_chblength,dragdocid: Integer;
    Form_PatientInfo: Unit_PatientInfo.TForm_PatientInfo;
    Form_Status: Unit_Status.TForm_Status;
    Ps_DocName: String;
    isdrag:boolean;
  end;

implementation

{$R *.dfm}

procedure TFrame_Doc.BB_StatusClick(Sender: TObject);
var
  Li_arrcount, Li_arrcount1: Integer;
  Ls_Docname, Ls_Walkin, Ls_QueueNo, Ls_DocId, Ls_Tablename, Ls_Patienttype,
    Ls_ColId, Ls_Patientid, Ls_Patientname, Ls_AppId, Ls_PatientPhone,
    Ls_DocScDetail: String;
  Qry: TOraQuery;
begin
  if (DBGrid_Appoinment.SelectedField.FieldName = 'PatientName1') then
  Begin
    Ls_Docname := 'DocName1';
    Ls_Walkin := 'WalkIn1';
    Ls_QueueNo := 'QueueNo1';
    Ls_DocId := 'DocID1';
    // Form_PatientInfo.Ps_PatientFieldName:='PatientName1';
    Ls_Patienttype := 'Patienttype1';
    Ls_Patientid := 'PatientID1';
    Ls_Patientname := 'PatientName1';
    Ls_AppId := 'AppId1';
    Ls_PatientPhone := 'PatientPhone1';
    Ls_DocScDetail := 'DocScDetailId1'
  End
  else if (DBGrid_Appoinment.SelectedField.FieldName = 'PatientName2') then
  Begin
    Ls_Docname := 'DocName2';
    Ls_Walkin := 'WalkIn2';
    Ls_QueueNo := 'QueueNo2';
    Ls_DocId := 'DocID2';
    // Form_PatientInfo.Ps_PatientFieldName:='PatientName2';
    Ls_Patienttype := 'Patienttype2';
    Ls_Patientid := 'PatientID2';
    Ls_Patientname := 'PatientName2';
    Ls_AppId := 'AppId2';
    Ls_PatientPhone := 'PatientPhone2';
    Ls_DocScDetail := 'DocScDetailId2'
  End
  Else
    Exit;

  if DBGrid_Appoinment.SelectedField.Value = NULL then
  Begin
    MessageDlg('Please Select The Patient First', mtWarning, [mbOK], 0);
    Exit;
  End;

  Qry := TOraQuery.Create(nil);

  With Qry do
  Begin
    Close;
    DatabaseName := gs_temppath;
    SQL.Clear;
    SQL.Add('Select * from tbl_appoinment where ' + Ls_Docname + '=' + #39 +
        TT_Appoinment.FieldByName(Ls_Docname).AsString + #39);
    SQL.Add(' and ' + Ls_Patientname + '=' + #39 + TT_Appoinment.FieldByName
        (Ls_Patientname).AsString + #39);
    SQL.Add(' and ' + Ls_PatientPhone + '=' + #39 + TT_Appoinment.FieldByName
        (Ls_PatientPhone).AsString + #39);
    Open;
  End;

  Form_Status := TForm_Status.Create(nil);

  With Form_Status do
  Begin
    if Qry.FieldByName(Ls_Patienttype).AsString = 'Ex' then
    Begin
      Pi_PatientId := Qry.FieldByName(Ls_Patientid).AsInteger;
      Pi_NonPatientId := 0
    End
    Else if Qry.FieldByName(Ls_Patienttype).AsString = 'Non' then
    Begin
      Pi_NonPatientId := Qry.FieldByName(Ls_Patientid).AsInteger;
      Pi_PatientId := 0;
    End;
    Pi_AppointmentId := Qry.FieldByName(Ls_AppId).AsInteger;
    Pi_DoctorScheduleDetailId := Qry.FieldByName(Ls_DocScDetail).AsInteger;
    Label_Departmentname.Caption := dblcb_department.Text;
    if Ps_DocName <> '' then
      Label_Doctorname.Caption := Ps_DocName
    Else
    Begin
      Li_arrcount1 := 0;
      while TT_Appoinment.Bof <> True do
      Begin
        while Li_arrcount1 < Pi_chblength do
        Begin
          if TT_Appoinment.FieldByName(Ls_Docname).AsString = Arr_CLB_DoctorID
            [Li_arrcount1, 1] then
          Begin
            // Form_PatientInfo.Ps_Doctorname:=TT_Appoinment.FieldByName(Ls_Docname).AsString;
            Ps_DocName := TT_Appoinment.FieldByName(Ls_Docname).AsString;
            Label_Doctorname.Caption := Ps_DocName;
            Break;
          End;
          inc(Li_arrcount1);
        End;

        if Li_arrcount1 = Pi_chblength then
          Li_arrcount1 := Li_arrcount1 - 1;

        if TT_Appoinment.FieldByName(Ls_Docname).AsString = Arr_CLB_DoctorID
          [Li_arrcount1, 1] then
        Begin
          Break;
        End;

        TT_Appoinment.Prior;
        Li_arrcount1 := 0;
      End;
    End;
    Label_Time.Caption := Qry.FieldByName(Ls_Docname).AsString;
    Label_QueueNo.Caption := Qry.FieldByName(Ls_QueueNo).AsString;
    Label_PatientName.Caption := Qry.FieldByName(Ls_Patientname).AsString;
    if Qry.FieldByName(Ls_Walkin).AsString = 'Y' then
      Chb_Iswalkin.Checked := True
    Else
      Chb_Iswalkin.Checked := False;

  End;

  Try
    Form_Status.ShowModal;
    Qry.Free;
  Finally
    Form_Status.Free;
  End;
end;

procedure TFrame_Doc.BB_ViewClick(Sender: TObject);
var
  Li_check, Li_loop, Li_Serial, Li_Count, Li_num, Li_maxserial: Integer;
  Ls_ColName, Ls_ColId, Ls_random, Ls_docname1, Ls_docname2, Ls_docname3,
    Ls_Walkin, Ls_Queue, Ls_DocId, Ls_AppId, Ls_Patientid, Ls_Patienttype,
    Ls_Patientname, Ls_PatientPhone, Ls_DocScDetail, Ls_PT: String;
  Qry, Query, Qry_leave: TOraQuery;
  Lb_next: Boolean;
begin

  Qry := TOraQuery.Create(nil);
  Query := TOraQuery.Create(nil);
  Qry_leave := TOraQuery.Create(nil);

  TT_Appoinment.Close;
  TT_Appoinment.EmptyTable;
  TT_Appoinment.DatabaseName := gs_temppath;
  TT_Appoinment.Open;

  Li_check := 0;

  Li_loop := 0;

  Li_Serial := 1;

  TT_Appoinment.Append;

  while Li_check < Pi_chblength do
  Begin
    if CheckListBox1.Checked[Li_check] = True then
    Begin

      with TT_Appoinment do
      Begin
        if Li_loop = 0 then
        Begin
          Ls_ColId := 'DocID1';
          Ls_ColName := 'DocName1';
          Ls_Walkin := 'WalkIn1';
          Ls_Queue := 'QueueNo1';
          Ls_AppId := 'AppId1';
          Ls_Patientid := 'PatientID1';
          Ls_Patienttype := 'PatientType1';
          Ls_PT := 'Patientt1';
          Ls_Patientname := 'PatientName1';
          Ls_PatientPhone := 'PatientPhone1';
          Ls_DocScDetail := 'DocScDetailId1';
        End
        else if Li_loop = 1 then
        Begin
          Ls_ColId := 'DocID2';
          Ls_ColName := 'DocName2';
          Ls_Walkin := 'WalkIn2';
          Ls_Queue := 'QueueNo2';
          Ls_AppId := 'AppId2';
          Ls_Patientid := 'PatientID2';
          Ls_Patienttype := 'PatientType2';
          Ls_PT := 'Patientt2';
          Ls_Patientname := 'PatientName2';
          Ls_PatientPhone := 'PatientPhone2';
          Ls_DocScDetail := 'DocScDetailId2';
        End;

        if Arr_CLB_DoctorID[Li_check, 0] <> '' then
        Begin
          if Li_loop = 0 then
            FieldByName('Serial').AsInteger := Li_Serial;
          FieldByName(Ls_ColId).AsString := Arr_CLB_DoctorID[Li_check, 0];
          Ls_DocId := Arr_CLB_DoctorID[Li_check, 0];
          FieldByName(Ls_ColName).AsString := Arr_CLB_DoctorID[Li_check, 1];
          Ls_docname1 := Arr_CLB_DoctorID[Li_check, 1];
        End;

        if Li_loop = 0 then
        Begin
          Ls_docname1 := Arr_CLB_DoctorID[Li_check, 1];
        End
        else if Li_loop = 1 then
        Begin
          Ls_docname2 := Arr_CLB_DoctorID[Li_check, 1];
        End
        else
          Ls_docname3 := Arr_CLB_DoctorID[Li_check, 1];

        inc(Li_loop);

      End;

      With Query_Appoinment do
      Begin
        Close;
        DatabaseName := gs_DatabaseName;
        SQL.Clear;
        SQL.Add(
          'select * from doctorscheduledetail where doctorscheduleid in (select doctorscheduleid from doctorschedule where docid=' + Arr_CLB_DoctorID[Li_check, 0] + ' and EngDate=''' + DateEditX1.ADDateAsText + ''') order by serialorderno');
        // SQL.Add('Select * from appointment where appdate='+#39+DateEditX1.text+#39+' and doccode in (Select doccode from doctor where docid='+Arr_CLB_DoctorID[LI_check,0]+') order by QueNo');
        Open;
      End;

      with Qry_leave do
      Begin
        Close;
        DatabaseName := gs_DatabaseName;
        SQL.Clear;
        SQL.Add('select isonleave from doctorschedule where docid=' +
            Arr_CLB_DoctorID[Li_check, 0] + ' and EngDate=' + #39 +
            DateEditX1.ADDateAsText + #39);
        Open;
      End;

      if Li_loop > 0 then
      Begin

        TT_Appoinment.Post;

        if (Query_Appoinment.Eof = True) or
          (Qry_leave.FieldByName('isonleave').AsString = 'Y') then
        Begin

        End
        Else
        Begin
          Li_num := 1;
          while Query_Appoinment.Eof <> True do
          Begin
            if Li_loop = 1 then
            Begin
              TT_Appoinment.Append;
              inc(Li_Serial);
              Li_maxserial := Li_Serial;
            End
            Else
            Begin
              TT_Appoinment.Locate(Ls_ColName, Ls_docname2, []);
              Li_Count := TT_Appoinment.FieldByName('Serial').AsInteger;
              if (Li_Count + Li_num) > Li_maxserial then
                TT_Appoinment.Append
              Else
              Begin
                TT_Appoinment.Locate('Serial', Li_Count + Li_num, []);
                TT_Appoinment.Edit;
              End;
            End;
            if Li_loop = 1 then
              TT_Appoinment.FieldByName('Serial').AsInteger := Li_Serial;

            TT_Appoinment.FieldByName(Ls_ColId).AsString := Ls_DocId;
            TT_Appoinment.FieldByName(Ls_ColName).AsString :=
              Query_Appoinment.FieldByName('Starttime').AsString;
            TT_Appoinment.FieldByName(Ls_Walkin).AsString :=
              Query_Appoinment.FieldByName('ISWALKIN').AsString;
            TT_Appoinment.FieldByName(Ls_Queue).AsString :=
              Query_Appoinment.FieldByName('SERIALORDERNO').AsString;
            TT_Appoinment.FieldByName(Ls_AppId).AsString :=
              Query_Appoinment.FieldByName('AppoinmentId').AsString;
            TT_Appoinment.FieldByName(Ls_DocScDetail).AsString :=
              Query_Appoinment.FieldByName('DoctorScheduleDetailId').AsString;
            TT_Appoinment.FieldByName(Ls_PT).AsString :=
              Query_Appoinment.FieldByName('patienttype').AsString;

            if TT_Appoinment.FieldByName(Ls_AppId).AsString <> '' then
            Begin
              with Qry do
              Begin
                Close;
                DatabaseName := gs_DatabaseName;
                SQL.Clear;
                SQL.Add('SELECT * from Appointment where AppId=' + #39 +
                    TT_Appoinment.FieldByName(Ls_AppId).AsString + #39);
                Open;
              End;
              if (Qry.FieldByName('PatientID').AsString <> '') and
                (Qry.FieldByName('NonPatientID').AsString = '0') then
              Begin
                TT_Appoinment.FieldByName(Ls_Patientid).AsString :=
                  Qry.FieldByName('PatientID').AsString;
                TT_Appoinment.FieldByName(Ls_Patienttype).AsString := 'Ex';
                Qry.Close;
                Qry.SQL.Clear;
                Qry.SQL.Add('SELECT * FROM PATIENTMAIN WHERE PATIENTID=' +
                    #39 + TT_Appoinment.FieldByName(Ls_Patientid)
                    .AsString + #39);
                Qry.Open;
                TT_Appoinment.FieldByName(Ls_Patientname)
                  .AsString := Qry.FieldByName('PatientName').AsString;
                if Qry.FieldByName('Phoneno').AsString <> '' then
                  TT_Appoinment.FieldByName(Ls_PatientPhone)
                    .AsString := Qry.FieldByName('Phoneno').AsString
                Else
                  TT_Appoinment.FieldByName(Ls_PatientPhone)
                    .AsString := Qry.FieldByName('Mobileno').AsString;
              End
              Else if (Qry.FieldByName('NonPatientID').AsString <> '') and
                (Qry.FieldByName('PatientID').AsString = '0') then
              Begin
                TT_Appoinment.FieldByName(Ls_Patientid).AsString :=
                  Qry.FieldByName('NonPatientID').AsString;
                TT_Appoinment.FieldByName(Ls_Patienttype).AsString := 'Non';
                Qry.Close;
                Qry.SQL.Clear;
                Qry.SQL.Add
                  ('SELECT * FROM NONPATIENT WHERE NONPATIENTID=' + #39 +
                    TT_Appoinment.FieldByName(Ls_Patientid).AsString + #39);
                Qry.Open;
                TT_Appoinment.FieldByName(Ls_Patientname)
                  .AsString := Qry.FieldByName('PatientName').AsString;
                if Qry.FieldByName('Phoneno').AsString <> '' then
                  TT_Appoinment.FieldByName(Ls_PatientPhone)
                    .AsString := Qry.FieldByName('Phoneno').AsString
                Else
                  TT_Appoinment.FieldByName(Ls_PatientPhone)
                    .AsString := Qry.FieldByName('Mobileno').AsString;
              End;
            End;

            TT_Appoinment.Post;

            if Li_loop <> 1 then
            Begin
              inc(Li_num);
            End;

            Query_Appoinment.Next;
          End;
        End;

        if Li_loop = 1 then
        Begin
          TT_Appoinment.Locate(Ls_ColName, Ls_docname1, []);
          TT_Appoinment.Edit;
        End
        Else
        Begin
          TT_Appoinment.Locate(Ls_ColName, Ls_docname2, []);
          TT_Appoinment.Append;
        End;

        if Li_loop = 2 then
          Li_loop := 0;
      End;

    End;

    inc(Li_check);
  End;

  Li_check := 0;

  Qry.Free;

  Query_Temp.Close;
  Query_Temp.Open;

  GridColumnWidth;

end;

procedure TFrame_Doc.btn_CloseClick(Sender: TObject);
begin
  self.Free;
end;

procedure TFrame_Doc.btn_SaveClick(Sender: TObject);
var
  Qry, Qry_update: TOraQuery;
  Ls_Doctorscheduledetailid: String;
begin

  Qry := TOraQuery.Create(nil);
  Qry_update := TOraQuery.Create(nil);

  With Qry do
  Begin
    Close;
    DatabaseName := gs_temppath;
    SQL.Clear;
    SQL.Add('SELECT * FROM TBL_APPOINMENT');
    Open;
  End;

  while not Qry.Eof do
  Begin
    if Qry.FieldByName('AppId1').AsString <> '' then
    Begin
      With Qry_update do
      Begin
        Close;
        DatabaseName := gs_DatabaseName;
        SQL.Clear;
        SQL.Add(
          'select doctorscheduledetailid from doctorscheduledetail where doctorscheduleid in ');
        SQL.Add('(select doctorscheduleid from doctorschedule where docid=' +
            #39 + Qry.FieldByName('DocId1').AsString + #39 + ')');
        SQL.Add('and starttime=' + #39 + Qry.FieldByName('DocName1')
            .AsString + #39);
        Open;
      End;
      Ls_Doctorscheduledetailid := Qry_update.FieldByName
        ('doctorscheduledetailid').AsString;
      With Qry_update do
      Begin
        Close;
        DatabaseName := gs_DatabaseName;
        SQL.Clear;
        SQL.Add('UPDATE DOCTORSCHEDULEDETAIL SET APPOINMENTID=' + #39 +
            Qry.FieldByName('AppId1').AsString + #39);
        SQL.Add(', ISWALKIN=' + #39 + Qry.FieldByName('WalkIn1')
            .AsString + #39 + ' where Doctorscheduledetailid=' + #39 +
            Ls_Doctorscheduledetailid + #39);
        ExecSQL;
      End;
    End;
    Qry.Next;
  End;

  Qry.Close;
  Qry.Open;

  while not Qry.Eof do
  Begin
    if Qry.FieldByName('AppId2').AsString <> '' then
    Begin
      With Qry_update do
      Begin
        Close;
        DatabaseName := gs_DatabaseName;
        SQL.Clear;
        SQL.Add(
          'select doctorscheduledetailid from doctorscheduledetail where doctorscheduleid in ');
        SQL.Add('(select doctorscheduleid from doctorschedule where docid=' +
            #39 + Qry.FieldByName('DocId2').AsString + #39 + ')');
        SQL.Add('and starttime=' + #39 + Qry.FieldByName('DocName2')
            .AsString + #39);
        Open;
      End;
      Ls_Doctorscheduledetailid := Qry_update.FieldByName
        ('doctorscheduledetailid').AsString;
      With Qry_update do
      Begin
        Close;
        DatabaseName := gs_DatabaseName;
        SQL.Clear;
        SQL.Add('UPDATE DOCTORSCHEDULEDETAIL SET APPOINMENTID=' + #39 +
            Qry.FieldByName('AppId2').AsString + #39);
        SQL.Add(', ISWALKIN=' + #39 + Qry.FieldByName('WalkIn2')
            .AsString + #39 + ' where Doctorscheduledetailid=' + #39 +
            Ls_Doctorscheduledetailid + #39);
        ExecSQL;
      End;
    End;
    Qry.Next;
  End;

  Qry.Close;
  Qry_update.Close;
  Qry.Free;
  Qry_update.Free;
end;

procedure TFrame_Doc.CheckBox1Click(Sender: TObject);
var
  Li_check: Integer;
begin
  Li_check := 0;
  if CheckBox1.Checked = True then
  Begin
    while Li_check < Pi_chblength do
    Begin
      CheckListBox1.Checked[Li_check] := True;
      inc(Li_check);
    End;
  End
  else
  Begin
    while Li_check < Pi_chblength do
    Begin
      CheckListBox1.Checked[Li_check] := False;
      inc(Li_check);
    End;
  End;
end;

constructor TFrame_Doc.Create(Aowner: Tcomponent);
begin
  inherited;

  Query_Department.Close;
  Query_Department.Open;

  With TT_Appoinment do
  Begin
    Close;
    DatabaseName := gs_temppath;
    TableName := 'tbl_appoinment.db';
    TableType := ttDefault;
    FieldDefs.Clear;

    FieldDefs.Add('Serial', ftInteger);

    FieldDefs.Add('DocID1', ftString, 10);
    FieldDefs.Add('QueueNo1', ftString, 10);
    FieldDefs.Add('AppId1', ftString, 10);
    FieldDefs.Add('DocName1', ftString, 32);
    FieldDefs.Add('Patienttype1', ftString, 5);
    FieldDefs.Add('Patientt1', ftString, 25);
    FieldDefs.Add('DocScDetailId1', ftString, 5);
    FieldDefs.Add('PatientID1', ftInteger);
    FieldDefs.Add('PatientName1', ftString, 32);
    FieldDefs.Add('PatientPhone1', ftString, 30);
    FieldDefs.Add('WalkIn1', ftString, 32);

    FieldDefs.Add('DocID2', ftString, 10);
    FieldDefs.Add('QueueNo2', ftString, 10);
    FieldDefs.Add('AppId2', ftString, 10);
    FieldDefs.Add('DocName2', ftString, 32);
    FieldDefs.Add('Patienttype2', ftString, 5);
    FieldDefs.Add('Patientt2', ftString, 25);
    FieldDefs.Add('DocScDetailId2', ftString, 5);
    FieldDefs.Add('PatientID2', ftInteger);
    FieldDefs.Add('PatientName2', ftString, 32);
    FieldDefs.Add('PatientPhone2', ftString, 30);
    FieldDefs.Add('WalkIn2', ftString, 32);

    CreateTable;
    Open;
  End;

  With Query_Temp do
  Begin
    Close;
    DatabaseName := gs_temppath;
    SQL.Clear;
    SQL.Add('Select * from tbl_appoinment order by Serial');
    Open;
  End;

  GridColumnWidth;

end;

procedure TFrame_Doc.DBGrid_AppoinmentDblClick(Sender: TObject);
var
  Li_arrcount: Integer;
  Ls_Docname, Ls_Walkin, Ls_QueueNo, Ls_DocId, Ls_Tablename, Ls_Patienttype,
  Ls_ColId, Ls_Patientid, Ls_Patientname, Ls_AppId, Ls_PT,
  Ls_docscdetailid: String;
  Qry_New: TOraQuery;
begin

  Li_arrcount := 0;

  Form_PatientInfo := TForm_PatientInfo.Create(nil);

  if (DBGrid_Appoinment.SelectedField.FieldName = 'PatientName1') or
    (DBGrid_Appoinment.SelectedField.FieldName = 'DocName1') then
  Begin
    Ls_Docname := 'DocName1';
    Ls_Walkin := 'WalkIn1';
    Ls_QueueNo := 'QueueNo1';
    Ls_DocId := 'DocID1';
    Form_PatientInfo.Ps_PatientFieldName := 'PatientName1';
    Ls_Patienttype := 'Patienttype1';
    Ls_Patientid := 'PatientID1';
    Ls_Patientname := 'PatientName1';
    Ls_PT := 'Patientt1';
    Ls_AppId := 'AppId1';
    Ls_docscdetailid := 'DocScDetailId1'
  End
  else if (DBGrid_Appoinment.SelectedField.FieldName = 'PatientName2') or
    (DBGrid_Appoinment.SelectedField.FieldName = 'DocName2') then
  Begin
    Ls_Docname := 'DocName2';
    Ls_Walkin := 'WalkIn2';
    Ls_QueueNo := 'QueueNo2';
    Ls_DocId := 'DocID2';
    Form_PatientInfo.Ps_PatientFieldName := 'PatientName2';
    Ls_Patienttype := 'Patienttype2';
    Ls_Patientid := 'PatientID2';
    Ls_Patientname := 'PatientName2';
    Ls_PT := 'Patientt2';
    Ls_AppId := 'AppId2';
    Ls_docscdetailid := 'DocScDetailId2'
  End
  Else
    Exit;

  if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
  Begin
    Ls_Tablename := 'Patientmain';
    Ls_ColId := 'PatientId'
  End
  Else if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Non' then
  Begin
    Ls_Tablename := 'Nonpatient';
    Ls_ColId := 'Nonpatientid'
  End
  Else
  Begin
    Ls_Tablename := '';
    Ls_ColId := '';
  End;

  Qry_New := TOraQuery.Create(nil);

  if TT_Appoinment.FieldByName(Ls_Patientname).Value <> NULL then
  Begin
    With Qry_New do
    Begin
      Close;
      DatabaseName := gs_DatabaseName;
      SQL.Clear;
      SQL.Add('Select * from ' + Ls_Tablename + ' where ' + Ls_ColId + '=' +
          #39 + TT_Appoinment.FieldByName(Ls_Patientid).AsString + #39);
      SQL.Add(' and Patientname=' + #39 + TT_Appoinment.FieldByName
          (Ls_Patientname).AsString + #39);
      Open;
    End;

    with Form_PatientInfo do
    Begin
      Ps_AppId := TT_Appoinment.FieldByName(Ls_AppId).AsString;
      Ps_DocId := TT_Appoinment.FieldByName(Ls_DocId).AsString;
      Pi_DoctorId := TT_Appoinment.FieldByName(Ls_DocId).AsInteger;
      Ps_Fname := Qry_New.FieldByName('FName').AsString;
      Ps_Lname := Qry_New.FieldByName('LName').AsString;
      Ps_Age := Qry_New.FieldByName('Age').AsString;
      Ps_Agetype := Qry_New.FieldByName('Agetype').AsString;
      Ps_Gender := Qry_New.FieldByName('Gender').AsString;
      Ps_Date := DateEditX1.ADDateAsText;

      Ps_Patienttype := TT_Appoinment.FieldByName(Ls_PT).AsString;
      if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
        Ps_DOBVS := Qry_New.FieldByName('DOBVS').AsString
      Else
        Ps_DOB := Qry_New.FieldByName('DOB').AsString;
      Ps_Address := Qry_New.FieldByName('Address').AsString;
      Ps_Mobile := Qry_New.FieldByName('MobileNo').AsString;
      Ps_Phone := Qry_New.FieldByName('PhoneNo').AsString;
      Ps_Email := Qry_New.FieldByName('Email').AsString;
      Ps_Remarks := Qry_New.FieldByName('Remarks').AsString;
      Ps_DistrictId := Qry_New.FieldByName('DistrictId').AsString;
      Pi_DepartmentId := dblcb_department.KeyValue;

      if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
      Begin
        Ps_NewPid := '';
        Ps_EPid := Qry_New.FieldByName('PatientId').AsString;
        Ps_Patientname := Qry_New.FieldByName('Patientname').AsString;
        Pi_PatientId := Qry_New.FieldByName('PatientId').AsInteger;
        Pi_NonPatientId := 0
      End
      Else if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Non' then
      Begin
        Ps_NewPid := Qry_New.FieldByName('Nonpatientid').AsString;
        Ps_Patientname := Qry_New.FieldByName('Patientname').AsString;
        Ps_EPid := '';
        Pi_NonPatientId := Qry_New.FieldByName('nonpatientid').AsInteger;
        Pi_PatientId := 0;
      End;
      Pb_IsUpdate := True;
    End;
  End
  Else
  Begin
    Form_PatientInfo.Ps_Patienttype := TT_Appoinment.FieldByName(Ls_PT)
      .AsString;
    Form_PatientInfo.Pb_IsUpdate := False;
  End;

  Form_PatientInfo.Ps_Did := Ls_DocId;
  Form_PatientInfo.Ps_Pname := Ls_Patientname;
  Form_PatientInfo.Dex_Date.Text := DateEditX1.Text;
  Form_PatientInfo.Label_day.Caption := GetDay(DateEditX1.Text);
  Form_PatientInfo.Ps_DocScDetailId := TT_Appoinment.FieldByName
    (Ls_docscdetailid).AsString;

  while Li_arrcount < Pi_chblength do
  Begin
    if (TT_Appoinment.FieldByName(Ls_Docname).AsString = Arr_CLB_DoctorID
        [Li_arrcount, 1]) then
      Exit;
    inc(Li_arrcount);
  End;

  Li_arrcount := 0;

  if (TT_Appoinment.FieldByName(Ls_Docname).AsString <> '') then
  Begin
    Form_PatientInfo.Ps_Time := TT_Appoinment.FieldByName(Ls_Docname).AsString;
    Form_PatientInfo.Ps_QueueNo := TT_Appoinment.FieldByName(Ls_QueueNo)
      .AsString;
    Form_PatientInfo.Ps_SerialNo := TT_Appoinment.FieldByName('Serial')
      .AsString;
    Form_PatientInfo.Ps_DocId := TT_Appoinment.FieldByName(Ls_DocId).AsString;
    if TT_Appoinment.FieldByName(Ls_Walkin).AsString = 'Y' then
      Form_PatientInfo.Pb_Iswalkin := True
    Else
      Form_PatientInfo.Pb_Iswalkin := False;

    while TT_Appoinment.Bof <> True do
    Begin
      while Li_arrcount < Pi_chblength do
      Begin
        if TT_Appoinment.FieldByName(Ls_Docname).AsString = Arr_CLB_DoctorID
          [Li_arrcount, 1] then
        Begin
          Form_PatientInfo.Ps_Doctorname := TT_Appoinment.FieldByName
            (Ls_Docname).AsString;
          Ps_DocName := TT_Appoinment.FieldByName(Ls_Docname).AsString;
          Break;
        End;
        inc(Li_arrcount);
      End;

      if Li_arrcount = Pi_chblength then
        Li_arrcount := Li_arrcount - 1;

      if TT_Appoinment.FieldByName(Ls_Docname).AsString = Arr_CLB_DoctorID
        [Li_arrcount, 1] then
      Begin
        Break;
      End;

      TT_Appoinment.Prior;
      Li_arrcount := 0;
    End;

  End
  Else
  Begin
    Exit;
  End;

  Form_PatientInfo.Ps_Departmentname := dblcb_department.Text;

  Try
    Form_PatientInfo.ShowModal;
  Finally
    Form_PatientInfo.Free;
  End;

  // btn_SaveClick(Sender);

  BB_ViewClick(Sender);

  TT_Appoinment.Close;
  TT_Appoinment.Open;

end;

procedure TFrame_Doc.DBGrid_AppoinmentDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Li_doccheck: Integer;
  Ls_Patientname, Ls_Patientt, Ls_Docname: String;
begin

  Li_doccheck := 0;

  if DBGrid_Appoinment.SelectedField.FieldName = 'PatientName1' then
  Begin
    Ls_Patientname := 'PatientName1';
    Ls_Patientt := 'Patientt1';
    Ls_Docname := 'DocName1'
  End
  Else
  Begin
    Ls_Patientname := 'PatientName2';
    Ls_Patientt := 'Patientt2';
    Ls_Docname := 'DocName2'
  End;

  if (DBGrid_Appoinment.SelectedField.FieldName <> 'PatientName') then
  Begin
    while Li_doccheck < Pi_chblength do
    Begin
      if (TT_Appoinment.FieldByName(Ls_Docname).AsString = Arr_CLB_DoctorID[Li_doccheck, 1]) then
      Begin
        DBGrid_Appoinment.Canvas.Font.Style := [fsbold];
        DBGrid_Appoinment.DefaultDrawColumnCell(Rect, DataCol, Column, State);
        Break;
      End;
      inc(Li_doccheck);
    End;
  End;

  if (TT_Appoinment.FieldByName(Ls_Patientt).AsString = 'New Patients') then
  Begin
     with DBGrid_Appoinment do
     Begin
        Canvas.Brush.Color := clMedGray;
        if State = [gdSelected,gdFocused] then
          Canvas.Brush.Color := clMedGray;
        if DataCol in [1, 5, 0, 4] then
          DefaultDrawColumnCell(Rect, DataCol, Column, State);
     End
  End
  Else if (TT_Appoinment.FieldByName(Ls_Patientt).AsString ='Follow Up Patients') then
  Begin
     with DBGrid_Appoinment do
     Begin
        Canvas.Brush.Color := clMoneyGreen;
        if State = [gdSelected,gdFocused] then
          Canvas.Brush.Color := clMoneyGreen;
        if DataCol in [1, 5, 0, 4] then
          DefaultDrawColumnCell(Rect, DataCol, Column, State);
     End
  End
  Else if (TT_Appoinment.FieldByName(Ls_Patientt).AsString = 'Report Patients') then
  Begin
     with DBGrid_Appoinment do
     Begin
        Canvas.Brush.Color := clSkyBlue;
        if State = [gdSelected,gdFocused] then
          Canvas.Brush.Color := clSkyBlue;
        if DataCol in [1, 5, 0, 4] then
          DefaultDrawColumnCell(Rect, DataCol, Column, State);
     End
  End;

end;

procedure TFrame_Doc.dblcb_departmentClick(Sender: TObject);
var
  Qry: TOraQuery;
  I: Integer;
begin
  TT_Appoinment.Close;
  TT_Appoinment.EmptyTable;

  if CheckBox1.Checked = True then
    CheckBox1.Checked := False;

  Qry := TOraQuery.Create(Nil);
  with Qry do
  begin
    Close;
    DatabaseName := gs_DatabaseName;
    SQL.Clear;
    SQL.Add('Select Docname,DocId from Doctor where DepId=' + inttostr
        (dblcb_department.KeyValue) + ' Order by DocName');
    Open;
    CheckListBox1.Items.Clear;
    I := 0;
    SetLength(Arr_CLB_DoctorID, RecordCount);
    Pi_chblength := 0;
    while not Eof do
    begin
      SetLength(Arr_CLB_DoctorID[I], 2);
      CheckListBox1.Items.Add(FieldByName('DocName').AsString);
      Arr_CLB_DoctorID[I, 0] := FieldByName('DocId').AsString;
      Arr_CLB_DoctorID[I, 1] := FieldByName('DocName').AsString;
      inc(I);
      Next;
      inc(Pi_chblength);
    end;
  end;
  Qry.Free;

  CheckBox1.Checked := True;
end;

procedure TFrame_Doc.GridColumnWidth;
begin
  with DBGrid_Appoinment do
  Begin
    Columns[0].Width := 130;
    Columns[1].Width := 100;
    Columns[2].Width := 85;
    Columns[3].Width := 50;

    Columns[4].Width := 130;
    Columns[5].Width := 100;
    Columns[6].Width := 85;
    Columns[7].Width := 50;
  End;
end;

procedure TFrame_Doc.ImgClick(Sender: TObject);
begin
  if MonthCalendar1.Visible = True then
    MonthCalendar1.Visible := False
  Else
  Begin
    MonthCalendar1.Visible := True;
    // MonthCalendar1.Top:=5;
    MonthCalendar1.Left := DateEditX1.Left;
  End;
end;

procedure TFrame_Doc.MonthCalendar1DblClick(Sender: TObject);
begin
  DateEditX1.ADDateAsDate := MonthCalendar1.Date;
  MonthCalendar1.Visible := False;
end;

procedure TFrame_Doc.new;
begin
  //
  dblcb_department.KeyValue := -1;
  CheckBox1.Checked := False;
  CheckListBox1.Clear;
  TT_Appoinment.Close;
  TT_Appoinment.EmptyTable;
end;

procedure TFrame_Doc.SpeedButton1Click(Sender: TObject);
begin
  ChangeDateSystem(DateEditX1, SpeedButton1);
end;

end.
