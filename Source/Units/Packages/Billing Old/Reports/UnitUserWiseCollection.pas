unit UnitUserWiseCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  fxn,dm,serverdate,
  Dialogs, StdCtrls, ExtCtrls, OleCtrls, DateEditXControl_TLB, ComCtrls, DBCtrls,
  DB, DBTables;

type
  TFormUserWiseCollection = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Btn_Preview: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    label2: TLabel;
    DateEditX1: TDateEditX;
    DateEditX2: TDateEditX;
    Chk_Detail: TCheckBox;
    QueryUserName: TQuery;
    procedure Btn_PreviewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUserWiseCollection: TFormUserWiseCollection;

implementation

uses UnitRepUserWiseCollection, UnitRepUserWiseDetail;

{$R *.dfm}

procedure TFormUserWiseCollection.Btn_PreviewClick(Sender: TObject);
begin
//ShowMessage(toda);
//dm.DM_Hospital.DB.StartTransaction

     if Chk_Detail.Checked <> True then
     begin
          with FormRepUserWiseCollection do
          begin
               FormRepUserWiseCollection:=TFormRepUserWiseCollection.Create(Self);
               try
                    With QueryMain do
                    begin
                         close;
                         DatabaseName:=gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add('select * from VW_User_Wise_Coll_Sum Order by CashBillBy');
                         Open;
                    end;

                    ShowModal;
               finally
                    Free;
               end;
          end;
     end
     else
     begin
          with FormRepUserWiseDetail do
          begin
               FormRepUserWiseDetail:=TFormRepUserWiseDetail.Create(SElf);
               try
                    ShowModal;
               finally
                    Free;
               end;
          end;
     end;
end;

Initialization
     RegisterClass(TFormUserWiseCollection);
Finalization
     UnRegisterClass(TFormUserWiseCollection);

end.
