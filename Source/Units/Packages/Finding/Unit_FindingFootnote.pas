unit Unit_FindingFootnote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Fxn,dm,
  Dialogs, StdCtrls, CheckLst, Buttons, ExtCtrls, ComCtrls;

type
  TForm_FindingFootnote = class(TForm)
    Label4: TLabel;
    RE_Footnote: TRichEdit;
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    Clb_Footnote: TCheckListBox;
    procedure BB_CloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Clb_FootnoteClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFootnote;
  public
    { Public declarations }
  end;

var
  Form_FindingFootnote: TForm_FindingFootnote;

implementation

{$R *.dfm}

procedure TForm_FindingFootnote.BB_CloseClick(Sender: TObject);
begin
     hide;
end;

procedure TForm_FindingFootnote.BB_SaveClick(Sender: TObject);
Var
     i:integer;
begin
     for I := 0 to Clb_Footnote.Items.Count  - 1 do
     begin
          if Clb_Footnote.State[i]=cbChecked  then
          AddRemoveFootnote(gi_PatientID,StrToInt(Arr_TestIDForFooter[i,1]),1)
          else
          AddRemoveFootnote(gi_PatientID,StrToInt(Arr_TestIDForFooter[i,1]),0)
     end;
     ShowDoneMessage;
     Hide;
end;

procedure TForm_FindingFootnote.Clb_FootnoteClick(Sender: TObject);
begin
     LoadFootnoteinRichBox(StrToInt(Arr_TestIDForFooter[Clb_Footnote.ItemIndex,0]),RE_Footnote);
end;

procedure TForm_FindingFootnote.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

procedure TForm_FindingFootnote.FormShow(Sender: TObject);
begin
     LoadFootnote;
end;

procedure TForm_FindingFootnote.LoadFootnote;
Var
     i:integer;
begin
     for i := 0 to Clb_Footnote.Items.Count - 1 do
     begin
          if CheckFootnoteStatus(StrToInt(Arr_TestIDForFooter[i,1])) then
          Clb_Footnote.State[i]:=cbChecked
          else
          Clb_Footnote.State[i]:=cbUnchecked;
     end;
end;

end.
