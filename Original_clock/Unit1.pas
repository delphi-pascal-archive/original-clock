unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Gauges, StdCtrls, XPMan, shellapi;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Gauge1: TGauge;
    SpeedButton1: TSpeedButton;
    Timer1: TTimer;
    SpeedButton2: TSpeedButton;
    XPManifest1: TXPManifest;
    Timer2: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
    StartBtnWnd, StartBtnBmp:hWnd;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
label1.Caption :=TimeToStr(NOW);
Gauge1.Progress:=Gauge1.Progress+1;
If Gauge1.Progress=59 then
begin
Gauge1.Progress:=0;
form3.Visible:=false;
SetWindowText(StartBtnBmp,'Боря');
end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var HW:HWND;
begin
label1.Caption:=formatdatetime('hh:nn:ss',now());
HW:=Form1.Handle;
SetWindowLong(HW,GWL_EXSTYLE,GetWindowLong(HW,GWL_EXSTYLE) or WS_EX_LAYERED);
SetLayeredWindowAttributes(HW,RGB(100,100,100),180,LWA_ALPHA);
timer2.enabled:=false;
StartBtnWnd:=FindWindow('Shell_TrayWnd',nil);
StartBtnBmp:=FindWindowEx(StartBtnWnd,0,'Button',nil);
shellexecute(application.Handle,'','Заставка\Project1.exe','','',SW_SHOW);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
form2.visible:=true;
timer2.Enabled:=true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
form2.visible:=false;
timer2.Enabled:=false;
SetWindowText(StartBtnBmp,'Боря');
end;

end.
