unit Unit_Preview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Preview, StdCtrls, ExtCtrls, Tabs, Buttons;

type        
  TFormRoboPreview = class(TForm)
    PrintPreviewRoboPrint: TPrintPreview;
    Panel2: TPanel;
    SaveButton: TButton;
    LoadButton: TButton;
    PrintButton: TButton;
    FastPrintCheckBox: TCheckBox;
    ZoomComboBox: TComboBox;
    Label1: TLabel;
    PageNavigator: TTabSet;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrinterSetupDialog: TPrinterSetupDialog;
    DirectPrintCheckBox: TCheckBox;
    Image1: TImage;
    Label2: TLabel;
    Edit_copies: TEdit;
    BitBtn1: TBitBtn;
    procedure PrintButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure ZoomComboBoxChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageNavigatorChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure PrintPreviewRoboPrintChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CreatePages;
    procedure CreateImageTextPage;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRoboPreview: TFormRoboPreview;

implementation

{$R *.DFM}

procedure TFormRoboPreview.PrintButtonClick(Sender: TObject);
var
    li_Print:Integer;
begin
    if PrintPreviewRoboPrint.State = psReady then
    begin
        PrintPreviewRoboPrint.canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
        PrintPreviewRoboPrint.SetPrinterOptions;
        if PrinterSetupDialog.Execute then
        begin
            PrintPreviewRoboPrint.UpdateAnnotation;
            if DirectPrintCheckBox.Checked then
            begin

            End Else
            begin
                For li_Print:=1 to StrToInt(Edit_copies.text) do
                    PrintPreviewRoboPrint.Print;
            end;
        end;
    end;
end;

Procedure TFormRoboPreview.CreatePages;
Begin
    with PrintPreviewRoboPrint do
    begin
        //Units := TUnits(UnitComboBox.ItemIndex);
        //if FormComboBox.ItemIndex >= 0 then
        //    FormName := FormComboBox.Items[FormComboBox.ItemIndex];
            BeginDoc;
            try
                CreateImageTextPage;
                NewPage;
            finally
                EndDoc;
            end;
    end;
End;

Procedure TFormRoboPreview.CreateImageTextPage;
var
  R: TRect;
  OneCM: TPoint;
  SavedBottom: Integer;
begin
  with PrintPreviewRoboPrint do
  begin
    // Don't forget that we have already drawn a frame for the page with 1cm
    // margin. We have to exclude it from the paper size. The content would
    // have 1cm margin relative to the frame.
    // First, we convert 1cm to printer's current unit.
    OneCM := ConvertXY(100, 100, mmLoMetric, Units);
    R := PageBounds;
    InflateRect(R, -(2 * OneCM.X), -(2 * OneCM.Y));
    // We want to place an image horizontally in center of the paper and
    // under the frame's top. In addition, we want the image height does
    // not exceed 3cm limit.
    SavedBottom := R.Bottom;
    R.Bottom := R.Top + 3 * OneCM.Y;
    PaintGraphicEx(R, Image1.Picture.Graphic, True, True, True);
    // We are going to draw a frame and write some text inside it. The new
    // frame is 1cm under the image boundary.
    R.Top := R.Bottom + OneCM.Y;
    R.Bottom := SavedBottom;
    // Here, we draw the frame.
    Canvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
    // To write the frame's dimensions under the frame
    Canvas.Font.Size := 8;
    Canvas.TextOut(R.Left, R.Bottom, Format('%d (%s) x %d (%s)',
      [R.Right - R.Left, 'Pixels' ,    // UnitComboBox.Items[UnitComboBox.ItemIndex]
       R.Bottom - R.Top, 'Pixels']));//UnitComboBox.Items[UnitComboBox.ItemIndex]]));
    // For the first line of the sample text, we set the font size to 12.
    Canvas.Font.Size := 12;
    // While we have not reached to the frame's bottom...
    InflateRect(R, -OneCM.X div 5, -OneCM.Y div 5);
    while R.Top - Canvas.Font.Height <= R.Bottom do
    begin
      // Randomly we select a font color
      Canvas.Font.Color := RGB(Random(256), Random(256), Random(256));
      // draw the text,
      Canvas.TextRect(R, R.Left, R.Top, 'Powered by Borland Delphi.');
      // move the frame's top to the next line,
      Inc(R.Top, -Canvas.Font.Height);
      // and we increase the font size by 1
      Canvas.Font.Size := Canvas.Font.Size + 1;
    end;
  end;
end;


procedure TFormRoboPreview.SaveButtonClick(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    Screen.Cursor := crHourglass;
    Caption := Application.Title + ' - Saving to file...';
    try
      PrintPreviewRoboPrint.SaveToFile(SaveDialog.FileName);
    finally
      Caption := Application.Title;
      Screen.Cursor := crDefault;
    end;
  end;

end;

procedure TFormRoboPreview.LoadButtonClick(Sender: TObject);
begin
    if OpenDialog.Execute then
    begin
        Screen.Cursor := crHourglass;
        Caption := Application.Title + ' - Loading from file...';
        try
            PrintPreviewRoboPrint.LoadFromFile(OpenDialog.FileName);
        finally
            Caption := Application.Title;
            Screen.Cursor := crDefault;
        end;
    end;
end;

procedure TFormRoboPreview.ZoomComboBoxChange(Sender: TObject);
begin
  case ZoomComboBox.ItemIndex of
    0: PrintPreviewRoboPrint.Zoom := 50;
    1: PrintPreviewRoboPrint.Zoom := 100;
    2: PrintPreviewRoboPrint.Zoom := 150;
    3: PrintPreviewRoboPrint.Zoom := 200;
    4: PrintPreviewRoboPrint.ZoomState := zsZoomToWidth;
    5: PrintPreviewRoboPrint.ZoomState := zsZoomToHeight;
    6: PrintPreviewRoboPrint.ZoomState := zsZoomToFit;
  end;
end;

procedure TFormRoboPreview.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    If key=VK_ESCAPE Then Close;
end;

procedure TFormRoboPreview.PageNavigatorChange(Sender: TObject;
  NewTab: Integer; var AllowChange: Boolean);
begin
  PrintPreviewRoboPrint.CurrentPage := NewTab + 1;
end;

procedure TFormRoboPreview.PrintPreviewRoboPrintChange(Sender: TObject);
begin
    while PageNavigator.Tabs.Count < PrintPreviewRoboPrint.TotalPages do
        PageNavigator.Tabs.Add(IntToStr(PageNavigator.Tabs.Count + 1));
    while PageNavigator.Tabs.Count > PrintPreviewRoboPrint.TotalPages do
        PageNavigator.Tabs.Delete(PageNavigator.Tabs.Count - 1);
        PageNavigator.TabIndex := PrintPreviewRoboPrint.CurrentPage - 1;

    if PrintPreviewRoboPrint.State = psCreating then
    // To be eble to see and navigate pages, which are prepared so far
        Application.ProcessMessages
    else
    begin
        //PrintButton.Enabled := PrintPreviewRoboPrint.PrinterInstalled and (PrintPreviewRoboPrint.TotalPages > 0);
        //SaveButton.Enabled := (PrintPreviewRoboPrint.TotalPages > 0);
    end;
end;

procedure TFormRoboPreview.BitBtn1Click(Sender: TObject);
begin
   Close;
end;

procedure TFormRoboPreview.FormShow(Sender: TObject);
begin
     PrintButton.SetFocus;
end;

end.
