object Form1: TForm1
  Left = 252
  Top = 135
  BorderStyle = bsNone
  Caption = 'Clock'
  ClientHeight = 123
  ClientWidth = 324
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFF888888888888888FFFFFFFFFFFFFFFF8888888888888888FFFFFFFFFFFF
    FFFF8888888888888888FFFFFFFFFFFFFFFFF88887777777888FFFFFFFFFFFFF
    FFFFF88877777777888FFFFFFFFFFFFFFFFFFF887779997788FFFFFFFFFFFFFF
    FFFFFF888799997788FFFFFFFF88FFFFFFFFFFF8879999788FFFFFFF8888F888
    8FFFFFFF88799788FFFFFFF88888888888FFFFFFF888888FFFFFF88888888888
    888FFFFFFFF888FFFFFF8887788888888888FFFFFFFFFFFFFFF8887778888888
    777888FFFFFFFFFFFF887997778888887777788FFFFFFFFFFF87999977888887
    7799988FFFFFFFFFF8799999778888877799978FFFFFFFFFF899999977888887
    7799788FFFFFFFFFF879999977888887777788FFFFFFFFFFF889999977888887
    77788FFFFFFFFFFFFF889999778888887788FFFFFFFFFFFFFFF8799777888888
    888FFFFFFF8888FFFFF887777888888888FFFFFFF887788FFFFF887778888888
    8FFFFFFF8899978FFFFFF8888888888FFFFFFFF889999988FFFFFF888888FFFF
    FFFFFF88799999788FFFFFF88888FFFFFFFFF887799999788FFFFFFF8888FFFF
    FFFFF8877999997788FFFFFFFF8FFFFFFFFF88877777777788FFFFFFFFFFFFFF
    FFF8888777777777888FFFFFFFFFFFFFFFF8888888777778888FFFFFFFFFFFFF
    FFF88888888888888888FFFFFFFFFFFFFFFF8888888888888888FFFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 10
    Top = 49
    Width = 126
    Height = 38
    Caption = '00:00:00'
    Color = clBlack
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -33
    Font.Name = 'DS Sofachrome'
    Font.Style = [fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Gauge1: TGauge
    Left = 10
    Top = 10
    Width = 296
    Height = 21
    BackColor = clBlack
    ForeColor = clWindow
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'TrixieCyr-Plain'
    Font.Style = []
    MaxValue = 59
    ParentFont = False
    Progress = 0
  end
  object SpeedButton1: TSpeedButton
    Left = 10
    Top = 89
    Width = 60
    Height = 27
    Caption = ' '#1084#1077#1085#1102' '
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'TrixieCyr-Plain'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 236
    Top = 86
    Width = 70
    Height = 27
    Caption = ' '#1074#1099#1093#1086#1076' '
    Flat = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'TrixieCyr-Plain'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 168
    Top = 8
  end
  object XPManifest1: TXPManifest
    Left = 208
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer2Timer
    Left = 136
    Top = 8
  end
end