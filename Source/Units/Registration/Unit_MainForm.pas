unit Unit_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, StdCtrls, Buttons, OleCtrls,
  DateEditXControl_TLB, DBCtrls, DB, DBTables, Grids, DBGrids, ExtDlgs;

type
  TCheckClass = class(TControl);

  type
    TForm_MainForm = class(TForm)
      StatusBar1: TStatusBar;
    Panel2: TPanel;
    BB_Close: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
      procedure BB_CloseClick(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure FormCreate(Sender: TObject);
      procedure Le_NameEnter(Sender: TObject);
      procedure Le_NameExit(Sender: TObject);
      procedure Dex_DobEnter(Sender: TObject);
      procedure Dex_DobExit(Sender: TObject);
      procedure DBLCB_NRelationEnter(Sender: TObject);
      procedure DBLCB_NRelationExit(Sender: TObject);
      procedure MonthlyCalendarDblClick(Sender: TObject);
      procedure Image2Click(Sender: TObject);
      procedure Image2MouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure timMouseMove(Sender: TObject; Shift: TShiftState;
        X, Y: Integer);
      procedure Image1Click(Sender: TObject);
      procedure Image3Click(Sender: TObject);
      procedure Image4Click(Sender: TObject);
      procedure BB_NewKeyDown(Sender: TObject; var Key: Word;
        Shift: TShiftState);
      procedure CB_ShareCountClick(Sender: TObject);
      procedure FormKeyPress(Sender: TObject; var Key: Char);
      procedure SB_MMHFormClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
      procedure SpeedButton3Click(Sender: TObject);
      procedure DBGrid1DblClick(Sender: TObject);
      procedure SpeedButton2Click(Sender: TObject);
      procedure PageControl1Change(Sender: TObject);
      procedure Edit_SearchChange(Sender: TObject);
      procedure SpeedButton1Click(Sender: TObject);
      procedure SpeedButton6Click(Sender: TObject);
      procedure SpeedButton4Click(Sender: TObject);
      procedure SpeedButton5Click(Sender: TObject);
      procedure Shape1MouseEnter(Sender: TObject);
      procedure DBLCB_NDistrictClick(Sender: TObject);

    private
      DateXcomp: TDateEditX;
      popupdate: Tdate;
      pb_isnew: boolean;
      pi_memberid: Integer;
      { Private declarations }
      procedure Highlight(Sender: TObject; NName: String);
      procedure DatePopUp(DateX: TDateEditX; Image: TImage; Pos: String);
      procedure CalendarClick(DateX: TDateEditX);
      procedure ZoomIn(Sender: TObject);
      procedure ZoomOut(Sender: TObject);
      procedure SaveData;
      procedure SaveImage;
      procedure LoadImage;
      procedure DeleteallFiles(MemberID:Integer);
      procedure ClearImage;
    public
      { Public declarations }
    end;

  var
    Form_MainForm: TForm_MainForm;

implementation

uses Fxn, ServerDate, DM, SaveData, Unit_Message, NetShare;
{$R *.dfm}

procedure TForm_MainForm.BB_CloseClick(Sender: TObject);
begin
//  if PageControl1.ActivePageIndex = 0 then
//  begin
//    PageControl1.ActivePageIndex := 1;
//    BB_Save.Visible := false;
//    BB_New.Visible := true;
//    QueryList.Close;
//    QueryList.Open;
//  end
//  else
//    Close;
//  DeleteallFiles(pi_memberid);
//  ClearImage;
     Close;
end;

procedure TForm_MainForm.BB_NewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Key := vk_shift;
end;

procedure TForm_MainForm.CalendarClick(DateX: TDateEditX);
Var
  popupdate: Tdate;
begin
//  if gi_datesystem = 0 then
//    DateX.SystemOfDate := 0
//  else
//    DateX.SystemOfDate := 1;
//  popupdate := MonthlyCalendar.Date;
//  DateX.ADDateAsDate := popupdate;
//  MonthlyCalendar.Visible := false;
end;

procedure TForm_MainForm.CB_ShareCountClick(Sender: TObject);
begin
//  CB_ShareCount.SetFocus;
end;

procedure TForm_MainForm.ClearImage;
begin
//     Image_Main.Picture.Assign(nil);
//     Image_NRight.Picture.Assign(nil);
//     Image_NLeft.Picture.Assign(nil);
//     Image_NMain.Picture.Assign(nil);
end;

procedure TForm_MainForm.DeleteallFiles(MemberID:Integer);
var
  APath: string;
  MySearch: TSearchRec;
  mid:string;
begin
  APath:=gs_picpath;
  FindFirst(APath+'\*.*', faAnyFile, MySearch);
  //Memo1.Lines.Add(MySearch.Name);
  DeleteFile(APath+'\'+MySearch.Name);
  while FindNext(MySearch)=0 do
  begin
     mid:=copy(MySearch.Name,1,(Pos('I',MySearch.Name)-1));
    //Memo1.Lines.Add(MySearch.Name);
    if mid=IntToStr(MemberID) then
    DeleteFile(APath+'\'+MySearch.Name);
  end;
  FindClose(MySearch);
end;

procedure TForm_MainForm.Dex_DobEnter(Sender: TObject);
begin
  Highlight(Sender, 'dex');
end;

procedure TForm_MainForm.Dex_DobExit(Sender: TObject);
begin
  Highlight(Sender, 'dex');
end;

procedure TForm_MainForm.Edit_SearchChange(Sender: TObject);
begin
//  with QueryList do
//  begin
//    Close;
//    if IsStrANumber(Edit_Search.Text) then
//      SQL[5] := 'And MemberID Like' + #39 + Edit_Search.Text + '%' + #39
//    else
//      SQL[5] := 'And upper(MemberName) Like' + #39 + '%' + UpperCase
//        (Edit_Search.Text) + '%' + #39;
//    Open;
//  end;
end;

procedure TForm_MainForm.DatePopUp(DateX: TDateEditX; Image: TImage;
  Pos: String);
begin
//  if MonthlyCalendar.Visible = true then
//    MonthlyCalendar.Visible := false
//  else
//  begin
//    MonthlyCalendar.Date := Dex_Today.ADDateAsDate;
//    DateXcomp := DateX;
//    MonthlyCalendar.Visible := true;
//    MonthlyCalendar.BringToFront;
//    MonthlyCalendar.Parent := PageControl1.ActivePage;
//    if Pos = 'up' then
//      MonthlyCalendar.Top := DateX.Top - 163
//    else
//      MonthlyCalendar.Top := DateX.Top + 25;
//    MonthlyCalendar.Left := DateX.Left;
//  end;
end;

procedure TForm_MainForm.DBGrid1DblClick(Sender: TObject);
begin
//  if QueryList.FieldByName('MemberID').AsString = '' then
//    exit;
//  PageControl1.ActivePageIndex := 0;
//  BB_New.Visible := false;
//  BB_Save.Visible := true;
//  pb_isnew := false;
//  SB_MMHForm.Visible := true;
//  with QueryList do
//  begin
//    pi_memberid := FieldByName('MemberID').AsInteger;
//    lbl_MemberNo.Caption := FieldByName('MemberNo').AsString;
//    DBLCB_Package.KeyValue:=FieldByName('PackageID').AsInteger;
//    Dex_MemberShip.VSDateAsText := FieldByName('RegDateVS').AsString;
//    CB_ShareCount.ItemIndex := CB_ShareCount.Items.IndexOf
//      (FieldByName('ShareCount').AsString);
//    Le_Name.Text := FieldByName('MemberName').AsString;
//    Le_MemberName_Nepali.Text := FieldByName('MemberName_Nepali').AsString;
//    le_address.Text := FieldByName('Address').AsString;
//    le_Address_Nepali.Text := FieldByName('Address_Nepali').AsString;
//    le_Profession.Text := FieldByName('Profession').AsString;
//    Le_GFatherName.Text := FieldByName('GFatherName').AsString;
//    le_FatherName.Text := FieldByName('FatherName').AsString;
//    le_FatherName_Nepali.Text := FieldByName('FatherName_Nepali').AsString;
//    Le_NationalityIDNo.Text := FieldByName('NationalityIDNO').AsString;
//    Le_NationalityIDno_Nepali.Text := FieldByName('NationalityIDNO_Nepali')
//      .AsString;
//    le_contactno.Text := FieldByName('ContactNo').AsString;
//    Le_MobileNo.Text := FieldByName('MobileNo').AsString;
//    Dex_Dob.VSDateAsText := FieldByName('DobVS').AsString;
//    Le_EmailID.Text := FieldByName('EmailID').AsString;
//    le_SpouseName.Text := FieldByName('SpouseName').AsString;
//    le_N_Name.Text := FieldByName('N_name').AsString;
//    DBLCB_NRelation.KeyValue := FieldByName('N_RelationID').AsInteger;
//    DBLCB_NDistrict.KeyValue := FieldByName('N_DistrictID').AsInteger;
//    DBLCB_NDistrictClick(Sender);
//    DBLCB_NVDC.KeyValue := FieldByName('N_VDCID').AsInteger;
//    le_NWardNo.Text := FieldByName('N_WardNo').AsString;
//    le_I1_Name.Text := FieldByName('I1_Name').AsString;
//    le_I1_MemberNo.Text := FieldByName('I1_MemberNo').AsString;
//    Dex_I1.ADDateAsText := FieldByName('I1_Date').AsString;
//    le_I2_Name.Text := FieldByName('I2_Name').AsString;
//    le_I2_MemberNo.Text := FieldByName('I2_MemberNo').AsString;
//    Dex_I2.ADDateAsText := FieldByName('I2_Date').AsString;
//  end;
//  LoadImage;
end;

procedure TForm_MainForm.DBLCB_NDistrictClick(Sender: TObject);
Var
  QryVDC: TQuery;
  DSVDC: TDataSource;
begin
//  DSVDC := TDataSource.Create(nil);
//  QryVDC := TQuery.Create(nil);
//  with QryVDC do
//  begin
//    SQL.Clear;
//    DatabaseName := gs_DatabaseName;
//    SQL.Add('Select * from VDC  Where DistrictID=' + IntToStr
//        (DBLCB_NDistrict.KeyValue));
//    Active := true;
//    DSVDC.DataSet := QryVDC;
//    DBLCB_NVDC.ListSource := DSVDC;
//    DBLCB_NVDC.ListField := 'VDCName';
//    DBLCB_NVDC.KeyField := 'VDCID';
//  end;
end;

procedure TForm_MainForm.DBLCB_NRelationEnter(Sender: TObject);
begin
  Highlight(Sender, 'dblcb');
end;

procedure TForm_MainForm.DBLCB_NRelationExit(Sender: TObject);
begin
  Highlight(Sender, 'dblcb');
end;

procedure TForm_MainForm.FormCreate(Sender: TObject);
Var
  i: Integer;
  ls_picpath:string;
begin
  { *****Changing all Dex Control to gi_datesystem and assign Currentdate**** }
//  For i := 0 to PageControl1.Pages[0].ControlCount - 1 do
//    if (PageControl1.Pages[0].Controls[i] is TDateEditX) then
//    begin
//      TDateEditX(PageControl1.Pages[0].Controls[i]).SystemOfDate :=
//        gi_datesystem;
//      if gi_datesystem = 1 then
//        TDateEditX(PageControl1.Pages[0].Controls[i]).ADDateAsText := TodaysDate
//      else
//        TDateEditX(PageControl1.Pages[0].Controls[i]).VSDateAsText :=
//          TodaysDateVS;
//    end;
  { ************************************************************************* }
//  SpeedButton3.Caption := gs_DateCaption;
//  SpeedButton2.Caption := gs_DateCaption;
//  try
//  ls_picpath:='c:\sisdata';
//  if not DirectoryExists(ls_picpath) then
//  CreateDir(ls_picpath);
//  WideShareDirectory(ls_picpath,'SisData','',false);
//  except
//  end;
//  with QueryBlank do
//  begin
//     Close;
//     DatabaseName:=gs_DatabaseName;
//     SQL.Clear;
//     SQL.Add('select userenv(''terminal'')terminal from dual');
//     Open;
//     gs_picpath:='\\'+FieldByName('terminal').AsString+'\sisdata';
//  end;
end;

procedure TForm_MainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    BB_CloseClick(Sender);
end;

procedure TForm_MainForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    keybd_event(9, 13, 0, 0);
end;

procedure TForm_MainForm.FormShow(Sender: TObject);
Var
  QryRelation: TQuery;
  DSRelation: TDataSource;
  QryDistrict: TQuery;
  DSDistrict: TDataSource;
  QryPackage:Tquery;
  DSPackage:TDataSource;
begin
  DSRelation := TDataSource.Create(nil);
  DSDistrict := TDataSource.Create(Nil);
  QryRelation := TQuery.Create(Nil);
  QryDistrict := TQuery.Create(nil);
  QryPackage:=TQuery.Create(nil);
  DSPackage:=TDataSource.Create(nil);
  with QryPackage do
  begin
    Active := false;
    DatabaseName := gs_DatabaseName;
    SQL.Clear;
    SQL.Add('Select * from PackageName Order by PackageName');
    Active := true;
    DSPackage.DataSet := QryPackage;
//    DBLCB_Package.ListSource := DSPackage;
//    DBLCB_Package.ListField := 'PackageName';
//    DBLCB_Package.KeyField := 'PackageNameID';
  end;
  { -------------------------------------------------------------------- }
  with QryRelation do
  begin
    Active := false;
    DatabaseName := gs_DatabaseName;
    SQL.Clear;
    SQL.Add('Select * from Relation Order by Relation');
    Active := true;
    DSRelation.DataSet := QryRelation;
//    DBLCB_NRelation.ListSource := DSRelation;
//    DBLCB_NRelation.ListField := 'Relation';
//    DBLCB_NRelation.KeyField := 'ID';
  end;
  { -------------------------------------------------------------------- }
  with QryDistrict do
  begin
    SQL.Clear;
    DatabaseName := gs_DatabaseName;
    SQL.Add('Select * from District Order by DistrictName');
    Active := true;
    DSDistrict.DataSet := QryDistrict;
//    DBLCB_NDistrict.ListSource := DSDistrict;
//    DBLCB_NDistrict.ListField := 'DistrictName';
//    DBLCB_NDistrict.KeyField := 'DistrictID';
  end;
  { -------------------------------------------------------------------- }
//  PageControl1.ActivePageIndex := 1;
//  BB_Save.Visible := false;
//  BB_New.Visible := true;
//  QueryList.Close;
//  QueryList.Open;
end;

procedure TForm_MainForm.Highlight(Sender: TObject; NName: String);
Var
  myshape: TShape;
  edit: TLabeledEdit;
  cb: TComboBox;
  dex: TDateEditX;
  dblcb: TDBLookupComboBox;
  Shape: TShape;

begin
  if NName = 'edit' then
  begin
    edit := Sender as TLabeledEdit;
//    myshape := Shape_Highlight;
    myshape.Left := edit.Left - 2;
    myshape.Top := edit.Top - 2;
    myshape.Width := edit.Width + 4;
    myshape.Pen.Color := $000080FF;
    myshape.Pen.Width := 2;
    myshape.Height := edit.Height + 4;
  end
  else if NName = 'shape' then
  begin
    Shape := Sender as TShape;
//    myshape := Shape_Highlight;
    myshape.Left := Shape.Left - 2;
    myshape.Top := Shape.Top - 2;
    myshape.Width := Shape.Width + 4;
    myshape.Pen.Color := $000080FF;
    myshape.Pen.Width := 2;
    myshape.Height := Shape.Height + 4;
  end
  else if NName = 'cb' then
  begin
    cb := Sender as TComboBox;
//    myshape := Shape_Highlight;
    myshape.Left := cb.Left - 2;
    myshape.Top := cb.Top - 2;
    myshape.Width := cb.Width + 4;
    myshape.Pen.Color := $000080FF;
    myshape.Pen.Width := 2;
    myshape.Height := cb.Height + 4;
  end
  else if NName = 'dblcb' then
  begin
    dblcb := Sender as TDBLookupComboBox;
//    myshape := Shape_Highlight;
    myshape.Left := dblcb.Left - 2;
    myshape.Top := dblcb.Top - 2;
    myshape.Width := dblcb.Width + 4;
    myshape.Pen.Color := $000080FF;
    myshape.Pen.Width := 2;
    myshape.Height := dblcb.Height + 4;
  end
  else if NName = 'dex' then
  begin
    dex := Sender as TDateEditX;
//    myshape := Shape_Highlight;
    myshape.Left := dex.Left - 2;
    myshape.Top := dex.Top - 2;
    myshape.Width := dex.Width + 4;
    myshape.Pen.Color := $000080FF;
    myshape.Pen.Width := 2;
    myshape.Height := dex.Height + 4;
  end;
  if myshape.Visible = false then
    myshape.Visible := true
  else if NName <> 'shape' then
    myshape.Visible := false;
end;

procedure TForm_MainForm.Image1Click(Sender: TObject);
begin
//  DatePopUp(Dex_MemberShip, Image1, '');
end;

procedure TForm_MainForm.Image2Click(Sender: TObject);
begin
//  DatePopUp(Dex_Dob, Image2, '');
end;

procedure TForm_MainForm.Image2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ZoomIn(Sender);
end;

procedure TForm_MainForm.Image3Click(Sender: TObject);
begin
//  DatePopUp(Dex_I1, Image3, 'up');
end;

procedure TForm_MainForm.Image4Click(Sender: TObject);
begin
//  DatePopUp(Dex_I2, Image4, 'up');
end;

procedure TForm_MainForm.Le_NameEnter(Sender: TObject);
begin
//  Highlight(Sender, 'edit');
end;

procedure TForm_MainForm.Le_NameExit(Sender: TObject);
begin
  Highlight(Sender, 'edit');
end;

procedure TForm_MainForm.LoadImage;
Var
     Qry:Tquery;
begin
     Qry:=TQuery.Create(nil);
     with Qry do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add('select MemberId from MemberImage Where MemberId='+IntToStr(pi_memberid));
          Open;
          if FieldByName('MemberId').AsString='' then exit;
     end;
     with SP_Load do
     begin
          DatabaseName:=gs_DatabaseName;
          Params[0].Value:=pi_memberid;
          ExecProc;
     end;
     Image_Main.Picture.LoadFromFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGEMAIN.JPG');
     Image_NMain.Picture.LoadFromFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGE_NOMINEE.JPG');
     Image_NRight.Picture.LoadFromFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGE_RIGHT.JPG');
     Image_NLeft.Picture.LoadFromFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGE_LEFT.JPG');
end;

procedure TForm_MainForm.MonthlyCalendarDblClick(Sender: TObject);
begin
  CalendarClick(DateXcomp);
end;

procedure TForm_MainForm.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
    PageControl1.ActivePageIndex := 1
  else
    PageControl1.ActivePageIndex := 0;
end;

procedure TForm_MainForm.SaveData;
begin
  { SaveMember(Option:String; MemberID,ShareCount,PackageID,MobileNo:Integer; RegdateVS,RegdateAD,MemberName,NationalityIdNo
    ,MemberName_Nepali,NationalityIDNo_Nepali,Address,Address_Nepali,EmailID,ContactNo,Profession,DobVS,GFatherName
    ,FatherName,FatherName_Nepali,SpouseName,N_Name,I1_Name,I1_Date,I2_Name,I2_Date,ModifyDate
    ,ModifyTime:String; N_RelationID,N_DistrictId,N_VDCID,N_WardNo,I1_MemberNo,I2_MemberNo,Modifyby:Integer); }
  if pb_isnew then
  begin
    pi_memberid := GetNewLongIntKeyValue('Member', 'MemberID');
    try
      SaveMember('save', pi_memberid, 100,DBLCB_Package.KeyValue, StrTofloat
          (Le_MobileNo.Text), TodaysDateVS, TodaysDate, Le_Name.Text,
        Le_NationalityIDNo.Text, Le_MemberName_Nepali.Text,
        Le_NationalityIDno_Nepali.Text, le_address.Text,
        le_Address_Nepali.Text, Le_EmailID.Text, le_contactno.Text,
        le_Profession.Text, Dex_Dob.VSDateAsText, Le_GFatherName.Text,
        le_FatherName.Text, le_FatherName_Nepali.Text, le_SpouseName.Text,
        le_N_Name.Text, le_I1_Name.Text, Dex_I1.ADDateAsText, le_I2_Name.Text,
        Dex_I2.ADDateAsText, TodaysDate, TodaysTime, DBLCB_NRelation.KeyValue,
        DBLCB_NDistrict.KeyValue, DBLCB_NVDC.KeyValue, StrToInt(le_NWardNo.Text)
          , StrToInt(le_I1_MemberNo.Text), StrToInt(le_I2_MemberNo.Text),
        gi_UserID);
    except
      SaveMember('save', pi_memberid, 100,DBLCB_Package.KeyValue, StrTofloat
          (Le_MobileNo.Text), TodaysDateVS, TodaysDate, Le_Name.Text,
        Le_NationalityIDNo.Text, Le_MemberName_Nepali.Text,
        Le_NationalityIDno_Nepali.Text, le_address.Text,
        le_Address_Nepali.Text, Le_EmailID.Text, le_contactno.Text,
        le_Profession.Text, Dex_Dob.VSDateAsText, Le_GFatherName.Text,
        le_FatherName.Text, le_FatherName_Nepali.Text, le_SpouseName.Text,
        le_N_Name.Text, le_I1_Name.Text, Dex_I1.ADDateAsText, le_I2_Name.Text,
        Dex_I2.ADDateAsText, TodaysDate, TodaysTime, DBLCB_NRelation.KeyValue,
        DBLCB_NDistrict.KeyValue, DBLCB_NVDC.KeyValue, StrToInt(le_NWardNo.Text)
          , StrToInt(le_I1_MemberNo.Text), StrToInt(le_I2_MemberNo.Text),
        gi_UserID);

    end;
  end
  else
  begin
    try
      SaveMember('update', pi_memberid, 100,DBLCB_Package.KeyValue, StrTofloat
          (Le_MobileNo.Text), Dex_MemberShip.VSDateAsText, Dex_MemberShip.ADDateAsText, Le_Name.Text,
        Le_NationalityIDNo.Text, Le_MemberName_Nepali.Text,
        Le_NationalityIDno_Nepali.Text, le_address.Text,
        le_Address_Nepali.Text, Le_EmailID.Text, le_contactno.Text,
        le_Profession.Text, Dex_Dob.VSDateAsText, Le_GFatherName.Text,
        le_FatherName.Text, le_FatherName_Nepali.Text, le_SpouseName.Text,
        le_N_Name.Text, le_I1_Name.Text, Dex_I1.ADDateAsText, le_I2_Name.Text,
        Dex_I2.ADDateAsText, TodaysDate, TodaysTime, DBLCB_NRelation.KeyValue,
        DBLCB_NDistrict.KeyValue, DBLCB_NVDC.KeyValue, StrToInt(le_NWardNo.Text)
          , StrToInt(le_I1_MemberNo.Text), StrToInt(le_I2_MemberNo.Text),
        gi_UserID);
    except
      SaveMember('update', pi_memberid, 100,DBLCB_Package.KeyValue, StrTofloat
          (Le_MobileNo.Text), Dex_MemberShip.VSDateAsText, Dex_MemberShip.ADDateAsText, Le_Name.Text,
        Le_NationalityIDNo.Text, Le_MemberName_Nepali.Text,
        Le_NationalityIDno_Nepali.Text, le_address.Text,
        le_Address_Nepali.Text, Le_EmailID.Text, le_contactno.Text,
        le_Profession.Text, Dex_Dob.VSDateAsText, Le_GFatherName.Text,
        le_FatherName.Text, le_FatherName_Nepali.Text, le_SpouseName.Text,
        le_N_Name.Text, le_I1_Name.Text, Dex_I1.ADDateAsText, le_I2_Name.Text,
        Dex_I2.ADDateAsText, TodaysDate, TodaysTime, DBLCB_NRelation.KeyValue,
        DBLCB_NDistrict.KeyValue, DBLCB_NVDC.KeyValue, StrToInt(le_NWardNo.Text)
          , StrToInt(le_I1_MemberNo.Text), StrToInt(le_I2_MemberNo.Text),
        gi_UserID);

    end;
    pb_isnew := true;
  end;
  // frm_msg.showmodal;
end;

procedure TForm_MainForm.SaveImage;
Var
     Qry:Tquery;
begin
     Qry:=TQuery.Create(nil);
     with Qry do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Delete from MemberImage Where MemberId='+IntToStr(pi_memberid));
          ExecSQL;
     end;
     with sp_save do
     begin
          DatabaseName:=gs_DatabaseName;
          Params[0].Value:=pi_memberid;
          ExecProc;
     end;
end;

procedure TForm_MainForm.SB_MMHFormClick(Sender: TObject);
begin
  Try
    Form_MMCH := TForm_MMCH.Create(nil);
    with Form_MMCH do
    begin
      pi_memberid := Form_MemberShip.pi_memberid;
      lbl_MemberNo.Caption := IntToStr(pi_memberid);
      Dex_MemberShip.ADDateAsText := QueryList.FieldByName('RegDateAD')
        .AsString;
      Le_Name.Text := QueryList.FieldByName('MemberName').AsString;
      le_Name_Nepali.Text := QueryList.FieldByName('MemberName_Nepali')
        .AsString;
      Le_PAddress.Text := QueryList.FieldByName('Address').AsString;
      le_Paddress_Nepali.Text := QueryList.FieldByName('Address_Nepali')
        .AsString;
      le_Profession.Text := QueryList.FieldByName('Profession').AsString;
      Le_TAddress.Text := QueryList.FieldByName('Temp_Address').AsString;
      Le_TAddress_Nepali.Text := QueryList.FieldByName('Temp_Address_Nepali')
        .AsString;
      le_Qualification.Text := QueryList.FieldByName('Qualification').AsString;
      Le_EmployeeName.Text := QueryList.FieldByName('EmployeeName').AsString;
      Memo_OtherExp.Text := QueryList.FieldByName('OtherExp').AsString;
      ShowModal;
    end;
  Finally
    Form_MMCH.Free;
  End;
end;

procedure TForm_MainForm.Shape1MouseEnter(Sender: TObject);
begin
  Highlight(Sender, 'shape');
end;

procedure TForm_MainForm.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image_Main.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Image_Main.Picture.SaveToFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGEMAIN.JPG');
  end;
end;

procedure TForm_MainForm.SpeedButton2Click(Sender: TObject);
begin
  ChangeDateSystem(Dex_MemberShip, SpeedButton2);
end;

procedure TForm_MainForm.SpeedButton3Click(Sender: TObject);
begin
  ChangeDateSystem(Dex_Today, SpeedButton3);
end;

procedure TForm_MainForm.SpeedButton4Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image_NRight.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Image_NRight.Picture.SaveToFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGE_RIGHT.JPG');
  end;
end;

procedure TForm_MainForm.SpeedButton5Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image_NLeft.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Image_NLeft.Picture.SaveToFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGE_LEFT.JPG');
  end;
end;

procedure TForm_MainForm.SpeedButton6Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image_NMain.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Image_NMain.Picture.SaveToFile(gs_picpath+'\'+IntToStr(pi_memberid)+'IMAGE_NOMINEE.JPG');
  end;
end;

procedure TForm_MainForm.timMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  ZoomOut(Sender);
  // Shape_Highlight.Visible:=false;
end;

procedure TForm_MainForm.ZoomIn(Sender: TObject);
Var
  Name: TImage;
begin
  Name := Sender as TImage;
  with Name do
  begin
    Height := 21;
    Width := 21;
    Stretch := true;
    AutoSize := false;
  end;
end;

procedure TForm_MainForm.ZoomOut(Sender: TObject);
Var
  i: Integer;
begin
  For i := 0 to PageControl1.Pages[0].ControlCount - 1 do
    if (PageControl1.Pages[0].Controls[i] is TImage) then
    begin
      if PageControl1.Pages[0].Controls[i] = Image_Main then
        exit;
      if PageControl1.Pages[0].Controls[i] = Image_NMain then
        exit;
      if PageControl1.Pages[0].Controls[i] = Image_NRight then
        exit;
      if PageControl1.Pages[0].Controls[i] = Image_NLeft then
        exit;
      TImage(PageControl1.Pages[0].Controls[i]).Height := 16;
      TImage(PageControl1.Pages[0].Controls[i]).Width := 16;
    end;
end;

end.
