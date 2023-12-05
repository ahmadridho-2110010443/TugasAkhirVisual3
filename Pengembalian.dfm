object FormPengembalian: TFormPengembalian
  Left = 331
  Top = 146
  Width = 767
  Height = 515
  Caption = 'Form Pengembalian'
  Color = 16744448
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 16
    Top = 288
    Width = 51
    Height = 13
    Caption = 'Judul Buku'
  end
  object lbl2: TLabel
    Left = 12
    Top = 328
    Width = 52
    Height = 13
    Caption = 'Pengarang'
  end
  object lbl3: TLabel
    Left = 12
    Top = 364
    Width = 40
    Height = 13
    Caption = 'Penerbit'
  end
  object lbl4: TLabel
    Left = 16
    Top = 248
    Width = 36
    Height = 13
    Caption = 'Id Buku'
  end
  object lbl5: TLabel
    Left = 268
    Top = 264
    Width = 102
    Height = 13
    Caption = 'Jumlah Pengembalian'
  end
  object lbl6: TLabel
    Left = 268
    Top = 308
    Width = 107
    Height = 13
    Caption = 'Tanggal Pengembalian'
  end
  object lbl1: TLabel
    Left = 276
    Top = 196
    Width = 67
    Height = 13
    Caption = 'Jumlah Pinjam'
  end
  object lbl7: TLabel
    Left = 272
    Top = 344
    Width = 77
    Height = 13
    Caption = 'Tanggal Kembali'
  end
  object lbl8: TLabel
    Left = 280
    Top = 376
    Width = 31
    Height = 13
    Caption = 'Denda'
  end
  object lbl9: TLabel
    Left = 16
    Top = 208
    Width = 70
    Height = 13
    Caption = 'Id Peminjaman'
  end
  object lbl10: TLabel
    Left = 272
    Top = 232
    Width = 54
    Height = 13
    Caption = 'Id Anggota'
  end
  object dg1: TDBGrid
    Left = 0
    Top = 60
    Width = 665
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_pengembalian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_peminjaman'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_buku'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'judul_buku'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pengarang'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_pinjam'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_anggota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_pengembalian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_pengembalian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_kembali'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'denda'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 20
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 116
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 220
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 324
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn6: TButton
    Left = 128
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 5
    OnClick = btn6Click
  end
  object edt1: TEdit
    Left = 112
    Top = 288
    Width = 145
    Height = 21
    TabOrder = 6
  end
  object edt4: TEdit
    Left = 408
    Top = 196
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object edt5: TEdit
    Left = 408
    Top = 264
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object c1: TComboBox
    Left = 112
    Top = 200
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object b1: TButton
    Left = 280
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 10
    OnClick = b1Click
  end
  object edt2: TEdit
    Left = 112
    Top = 328
    Width = 145
    Height = 21
    TabOrder = 11
  end
  object edt3: TEdit
    Left = 112
    Top = 368
    Width = 145
    Height = 21
    TabOrder = 12
  end
  object edt6: TEdit
    Left = 408
    Top = 372
    Width = 145
    Height = 21
    TabOrder = 13
  end
  object dtp1: TDateTimePicker
    Left = 408
    Top = 296
    Width = 186
    Height = 21
    Date = 45262.915443900460000000
    Time = 45262.915443900460000000
    TabOrder = 14
  end
  object dtp2: TDateTimePicker
    Left = 408
    Top = 336
    Width = 186
    Height = 21
    Date = 45262.915443900460000000
    Time = 45262.915443900460000000
    TabOrder = 15
  end
  object c2: TComboBox
    Left = 112
    Top = 240
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 16
  end
  object c3: TComboBox
    Left = 408
    Top = 232
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 17
  end
  object btn5: TButton
    Left = 440
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 18
    OnClick = btn5Click
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
    Left = 96
    Top = 12
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 184
    Top = 12
  end
  object frxpengembalian: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45097.493911018500000000
    ReportOptions.LastChange = 45258.683607395800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 236
    Top = 12
    Datasets = <
      item
        DataSet = frxDBfrxdbdtst2
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 65.677180000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.763760000000000000
        Top = 105.826840000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Pengembalian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Peminjaman')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Buku')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 200.315090000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Judul Buku')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 302.362400000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Pengarang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 404.409710000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Penerbit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 506.457020000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Pinjam')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 551.811380000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Anggota')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 608.504330000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Pengembalian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 687.874460000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Pengembalian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 771.024120000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal Kembali')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 873.071430000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Denda')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 34.015770000000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 980.410082000000000000
        DataSet = frxDBfrxdbdtst2
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'id_pengembalian'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_pengembalian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'id_peminjaman'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_peminjaman"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 158.740260000000000000
          Width = 41.574830000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'id_buku'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_buku"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 200.315090000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'judul_buku'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."judul_buku"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 302.362400000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'pengarang'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."pengarang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 404.409710000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'penerbit'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."penerbit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'jumlah_pinjam'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_pinjam"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 551.811380000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'id_anggota'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_anggota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 608.504330000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'jumlah_pengembalian'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jumlah_pengembalian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 687.874460000000000000
          Width = 83.149660000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'tanggal_pengembalian'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_pengembalian"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 771.024120000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'tanggal_kembali'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_kembali"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 873.071430000000000000
          Width = 102.047310000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'denda'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."denda"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo1: TfrxMemoView
        Left = 402.165430000000000000
        Top = 18.000000000000000000
        Width = 190.063080000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          'Laporan Pengembalian')
        ParentFont = False
      end
    end
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pengembalian')
    Params = <>
    Left = 140
    Top = 12
  end
  object frxDBfrxdbdtst2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 324
    Top = 12
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from peminjaman')
    Params = <>
    Left = 408
    Top = 16
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from buku')
    Params = <>
    Left = 480
    Top = 16
  end
  object zqry4: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from anggota')
    Params = <>
    Left = 552
    Top = 16
  end
end
