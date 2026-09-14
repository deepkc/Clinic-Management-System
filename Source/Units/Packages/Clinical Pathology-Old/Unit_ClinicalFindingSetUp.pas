unit Unit_ClinicalFindingSetUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, DBTables,fxn,Unit_Master;

type
  TForm_FindingSetup = class(TForm)
    Panel1: TPanel;
    Btn_close: TBitBtn;
    BB_New: TBitBtn;
    btn_save: TBitBtn;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox_Active: TCheckBox;
    RichEdit_Title: TRichEdit;
    RichEdit_Finding: TRichEdit;
    Query_Listing: TQuery;
    Ds_Listing: TDataSource;
    Memo1: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Query_Blank: TQuery;
    procedure Btn_closeClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FindingSetupId,PbisNew:integer;
    title,finding,Isactive:string;
  end;

var
  Form_FindingSetup: TForm_FindingSetup;

implementation

uses Unit_ClinicalSetup;

{$R *.dfm}

procedure TForm_FindingSetup.BB_NewClick(Sender: TObject);
begin
     RichEdit_Title.Lines.Clear;
     RichEdit_Finding.Lines.Clear;
     PbisNew:=0;
end;

procedure TForm_FindingSetup.Btn_closeClick(Sender: TObject);
begin
     close;
     RefreshQuery(Form_ClinicalTest.Query_FindingTitle,gs_DatabaseName);
end;

procedure TForm_FindingSetup.btn_saveClick(Sender: TObject);

begin
     RichEdit_Title.Lines.SaveToFile('tt.txt');
     Memo1.Lines.Clear;
     Memo1.Lines.LoadFromFile('tt.txt');
     title:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
     RichEdit_Finding.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     finding:=trim(Memo1.Lines.Text);
     if CheckBox_Active.Checked=true then
     Isactive:='Y'
     else
     Isactive:='N';
     if trim(RichEdit_Title.Text)='' then
     MessageDlg('Title Cannot Be Blank',mtInformation,[mbok],0);

     if trim(RichEdit_Finding.Text)='' then
     MessageDlg('Finding Cannot Be Blank',mtInformation,[mbok],0);

     if (trim(RichEdit_Title.Text)<>'') and (trim(RichEdit_Finding.Text)<>'')  then
     begin
          if PbisNew=0 then
          begin
               if (CheckDuplicateDataFrmTmp('clinical_findingsetup','findingtitle',gs_DatabaseName,RichEdit_Title.Text)=false) and (CheckDuplicateDataFrmTmp('clinical_findingsetup','default_finding',gs_DatabaseName,RichEdit_Finding.Text)=false) then
               SaveFindingSetup(trim(RichEdit_Title.Text),title,trim(RichEdit_Finding.Text),finding,Isactive);
          end
          else
          begin
               UpdateFindingSetup(FindingSetupId,RichEdit_Title.Text,title,RichEdit_Finding.Text,finding,Isactive);
               pbisnew:=0;
          end;

          query_listing.close;
          query_listing.open;

          RichEdit_Title.Lines.Clear;
          RichEdit_Finding.Lines.Clear;
          DeleteFile('tt.txt');
     end;


end;

procedure TForm_FindingSetup.DBGrid1DblClick(Sender: TObject);
begin
     RichEdit_Title.Lines.Clear;
     RichEdit_Finding.Lines.Clear;
     Memo1.Lines.Clear;
     FindingSetupId:=Query_Listing.FieldByName('FindingSetupId').AsInteger;
     Memo1.lines.Text:=Query_Listing.FieldByName('FindingTitle_rich').AsString;
     Memo1.lines.SaveToFile('updt.txt');
     RichEdit_Title.Lines.LoadFromFile('updt.txt');
     //RichEdit_Title.lines.Text:=Memo1.Lines.Text;
     memo1.Clear;
     //RichEdit_Title.lines.Text:=Memo1.Lines.Text;
     Memo1.Lines.Text:=Query_Listing.FieldByName('Default_Finding_rich').AsString;
     Memo1.Lines.SaveToFile('updt.txt');
     RichEdit_Finding.Lines.LoadFromFile('updt.txt');

     if Query_Listing.FieldByName('isactive').AsString='Y' then
     CheckBox_Active.Checked:=true
     else
     CheckBox_Active.Checked:=false;

     PbisNew:=1;
     DeleteFile('updt.txt');
end;

procedure TForm_FindingSetup.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
      if Query_Listing.FieldByName('isactive').AsString='N' then
     DBGrid1.Canvas.Font.Color:=clGray
     else
     DBGrid1.Canvas.Font.Color := clBlack;
     DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm_FindingSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=27 then
     Btn_closeClick(Sender);
end;

procedure TForm_FindingSetup.FormShow(Sender: TObject);
begin
     Query_listing.close;
     Query_Listing.open;
     PbisNew:=0;
     CheckBox_Active.Checked:=true;
end;

procedure TForm_FindingSetup.SpeedButton1Click(Sender: TObject);
begin
     with query_blank do
     begin
          close;
          databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add('delete from clinical_findingsetup where findingsetupid='+inttostr(Query_Listing.FieldByName('findingsetupid').AsInteger));
          execsql;
     end;
     Query_Listing.Close;
     Query_Listing.Open;
end;

end.
