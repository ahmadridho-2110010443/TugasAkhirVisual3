object FormPeminjaman: TFormPeminjaman
  Left = 340
  Top = 168
  Width = 684
  Height = 507
  Caption = 'Form Peminjaman'
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
    Top = 200
    Width = 50
    Height = 13
    Caption = 'Kode Buku'
  end
  object lbl2: TLabel
    Left = 12
    Top = 232
    Width = 51
    Height = 13
    Caption = 'Judul Buku'
  end
  object lbl3: TLabel
    Left = 12
    Top = 260
    Width = 52
    Height = 13
    Caption = 'Pengarang'
  end
  object lbl4: TLabel
    Left = 8
    Top = 336
    Width = 47
    Height = 13
    Caption = 'Stok Awal'
  end
  object lbl5: TLabel
    Left = 276
    Top = 200
    Width = 54
    Height = 13
    Caption = 'id_pegawai'
  end
  object lbl6: TLabel
    Left = 276
    Top = 228
    Width = 54
    Height = 13
    Caption = 'id_anggota'
  end
  object lbl1: TLabel
    Left = 12
    Top = 292
    Width = 40
    Height = 13
    Caption = 'Penerbit'
  end
  object lbl7: TLabel
    Left = 280
    Top = 264
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object lbl8: TLabel
    Left = 276
    Top = 296
    Width = 98
    Height = 13
    Caption = 'Tanggal Peminjaman'
  end
  object lbl9: TLabel
    Left = 276
    Top = 332
    Width = 107
    Height = 13
    Caption = 'Tanggal Pengembalian'
  end
  object lbl10: TLabel
    Left = 276
    Top = 364
    Width = 67
    Height = 13
    Caption = 'Jumlah Pinjam'
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
        FieldName = 'id_peminjaman'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode_buku'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'judul_buku'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pengarang'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok_awal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pegawai'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_anggota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_peminjaman'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_pengembalian'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_pinjam'
        Visible = True
      end>
  end
  object btn1: TButton
    Left = 20
    Top = 396
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 116
    Top = 396
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 212
    Top = 396
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 316
    Top = 396
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 416
    Top = 396
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 168
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 6
    OnClick = btn6Click
  end
  object edt1: TEdit
    Left = 112
    Top = 192
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object edt4: TEdit
    Left = 112
    Top = 292
    Width = 145
    Height = 21
    TabOrder = 8
  end
  object edt5: TEdit
    Left = 112
    Top = 336
    Width = 145
    Height = 21
    TabOrder = 9
  end
  object c1: TComboBox
    Left = 400
    Top = 192
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object dtp1: TDateTimePicker
    Left = 400
    Top = 296
    Width = 145
    Height = 21
    Date = 45262.674647337960000000
    Time = 45262.674647337960000000
    TabOrder = 11
  end
  object b1: TButton
    Left = 352
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Kembali'
    TabOrder = 12
    OnClick = b1Click
  end
  object edt2: TEdit
    Left = 112
    Top = 224
    Width = 145
    Height = 21
    TabOrder = 13
  end
  object edt3: TEdit
    Left = 112
    Top = 256
    Width = 145
    Height = 21
    TabOrder = 14
  end
  object edt6: TEdit
    Left = 400
    Top = 260
    Width = 145
    Height = 21
    TabOrder = 15
  end
  object c2: TComboBox
    Left = 400
    Top = 224
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 16
  end
  object edt7: TEdit
    Left = 400
    Top = 360
    Width = 145
    Height = 21
    TabOrder = 17
  end
  object dtp2: TDateTimePicker
    Left = 400
    Top = 328
    Width = 145
    Height = 21
    Date = 45262.674647337960000000
    Time = 45262.674647337960000000
    TabOrder = 18
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
  object frxpeminjaman: TfrxReport
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
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 65.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 19.645640000000000000
        Top = 105.826840000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 17.000000000000000000
          Top = 0.747990000000000000
          Width = 144.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID Anggota')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 164.555555550000000000
          Top = 0.747990000000000000
          Width = 224.266027780000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Anggota')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 394.666666670000000000
          Top = 0.747990000000000000
          Width = 165.599361110000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 564.000000000000000000
          Top = 0.747990000000000000
          Width = 174.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            'No Telpon')
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
        Height = 20.454957780000000000
        ParentFont = False
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        DataSet = frxDBfrxdbdtst2
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 16.666666670000000000
          Top = 2.799525560000000000
          Width = 144.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_anggota'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."id_anggota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 166.666666670000000000
          Top = 2.799525560000000000
          Width = 222.266027780000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 394.444444440000000000
          Top = 2.799525560000000000
          Width = 166.710472220000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 566.666666670000000000
          Top = 2.799525560000000000
          Width = 172.266027780000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_telepon'
          DataSet = frxDBfrxdbdtst2
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."no_telepon"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo1: TfrxMemoView
        Left = 285.000000000000000000
        Top = 18.000000000000000000
        Width = 148.488250000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8 = (
          'Laporan Anggota')
        ParentFont = False
      end
    end
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from peminjaman')
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
    SQL.Strings = (
      'select * from pegawai')
    Params = <>
    Left = 408
    Top = 16
  end
  object zqry3: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from anggota')
    Params = <>
    Left = 480
    Top = 16
  end
end
