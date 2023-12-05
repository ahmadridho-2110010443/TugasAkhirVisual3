object FormRegister: TFormRegister
  Left = 223
  Top = 187
  Width = 403
  Height = 390
  Caption = 'Form Register'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 24
    Width = 113
    Height = 25
    Caption = 'Usename'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 80
    Width = 113
    Height = 25
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 128
    Width = 113
    Height = 25
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 184
    Width = 121
    Height = 25
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 192
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 192
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 192
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object b1: TButton
    Left = 64
    Top = 240
    Width = 97
    Height = 41
    Caption = 'Register'
    TabOrder = 4
    OnClick = b1Click
  end
  object b2: TButton
    Left = 192
    Top = 240
    Width = 113
    Height = 41
    Caption = 'Back'
    TabOrder = 5
    OnClick = b2Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'perpustakaan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\ProjekAkhir\libm' +
      'ysql.dll'
    Left = 248
    Top = 304
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 136
    Top = 304
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 40
    Top = 304
  end
end
