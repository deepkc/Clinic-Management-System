unit Unit_Position;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Buttons;

type
  TForm_Position = class(TForm)
    Panel1: TPanel;
    BtnNew: TBitBtn;
    BitBtnSave: TBitBtn;
    BitBtnCancel: TBitBtn;
    PageControlPosition: TPageControl;
    TabSheet1: TTabSheet;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    EditSearch: TEdit;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    TabSheet2: TTabSheet;
    LabelMedicine: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    EditPosition: TEdit;
    QueryPosition: TOraQuery;
    DataSourcePosition: TDataSource;
    QueryProcess: TOraQuery;
    procedure BtnNewClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure PageControlPositionChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
      pi_NewPrimaryId,pi_OldPrimaryId:LongInt;
      lToAppend:Boolean;

      ps_OldPosition:String;    
    { Public declarations }
  end;

var
  Form_Position: TForm_Position;

implementation

uses Fxn, Unit_Message, DM, Unit_Master;

{$R *.DFM}

procedure TForm_Position.BtnNewClick(Sender: TObject);
begin
  IF PageControlPosition.ActivePageIndex=1 Then
  Begin
    PageControlPosition.ActivePageIndex:=0;
  End
  Else
  Begin
    PageControlPosition.ActivePageIndex:=1;
    EditPosition.SetFocus;
    EditPosition.Text:='';
    BitBtnSave.Enabled:=True;
    BtnNew.Enabled:=False;
    lToAppend:=True;
  End;
end;

procedure TForm_Position.BitBtnSaveClick(Sender: TObject);
begin
     If Trim(EditPosition.Text)=''Then
     Begin
          Messagedlg('Enter the Position type !',mtConfirmation,[mbOk,mbCancel],0);
          EditPosition.SetFocus;
          Exit;
     End;

     IF (ps_OldPosition='SERVICE') and (ps_OldPosition<>EditPosition.Text) Then
     Begin
          MessageDlg('Sorry You Cannot Change The Position Name "  SERVICE  "',mtWarning,[mbok],0);
          BitBtnCancelClick(Sender);
          Exit;
     End;

     if ltoappend then
     begin
          with QueryProcess Do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select * From Position where Position='+#39+EditPosition.Text+#39);
               open;
          End;

          IF QueryProcess.RecordCount > 0 Then
          Begin
               MessageDlg(' There already exists this Position type '+UpperCase(QueryProcess.FieldByName('Position').AsString)+' !',mtInformation,[mbok],0);
               Exit;
          End;
     end;

     if lToAppend then
     begin
          pi_NewPrimaryId:=GetMaxId('Position','PositionId');
          with QueryProcess do
          Begin
               Close;
               sql.Clear;
               sql.add(' Insert Into Position(PositionId,Position) Values');
               sql.add(' ('+IntToStr(pi_NewPrimaryId)+','+#39+EditPosition.Text+#39+')');
               ExecSQL;
          End;
     end
     else
     Begin
          with QueryProcess do
          Begin
               Close;
               sql.Clear;
               sql.add(' Update Position set Position='+#39+EditPosition.Text+#39);
               sql.add(' where PositionId='+IntToStr(pi_OldPrimaryId));
               ExecSQL;
          End;
          pi_NewPrimaryId:=pi_OldPrimaryId;
     End;
     Frm_Message.ShowModal;
     PageControlPosition.ActivePageIndex:=0;
     BitBtnSave.Enabled:=False;
     BtnNew.Enabled:=True;

     With QueryPosition do
     begin
          close;
          open;
          Locate('PositionId',pi_NewPrimaryId,[]);
     end;
end;

procedure TForm_Position.BitBtnCancelClick(Sender: TObject);
begin
  IF PageControlPosition.ActivePageIndex=0 Then
    Close
  Else
  Begin
      PageControlPosition.ActivePageIndex:=0;
      BtnNew.Enabled:=True;
      BitBtnSave.Enabled:=False;
      EditSearch.SetFocus;
  End;
end;

procedure TForm_Position.PageControlPositionChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
   IF PageControlPosition.ActivePageIndex=1 Then
   Begin
      PageControlPosition.ActivePageIndex:=0;
      BtnNew.Enabled:=True;
      BitBtnSave.Enabled:=False;
   End
   Else
   Begin
      BtnNewClick(Sender);
   End;
end;

procedure TForm_Position.Button1Click(Sender: TObject);
begin
   //dmhospital.ExtendedSearch('Position',QueryPosition,EditSearch);
end;

procedure TForm_Position.FormShow(Sender: TObject);
begin
   QueryPosition.Open;
   PageControlPosition.ActivePageIndex:=0;
   EditSearch.SetFocus;
end;

procedure TForm_Position.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=13 Then
  Keybd_Event(9,13,0,0);
  IF key=27 Then
  BitBtnCancelClick(Sender);
end;

procedure TForm_Position.EditSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#13 Then
   Button1Click(Sender);
end;

procedure TForm_Position.DBGrid1DblClick(Sender: TObject);
begin
     ltoappend:=False;
     PageControlPosition.ActivePageIndex:=1;
     pi_OldPrimaryId:=QueryPosition.FieldbyName('PositionId').AsInteger;
     EditPosition.Text:=QueryPosition.FieldbyName('Position').AsString;
     ps_OldPosition:=QueryPosition.FieldbyName('Position').AsString;
     BtnNew.Enabled:=False;
     BitBtnSave.Enabled:=True;
end;

end.
