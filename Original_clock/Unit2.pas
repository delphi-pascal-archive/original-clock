unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TForm2 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    private
    { Private declarations }
    StartBtnWnd, StartBtnBmp:hWnd;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
StartBtnWnd:=FindWindow('Shell_TrayWnd',nil);
StartBtnBmp:=FindWindowEx(StartBtnWnd,0,'Button',nil);
SetWindowText(StartBtnBmp,'Боря');
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
form3.visible:=true;
end;



procedure TForm2.FormCreate(Sender: TObject);
var HW:HWND;
begin
HW:=Form2.Handle;
SetWindowLong(HW,GWL_EXSTYLE,GetWindowLong(HW,GWL_EXSTYLE) or WS_EX_LAYERED);
SetLayeredWindowAttributes(HW,RGB(100,100,100),180,LWA_ALPHA);
end;



end.
