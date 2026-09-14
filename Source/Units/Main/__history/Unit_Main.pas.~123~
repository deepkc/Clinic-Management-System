unit Unit_Main;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, Unit_FramePanel, ShellApi, pngimage,
     NetShare,
     DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,ServerDate,Unit_MasterKeyLicense
     ,EncryptDecrypt, GIFImg;

type
          TForm_Main = class(TForm)
          Panel2: TPanel;
          Panel_Login: TPanel;
          Label2: TLabel;
          LBL_HOSNAME: TLabel;
          Image2: TImage;
          RB2: TRadioButton;
          RB1: TRadioButton;
          Panel_Main: TPanel;
          SpeedButton1: TButton;
          SpeedButton2: TButton;
          Image1: TImage;
          Query1: TOraQuery;
          lbl_Address: TLabel;
    Panel_Loginbox: TPanel;
    Image5: TImage;
    Label12: TLabel;
    Label20: TLabel;
    BB_LoginMain: TSpeedButton;
    EditUsername: TEdit;
    EditPassword: TEdit;
    Panel_ChangePassword: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image7: TImage;
    SpeedButton3: TSpeedButton;
    BB_Ok: TSpeedButton;
    Edit_Username: TEdit;
    Edit_Password: TEdit;
    Edit_Npassword: TEdit;
    Edit_Rpassword: TEdit;
    Image6: TImage;
    Imagebnb: TImage;
    OraQuery_SystemLicense: TOraQuery;
    Image_ExpiredClock: TImage;
    Image_ExpiredSlogan: TImage;
    lbl_username: TLabel;
    Label5: TLabel;
    lbl_logindatetime: TLabel;
    Label_Logoff: TLabel;
          procedure SpeedButton2Click(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure Label5Click(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure BB_LoginMainClick(Sender: TObject);
          procedure Label_LogOffClick(Sender: TObject);
          procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
          procedure FormShow(Sender: TObject);
          procedure EditUsernameChange(Sender: TObject);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure EditPasswordKeyPress(Sender: TObject; var Key: Char);
          procedure Label10Click(Sender: TObject);
          procedure BB_CancelClick(Sender: TObject);
          procedure BB_OkClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure LBL_HOSNAMEClick(Sender: TObject);
    procedure Label12Click(Sender: TObject);
     private
          M: TWMNCHitTest;
          focus: boolean;
          PanelLoaded: boolean;
          { Private declarations }
          Procedure LoadPanel;
          procedure WMNCHitTest(var M: TWMNCHitTest);
          message WM_NCHITTEST;
          procedure MakeRounded(Control: TWinControl);
          procedure CreateParams(var Params: TCreateParams); override;
          procedure DrawParentImage(Control: TControl; Dest: TCanvas);
          Function Login(UserName, Password: String): boolean;
     public
      ps_validateupto:String;
          { Public declarations }
     end;

var
     Form_Main: TForm_Main;
     FrameMain: Unit_FramePanel.TFrame_Panel;

Const
     BB_1_Left = 25;
     BB_1_Top = 15;
     BB_1_Width= 152;
     BB_1_Height= 130;

     BB_2_Left = 181;
     BB_2_Top = 15;
     BB_2_Width= 152;
     BB_2_Height= 130;

     BB_3_Left = 337;
     BB_3_Top = 15;
     BB_3_Width= 152;
     BB_3_Height= 130;

     BB_4_Left = 492;
     BB_4_Top = 15;
     BB_4_Width= 152;
     BB_4_Height= 130;

     BB_5_Left = 25;
     BB_5_Top = 197;
     BB_5_Width= 152;
     BB_5_Height= 57;

     BB_6_Left = 181;
     BB_6_Top = 197;
     BB_6_Width= 152;
     BB_6_Height= 57;

     BB_7_Left = 337;
     BB_7_Top = 197;
     BB_7_Width= 152;
     BB_7_Height= 57;

     BB_8_Left = 492;
     BB_8_Top = 197;
     BB_8_Width= 152;
     BB_8_Height= 57;

     // Lower Buttons 2nd row

     BB_RepDispatch_Left = 25 ;
     BB_RepDispatch_Top = 152;
     BB_RepDispatch_Width = 152;
     BB_RepDispatch_Height = 130;

     BB_Setup_Left = 492 ;
     BB_Setup_Top = 152;
     BB_Setup_Width = 152;
     BB_Setup_Height = 130;

     BB_Analysis_Left = 337 ;
     BB_Analysis_Top = 152;
     BB_Analysis_Width = 152;
     BB_Analysis_Height = 130;

     BB_Report_Left = 181 ;
     BB_Report_Top = 152;
     BB_Report_Width = 152;
     BB_Report_Height = 130;




implementation

uses Fxn, Change, DM;
{$R *.dfm}
{ TForm_Main }

procedure TForm_Main.BB_CancelClick(Sender: TObject);
begin
     Panel_ChangePassword.Visible := false;
     Panel_Loginbox.Visible := true;
end;

procedure TForm_Main.BB_LoginMainClick(Sender: TObject);
Var
     Queryblank: TOraQuery;
     Query1:TOraQuery;
begin
// if (gs_MacID = '70-71-BC-06-18-63') or (gs_MacID = '00-26-C7-6D-4F-1E') then
// begin
//     if gi_compileValue = 4 then
//     begin
//          EditUsername.Text := 'midas';
//          EditPassword.Text := 'delphi10';
//     end;
     // end;
     CreateQuery;
     if not Login(EditUsername.Text, EditPassword.Text) then
     begin
          EditUsername.SetFocus;
          exit;
     end;

     NCount := 0; // remove comment to check username and password
     AnimateWindow(Panel_Login.Handle, 200, AW_VER_NEGATIVE OR AW_SLIDE OR AW_HIDE);
//     if gi_compileValue=4 then
//     Panel_Login.Hide;
     LoadPanel;
     lbl_username.Caption := 'Welcome   : ' + gs_UserName;// + #13+ #13 + 'Login time : ' + TimeToStr(now);
     lbl_logindatetime.Visible:=True;
     lbl_logindatetime.Caption:='Login time : '+ TimeToStr(now);
     if not DirectoryExists(ExtractFilePath(Application.ExeName)+gs_UserName  + 'Temp') then
          CreateDir(ExtractFilePath(Application.ExeName) + gs_UserName + 'Temp');

     gs_temppath := ExtractFilePath(Application.ExeName) + gs_UserName + 'Temp';
     try
          gs_picpath := 'c:\sisdata';
          if not DirectoryExists(gs_picpath) then
               CreateDir(gs_picpath);
          // WideShareDirectory(gs_picpath, 'SisData', '', false);
     except
     end;

     gs_UserDepId:='';
     Queryblank := TOraQuery.Create(nil);
     with Queryblank do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('SELECT SERVERIP FROM SERVERIP');
          Open;
          gs_picpath := '\\' + FieldByName('SERVERIP').AsString + '\sisdata';
          SQL.Clear;
          SQL.Add('Select DepId from lab_useraccessibledepartment Where UserId='+IntToStr(gi_UserID));
          Open;
          while not eof do
          begin
               if gs_UserDepId='' then
                    gs_UserDepId:=FieldByName('DepId').AsString
               else
                    gs_UserDepId:=gs_UserDepId+','+FieldByName('DepId').AsString;
               Next;
          end;
     end;
     //....................Laboratory  Regulation ....................//
     gs_ReportFooterRegulation:='';
     gb_AutoCalculate:=False;
     try
       Query1:=TOraQuery.Create(nil);

       //...........Report Footer  Globally Initialize......//
       with Query1 do
       begin
         close;
         Session:=DM_Hospital.DB;
         sql.Clear;
         sql.Add('select * from LARE_LabRegulation where LARE_RegulationType=''Report Footer''');
         Open;
       end;
       if Query1.FieldByName('LARE_Regulation').AsString='S' then  //Manual Setup Wise
         gs_ReportFooterRegulation:='S'
       else if Query1.FieldByName('LARE_Regulation').AsString='C' then//CheckBox Wise
         gs_ReportFooterRegulation:='C'
       else if Query1.FieldByName('LARE_Regulation').AsString='U' then //User Wise
         gs_ReportFooterRegulation:='U'
       else
         gs_ReportFooterRegulation:='';
       //*************Report Footer End *********************//

       //............... Auto Calculation initialize ......... //
       with Query1 do
       begin
         close;
         Session:=DM_Hospital.DB;
         sql.Clear;
         sql.Add('select * from LARE_LabRegulation where LARE_RegulationType=''Auto Calculation''');
         Open;
       end;
       if Query1.FieldByName('LARE_Regulation').AsString='Y' then  //Manual Setup Wise
          gb_AutoCalculate:=True
       else
          gb_AutoCalculate:=False;
       //**********Auto Calculation End ************************//
     finally
        Query1.Free;
     end;
     //***********************Lab Regulation End******************************//


end;

procedure TForm_Main.BB_OkClick(Sender: TObject);
Var
     Qry: TOraQuery;
     newpassword: string;
begin
     if Edit_Npassword.Text <> Edit_Rpassword.Text then
     begin
          ShowMessage('Password doesn''t match');
          exit;
     end;
     if not Login(Edit_Username.Text, Edit_Password.Text) then
     begin
          // ShowMessage('Password doesn''t match');
          exit;
     end;
     Qry := TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          newpassword := Change.EncodePWDEx(Edit_Npassword.Text, 0, 5);
          SQL.Add('Update lab_Usermain set Upassword=' + #39 + newpassword + #39);
          SQL.Add('Where UserID=' + IntToStr(gi_UserID));
          ExecSQL;
          ShowMessage('Password Successfully changed');
     end;
     BB_CancelClick(Sender);
     EditUsername.SetFocus;
end;

procedure TForm_Main.CreateParams(var Params: TCreateParams);
const
     CS_DROPSHADOW = $00020000;
begin
     inherited;
     Params.WindowClass.Style := Params.WindowClass.Style or CS_DROPSHADOW;
end;

procedure TForm_Main.DrawParentImage(Control: TControl; Dest: TCanvas);
var
     SaveIndex: Integer;
     DC: HDC;
     Position: TPoint;
begin
     with Control do
     begin
          if Parent = nil then
               exit;
          DC := Dest.Handle;
          SaveIndex := SaveDC(DC);
{$IFDEF DFS_COMPILER_2}
          GetViewportOrgEx(DC, @Position);
{$ELSE}
          GetViewportOrgEx(DC, Position);
{$ENDIF}
          SetViewportOrgEx(DC, Position.X - Left, Position.Y - Top, nil);
          IntersectClipRect(DC, 0, 0, Parent.ClientWidth, Parent.ClientHeight);
          Parent.Perform(WM_ERASEBKGND, DC, 0);
          Parent.Perform(WM_PAINT, DC, 0);
          RestoreDC(DC, SaveIndex);
     end;

end;

procedure TForm_Main.EditPasswordKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          BB_LoginMainClick(Sender);
end;

procedure TForm_Main.EditUsernameChange(Sender: TObject);
begin
     EditPassword.Enabled := true;
end;

procedure TForm_Main.FormCreate(Sender: TObject);
Var
     Queryblank: TOraQuery;
begin
     MakeRounded(Form_Main);
     MakeRounded(Panel_Login);
     MakeRounded(Panel_Main);
     Panel_Login.Visible := true;
     Panel_Login.BringToFront;
     SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
     if gi_compileValue=12 then
     LBL_HOSNAME.Caption := gs_loginname
     else
     LBL_HOSNAME.Caption := gs_HospitalName;
     // DrawParentImage(label2,label4.canvas);
     if gi_compileValue=11 then    //nepal cancer
     begin
          Image6.Visible:=False;
          Image2.Visible:=True;
          imagebnb.visible:=False;
     end
     else if gi_compileValue=12 then    //bnb
     begin
          Image6.Visible:=False;
          Image2.Visible:=False;
          imagebnb.visible:=True;
     end
     else
     begin
          Image6.Visible:=True;
          Image2.Visible:=False;
          imagebnb.visible:=False;
     end;

   //  (Image_ExpiredClock.Picture.Graphic as TGIFImage).Animate := True;
    // ( Image_ExpiredClock.Picture.Graphic as TGIFImage ).AnimationSpeed:= 80;
end;

procedure TForm_Main.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if not PanelLoaded then
          exit;
    // if Key = vk_F1 then
    //      FrameMain.SB_FormsCertificateClick(Sender);
     //if Key = Vk_F2 then
     //     FrameMain.SB_CashClick(Sender);
     if Key = Vk_F3 then
          FrameMain.Sb_SampleCollectionClick(Sender);
     if Key = Vk_F4 then
          FrameMain.SB_PathologyClick(Sender);
     if Key = Vk_F7 then
          FrameMain.SB_ReportClick(Sender);
     if Key = VK_F11 then
          FrameMain.SB_SetupClick(Sender);
     if Key = vk_escape then
          FrameMain.BB_MainBackClick(Sender);
     if Key = Vk_F5 then
          FrameMain.BB_VerificationClick(Sender);
     if Key = Vk_F6 then
          FrameMain.BB_BroadcastClick(Sender);
     if Key = Vk_F10 then
          FrameMain.SB_AnalysisClick(Sender);
end;

procedure TForm_Main.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_Main.FormShow(Sender: TObject);
Var
     Key: Char;
begin
     lbl_username.Caption := '';
     lbl_logindatetime.Caption:='';
     EditUsername.SetFocus;
     EditPassword.Enabled := false;
     if gi_compileValue=12 then
     LBL_HOSNAME.Caption := gs_loginname
     else
     LBL_HOSNAME.Caption := gs_HospitalName;
     lbl_Address.Caption := gs_HospitalAddress;
//     if gi_compileValue=4 then
//     BB_LoginMainClick(Sender);

     if gi_compilevalue in [7,11,14,16] then
     begin
         LBL_HOSNAME.Font.Size:=10;
     end
     else if gi_compileValue=8  then
          begin
               LBL_HOSNAME.Font.Size:=9;
          end
     else if gi_compileValue=564 then
          begin
               LBL_HOSNAME.Font.Size:=8;
          end;


     try
          with OraQuery_SystemLicense do
          begin
               Close;
               Session:=DM_Hospital.DB;
               sql.Clear;
               sql.Add('select * from lb_syls_systemlicense');
               open;
          end;
     except
           ShowMessage('License Key Not Found !!!');
           close;
           Exit;
     end;

    // ps_validateupto:=(DecryptStr(OraQuery_SystemLicense.FieldByName('SYSTEMLICENSE').AsString,Gs_EncryptionKey));
   //  ps_validateupto:=Copy(ps_validateupto,0,10);
      if OraQuery_SystemLicense.fieldbyname('SYSTEMLICENSE').asString='' then
     begin
          ShowMessage('License Key Not Found !!!'+char(13)+'Please Contact Your System Vendor !!!');
          close;
          Exit;
     end;

     if (OraQuery_SystemLicense.RecordCount>0) AND  (OraQuery_SystemLicense.fieldbyname('SYSTEMLICENSE').asString<>'') then
     begin
          ps_validateupto:=(DecryptStr(OraQuery_SystemLicense.FieldByName('SYSTEMLICENSE').AsString,Gs_EncryptionKey));
          ps_validateupto:=Copy(ps_validateupto,5,10);

          try
               with OraQuery_SystemLicense do
               begin
                    close;
                    session:=DM_Hospital.DB;
                    sql.Clear;
                    sql.Add('select to_date('''+ps_validateupto+''',''YYYY/MM/DD'')-trunc(sysdate) as Noofdays from dual');
                    sql.savetofile('C:\IsExpired.txt');
                    open;
               end;
          except
                ShowMessage('Invalid License Key !!!'+char(13)+'Please Contact Your System Vendor !!!');
                Close;
                Exit;
          end;
          gb_LicenseExpired:=false;
          gb_LicenseExpiredMidas:=false;
          if  OraQuery_SystemLicense.FieldByName('Noofdays').AsInteger<0 then
          begin
               Label2.Visible:=false;
               LBL_HOSNAME.Visible:=false;
               lbl_Address.Visible:=False;
               Image_ExpiredClock.Visible:=True;
               Image_ExpiredSlogan.Visible:=True;
               Image6.Visible:=false;
          end
          else
          begin
               Label2.Visible:=true;
               LBL_HOSNAME.Visible:=true;
               lbl_Address.Visible:=true;
            //   Image_ExpiredClock.Visible:=false;
               Image_ExpiredSlogan.Visible:=false;

          end;
     end
     else
     begin
          ShowMessage('Invalid License Key !!!'+char(13)+'Please Contact Your System Vendor.');
          close;
          exit;
     end;


end;

procedure TForm_Main.Label_LogOffClick(Sender: TObject);
begin
     FrameMain.Free;
     AnimateWindow(Panel_Login.Handle, 200, AW_VER_NEGATIVE OR AW_SLIDE OR AW_ACTIVATE);
     Label_Logoff.Visible := false;
     RB1.Visible := false;
     RB2.Visible := false;
     EditUsername.Clear;
     EditPassword.Clear;
     lbl_username.Caption := '';
     lbl_logindatetime.Caption:='';
     EditUsername.SetFocus;
     FormShow(sender);
end;

procedure TForm_Main.LBL_HOSNAMEClick(Sender: TObject);
begin
    if gi_compileValue=12 then
     LBL_HOSNAME.Caption := gs_loginname
     else
     LBL_HOSNAME.Caption := gs_HospitalName;
end;

procedure TForm_Main.Label10Click(Sender: TObject);
begin
     Panel_Loginbox.Visible := false;
     Panel_ChangePassword.Visible := true;
     Panel_ChangePassword.Left := Panel_Loginbox.Left;
     Panel_ChangePassword.Top := Panel_Loginbox.Top;
     Edit_Username.SetFocus;
end;

procedure TForm_Main.Label12Click(Sender: TObject);
begin
     Panel_Loginbox.Visible := false;
     Panel_ChangePassword.Visible := true;
     Panel_ChangePassword.Left := Panel_Loginbox.Left;
     //Panel_ChangePassword.Top := Panel_Loginbox.Top;
     Edit_Username.SetFocus;
end;

procedure TForm_Main.Label5Click(Sender: TObject);
begin
     ShellExecute(self.WindowHandle, 'open', 'www.midas.com.np', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm_Main.LoadPanel;
begin
     Label_Logoff.Visible := true;
     RB1.Visible := False;
     RB2.Visible := False;
     RB1.Checked := true;
//     if gi_compileValue=4 then
//     Panel_Main.BringToFront;
     FrameMain := TFrame_Panel.Create(Nil);
     with FrameMain do
     begin
          Parent := Panel_Main;
          PanelMain.Left := -3;
          Top := 1;
          Panel_Setup.Left := 665;
          Panel_Setup.Top := 9;
          Panel_Report.Left := 665;
          Panel_Report.Top := 9;
          CategoryPanelGroup1.CollapseAll;
          show;
          PanelLoaded := true;
          if gi_compileValue in [1,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28] then
          begin
               SB_FormsCertificate.Visible := false;
               SB_Cash.Visible := false;
               BB_Broadcast.Caption := '';
               //SB_Reports.Visible := false;

               SPB_PatientAdministration.Left:= BB_1_Left;
               SPB_PatientAdministration.Top := BB_1_Top;
               SPB_PatientAdministration.Height := BB_1_Height;
               SPB_PatientAdministration.Width := BB_1_Width;
               Sb_SampleCollection.Left := BB_2_Left;
               Sb_SampleCollection.Top := BB_2_Top;
               Sb_SampleCollection.Width := BB_2_Width;
               Sb_SampleCollection.Height := BB_2_Height;
               SB_Pathology.Left := BB_3_Left;
               SB_Pathology.Width := BB_3_Width;
               SB_Pathology.Height := BB_3_Height;
               SB_Pathology.Top := BB_3_Top;
               BB_Verification.Left := BB_4_Left;
               //BB_Verification.Width := BB_3_Width;
               BB_Verification.Height := BB_3_Height;
               BB_Verification.Top := BB_4_Top;
               BB_Broadcast.Left := 25;
               BB_Broadcast.Height := BB_4_Height;
               BB_Broadcast.Width := BB_4_Width;
               BB_Broadcast.Top := 135;//BB_4_Top;
               BB_Verification.Layout := blGlyphTop;
               BB_Broadcast.Layout := blGlyphTop;
               BB_Verification.Glyph:=Image_Verify.Picture.Bitmap;
               BB_Broadcast.Glyph:=Image_Report.Picture.Bitmap;

               BB_Broadcast.Left := BB_RepDispatch_Left;
               BB_Broadcast.Top := BB_RepDispatch_Top;
               BB_Broadcast.Width := BB_RepDispatch_Width;
               BB_Broadcast.Height := BB_RepDispatch_Height;

               SB_Setup.Left := BB_Setup_Left;
               SB_Setup.Top := BB_Setup_Top;
               SB_Setup.Width := BB_Setup_Width;
               SB_Setup.Height := BB_Setup_Height;

               SB_Analysis.Left := BB_Analysis_Left;
               SB_Analysis.Top := BB_Analysis_Top;
               SB_Analysis.Width :=BB_Analysis_Width;
               SB_Analysis.Height :=BB_Analysis_Height;

               SB_Report.Left := BB_Report_Left;
               SB_Report.Top :=BB_Report_Top;
               SB_Report.Width :=BB_Report_Width;
               SB_Report.Height := BB_Report_Height;

               // BB_Broadcast.Left:=335;
               // BB_Verification.Left:=201;
               // Sb_SampleCollection.Left:=201;
          end
          else
          begin
               SB_FormsCertificate.Visible := false;
               SB_Cash.Visible := false;
               BB_Broadcast.Caption := 'Report &Dispatch [F6]';
               //SB_Reports.Visible := false;

               Sb_SampleCollection.Left := BB_1_Left;
               Sb_SampleCollection.Top := BB_1_Top;
               SB_Pathology.Left := BB_2_Left;
               SB_Pathology.Top := BB_2_Top;
               BB_Verification.Left := BB_3_Left;
               BB_Verification.Width := BB_3_Width;
               BB_Verification.Height := BB_3_Height;
               BB_Verification.Top := BB_3_Top;
               BB_Broadcast.Left := BB_4_Left;
               BB_Broadcast.Height := BB_4_Height;
               BB_Broadcast.Width := BB_4_Width;
               BB_Broadcast.Top := BB_4_Top;
               BB_Verification.Layout := blGlyphTop;
               BB_Broadcast.Layout := blGlyphTop;
               BB_Verification.Glyph:=Image_Verify.Picture.Bitmap;
               BB_Broadcast.Glyph:=Image_Report.Picture.Bitmap;
          end;
     end;
end;

function TForm_Main.Login(UserName, Password: String): boolean;
Var
     Pusername, Ppassword: String;
Begin
     Pusername := UserName;
     Ppassword := Password;

     IF CheckUser(Pusername, Ppassword) = true Then
          Result := true
     Else
     Begin
          IF (NCount <= 4) Then
          begin
               ShowMessage('Please Check your username or password');
               Result := false;
          end;

          IF NCount > 4 Then
          begin
               ShowMessage('Maximum number of login attempts[4] exceeded!');
               Form_Main.Close;
          End;
     End;

     if  (OraQuery_SystemLicense.FieldByName('Noofdays').AsInteger<=7) and (OraQuery_SystemLicense.FieldByName('Noofdays').AsInteger>=0) then
     begin
         ShowMessage('Please Contact Your Software Vendor for the License Updation !!'+char(13)+'Your License Will Expire in '+OraQuery_SystemLicense.FieldByName('Noofdays').AsString+' Days');
     end
     else
     if  (OraQuery_SystemLicense.FieldByName('Noofdays').AsInteger<0) AND (Result= true) then
     begin

          gb_LicenseExpired:=True;
          ShowMessage('Your License has Expired !!!!'+char(13)+'Please Contact Your Software Vendor for the License updation');
          if gi_UserID=1 then
          begin
                try
                     gs_CalledFromMasterkey:='SIGNUP';
                     Form_MasterKeyLicense:=TForm_MasterKeyLicense.Create(nil);
                     Form_MasterKeyLicense.showmodal;
                finally
                     Form_MasterKeyLicense.free;
                end;
          end;

     end;

end;

procedure TForm_Main.MakeRounded(Control: TWinControl);
var
     R: TRect;
     Rgn: HRGN;
begin
     with Control do
     begin
          R := ClientRect;
          Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
          Perform(EM_GETRECT, 0, lParam(@R));
          InflateRect(R, -5, -5);
          Perform(EM_SETRECTNP, 0, lParam(@R));
          SetWindowRgn(Handle, Rgn, true);
          Invalidate;
     end;
end;

procedure TForm_Main.SpeedButton1Click(Sender: TObject);
begin
     Form_Main.WindowState := wsMinimized;
end;

procedure TForm_Main.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
     focus := true;
end;

procedure TForm_Main.SpeedButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TForm_Main.WMNCHitTest(var M: TWMNCHitTest);
Var
     X, Y: Smallint;
begin
     inherited;
     { If the client has been clicked, make Windows believe }
     { it was the caption bar that was clicked on }
     // if M.Result = htClose then M.Result := htNowhere;
     if M.Result = htClient then
          M.Result := htCaption;
end;

end.
