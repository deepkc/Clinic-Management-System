unit Unit_BloodCollectionMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls;

type
  TForm_BloodCollectionMain = class(TForm)
    MainMenu1: TMainMenu;
    Collection1: TMenuItem;
    Report1: TMenuItem;
    Exit1: TMenuItem;
    Stockgroupwise1: TMenuItem;
    Stockpatient1: TMenuItem;
    img1: TImage;
    procedure Exit1Click(Sender: TObject);
    procedure Collection1Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_BloodCollectionMain: TForm_BloodCollectionMain;

implementation
 uses Unit_BloodCollection;

{$R *.dfm}



procedure TForm_BloodCollectionMain.Collection1Click(Sender: TObject);
begin
     Form_BloodCollection:= TForm_BloodCollection.Create(Self);
    try
        Form_BloodCollection.showmodal;
    finally
        Form_BloodCollection.free;
    end;
end;

procedure TForm_BloodCollectionMain.Exit1Click(Sender: TObject);
begin
     Close;
end;

end.
