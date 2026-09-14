unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //Form1
implementation

uses UnitUserWiseCollection, UnitDeptWiseReport, UnitNoofTestDone;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
     try
          FormUserWiseCollection:=TFormUserWiseCollection.Create(nil);
          FormUserWiseCollection.ShowModal;
     finally
          FormUserWiseCollection.Free;
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
     try
          FormDeptwiseCollection := TFormDeptwiseCollection.Create(nil);
          FormDeptwiseCollection.ShowModal;
     finally
          FormDeptwiseCollection.Free;
     end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
     try
          FormNoofTestDone:=TFormNoofTestDone.Create(nil);
          FormNoofTestDone.ShowModal;
     finally
          FormNoofTestDone.Free;
     end;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if KEY=27 then
     Close;
end;

end.
