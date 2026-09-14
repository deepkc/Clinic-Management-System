unit Camera;

interface

uses
  Windows, Classes, Controls, Forms, ExtCtrls, Frame_Video, Menus,
  StdCtrls;


type
  TForm_Camera = class(TForm)
    Panel_Right: TPanel;
    Frame_Video2: TFrame1;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Quit1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Frame_Video2SpeedButton_RunVideoClick(Sender: TObject);
  private
    { Private declarations }
    SplitterRatio : double;
  public
    { Public declarations }
  end;


var
  Form_Camera: TForm_Camera;


implementation

{$R *.dfm}







procedure TForm_Camera.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;
  Frame_Video2.Stop;
  Screen.Cursor := crdefault;
end;



procedure TForm_Camera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frame_Video2.Close;
end;

procedure TForm_Camera.FormShow(Sender: TObject);
begin
  Frame_Video2.InitFrame;
  Frame_Video2.Label_Cameras.Caption := 'Camera #1';
end;

procedure TForm_Camera.Frame_Video2SpeedButton_RunVideoClick(Sender: TObject);
begin
  Frame_Video2.SpeedButton_RunVideoClick(Sender);
end;

procedure TForm_Camera.Quit1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_Camera.FormCreate(Sender: TObject);
begin
  SplitterRatio := 0.5;
end;

end.
