unit Pengembalian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls,
  Grids, DBGrids;

type
  TFormPengembalian = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl1: TLabel;
    lbl7: TLabel;
    dg1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    c1: TComboBox;
    b1: TButton;
    edt2: TEdit;
    edt3: TEdit;
    edt6: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    frxpeminjaman: TfrxReport;
    zqry1: TZQuery;
    frxDBfrxdbdtst2: TfrxDBDataset;
    zqry2: TZQuery;
    zqry3: TZQuery;
    dtp1: TDateTimePicker;
    lbl8: TLabel;
    dtp2: TDateTimePicker;
    lbl9: TLabel;
    c2: TComboBox;
    lbl10: TLabel;
    c3: TComboBox;
    zqry4: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPengembalian: TFormPengembalian;

implementation

{$R *.dfm}

end.
