unit Buku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, ComCtrls, StdCtrls, Grids,
  DBGrids;

type
  TFormBuku = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl1: TLabel;
    dg1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    c1: TComboBox;
    dtp1: TDateTimePicker;
    b1: TButton;
    edt2: TEdit;
    edt3: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    frxpegawai: TfrxReport;
    zqry1: TZQuery;
    frxDBfrxdbdtst2: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuku: TFormBuku;

implementation

{$R *.dfm}

end.
