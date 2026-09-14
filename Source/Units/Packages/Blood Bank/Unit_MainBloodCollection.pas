unit Unit_MainBloodCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TForm_MainBloodCollection = class(TForm)
    MainMenu1: TMainMenu;
    Collection1: TMenuItem;
    Report1: TMenuItem;
    Stockgroupwise1: TMenuItem;
    Stockpatient1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    procedure Collection1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_MainBloodCollection: TForm_MainBloodCollection;

implementation

uses Unit_BloodCollection;

{$R *.dfm}

procedure TForm_MainBloodCollection.Collection1Click(Sender: TObject);
begin
     Form_BloodCollection:= TForm_BloodCollection.Create(Self);
    try
        Form_BloodCollection.showmodal;
    finally
        Form_BloodCollection.free;
    end;
end;

end.
