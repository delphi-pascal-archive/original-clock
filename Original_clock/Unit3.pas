unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
form3.visible:=false;
end;

procedure TForm3.FormCreate(Sender: TObject);
var HW:HWND;
begin
Label1.Caption:=DateToStr(Now);
HW:=Form3.Handle;
SetWindowLong(HW,GWL_EXSTYLE,GetWindowLong(HW,GWL_EXSTYLE) or WS_EX_LAYERED);
SetLayeredWindowAttributes(HW,RGB(100,100,100),180,LWA_ALPHA);
Label1.Caption:=formatdatetime('dd',now());
label2.caption:=FormatDateTime('mmmm',now());
label3.caption:=FormatDateTime('dddd',now());
label4.caption:=FormatDateTime('yyyy',now());
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
Label1.Caption:=formatdatetime('dd',now());
label2.caption:=FormatDateTime('mmmm',now());
label3.caption:=FormatDateTime('dddd',now());
label4.caption:=FormatDateTime('yyyy',now());
end;

end.
