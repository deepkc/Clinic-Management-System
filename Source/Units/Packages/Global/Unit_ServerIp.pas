unit Unit_ServerIp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm_ServerIp = class(TForm)
    Label1: TLabel;
    Edit_Ip: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit_Sid: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_ServerIp: TForm_ServerIp;

implementation

uses Fxn;

{$R *.dfm}

procedure TForm_ServerIp.Button1Click(Sender: TObject);
begin
     gs_Host:=Edit_Ip.Text;
     Gs_Sid:=Edit_Sid.Text;
     Close;
end;

procedure TForm_ServerIp.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     keybd_event(9,13,0,0);
end;

end.
