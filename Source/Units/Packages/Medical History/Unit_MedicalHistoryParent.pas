unit Unit_MedicalHistoryParent;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Unit_MedicalHistoryFrame, Unit_MedicalHistoryInvestigation, Fxn,
     Dialogs, StdCtrls, ExtCtrls, Buttons;

type
     TForm_MedicalHistoryParent = class(TForm)
          Panel_Parent: TPanel;
          Panel2: TPanel;
          BB_Investigation: TBitBtn;
          BB_Close: TBitBtn;
          BB_Diagnosis: TBitBtn;
          BB_Treatment: TBitBtn;
          Panel1: TPanel;
          Panel3: TPanel;
          Label14: TLabel;
          lbl_Name: TLabel;
          Label1: TLabel;
          Lbl_Hosno: TLabel;
          Label7: TLabel;
          procedure BB_DiagnosisClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure BB_InvestigationClick(Sender: TObject);
          procedure BB_TreatmentClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
     private
          FrameCleared, b_Close: Boolean;
          { Private declarations }
          procedure clearFrame;
     public
          { Public declarations }
     end;

var
     Form_MedicalHistoryParent: TForm_MedicalHistoryParent;
     Frame_Diagnosis: Unit_MedicalHistoryFrame.TFrame_Diagnosis;
     Frame_Investigation: Unit_MedicalHistoryInvestigation.TFrame_Investigation;

implementation

{$R *.dfm}

procedure TForm_MedicalHistoryParent.BB_CloseClick(Sender: TObject);
begin
     b_Close := true;
     { if Tframe(Panel_Parent.Controls[0]).Name = 'Frame_Investigation' then
       begin
       if Frame_Investigation.PageControl1.ActivePageIndex = 1 then
       FrameCleared := false;
       end;
       if FrameCleared then
       Close
       else }
     clearFrame;
end;

procedure TForm_MedicalHistoryParent.BB_DiagnosisClick(Sender: TObject);
begin
     b_Close := false;
     try
          if Frame_Investigation.PageControl1.ActivePageIndex = 1 then
          begin
               Frame_Investigation.FreeFrame;
               Frame_Investigation.PageControl1.ActivePageIndex := 0;
          end;
     except
     end;
     clearFrame;
     Panel_Parent.BringToFront;
     Frame_Diagnosis := TFrame_Diagnosis.Create(nil);
     with Frame_Diagnosis do
     begin
          Parent := Panel_Parent;
          Align := alClient;
          PageControl1.ActivePageIndex := 0;
          Query_ICD.Close;
          Query_ICD.DatabaseName := gs_DatabaseName;
          Query_ICD.Open;
          FillGrid;
          Edit_Search.SetFocus;
          show;
     end;
     FrameCleared := false;
end;

procedure TForm_MedicalHistoryParent.BB_InvestigationClick(Sender: TObject);
begin
     b_Close := false;
     clearFrame;
     Panel_Parent.BringToFront;
     Frame_Investigation := TFrame_Investigation.Create(nil);
     with Frame_Investigation do
     begin
          Parent := Panel_Parent;
          Align := alClient;
          PageControl1.ActivePageIndex := 0;
          FillGrid;
          Edit_Search.SetFocus;
          show;
     end;
     FrameCleared := false;
end;

procedure TForm_MedicalHistoryParent.BB_TreatmentClick(Sender: TObject);
begin
     b_Close := false;
end;

procedure TForm_MedicalHistoryParent.clearFrame;
Var
     i: integer;
     Sender: TObject;
begin
     FrameCleared := false;
     try
          For i := 0 to Panel_Parent.ControlCount - 1 do
          begin
               if (Panel_Parent.Controls[i] is Tframe) then
               begin
                    if Tframe(Panel_Parent.Controls[i]).Name = 'Frame_Diagnosis' then
                    begin
                         if Frame_Diagnosis.PageControl1.ActivePageIndex = 1 then
                              Frame_Diagnosis.PageControl1.ActivePageIndex := 0
                         else
                         begin
                              Frame_Diagnosis.Free;
                              if b_Close then
                                   self.Close;
                         end;
                         // FrameCleared := true;
                    end
                    else if Tframe(Panel_Parent.Controls[i]).Name = 'Frame_Investigation' then
                    begin
                         if Frame_Investigation.PageControl1.ActivePageIndex = 1 then
                         begin
                              Frame_Investigation.FreeFrame;
                              Frame_Investigation.PageControl1.ActivePageIndex := 0;
                         end
                         else
                         begin
                              try
                                   Frame_Investigation.FreeFrame;
                              except

                              end;
                              Frame_Investigation.Free;
                              if b_Close then
                                   self.Close;
                         end;
                         // FrameCleared := true;
                    end;
               end;
          end;
     except
          self.Close;
     end;
end;

procedure TForm_MedicalHistoryParent.FormCreate(Sender: TObject);
begin
     Self.Caption:=Self.Caption+' User: '+gs_UserName;
end;

procedure TForm_MedicalHistoryParent.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
          keybd_event(VK_TAB, VK_RETURN, 0, 0);
     if Key = VK_ESCAPE then
          BB_CloseClick(Sender);

end;

procedure TForm_MedicalHistoryParent.FormShow(Sender: TObject);
begin
     Label1.Caption := Gs_PatientIdCaption;
     Lbl_Hosno.Caption := IntToStr(gi_PatientID);
     LoadPatientData(gi_PatientID);
     lbl_Name.Caption := Gs_PatientName;
     BB_DiagnosisClick(Sender);
end;

end.
