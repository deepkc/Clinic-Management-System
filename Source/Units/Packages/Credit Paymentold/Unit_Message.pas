unit Unit_Message;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  Tfrm_Message = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Message: Tfrm_Message;

implementation

{$R *.DFM}

procedure Tfrm_Message.FormShow(Sender: TObject);
begin
        Timer1.Enabled:=tRUE;
end;

procedure Tfrm_Message.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        Timer1.Enabled:=False;
end;

procedure Tfrm_Message.Timer1Timer(Sender: TObject);
begin
        Close;
end;

end.
