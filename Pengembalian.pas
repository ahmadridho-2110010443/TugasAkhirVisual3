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
    btn5: TButton;
    frxpengembalian: TfrxReport;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure editenable;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPengembalian: TFormPengembalian;
  id : string;

implementation

{$R *.dfm}

procedure TFormPengembalian.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
c1.Enabled:= True;
c2.Enabled:= True;
edt1.Enabled:= True; 
edt2.Enabled:= True; 
edt3.Enabled:= True;
edt4.Enabled:= True; 
c3.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:=True;
end;

procedure TFormPengembalian.btn2Click(Sender: TObject);
begin
if  (c1.Text= '')or (c2.Text= '') or (edt1.Text= '')or (edt2.Text= '')or (edt3.Text= '') or (edt4.Text= '')or (c3.Text= '') or (edt5.Text= '')or (edt6.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else

begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pengembalian values (null,"'+c1.Text+'","'+c2.Text+'","'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+c3.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+FormatDateTime('yyyy-mm-dd',dtp2.Date)+'","'+edt6.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pengembalian');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TFormPengembalian.btn3Click(Sender: TObject);
begin
if (c1.Text= '') or (c2.Text= '') or (edt1.Text= '') or (edt2.Text= '')or (edt3.Text= '') or (edt4.Text= '')or(c3.Text= '')or (edt5.Text= '') or (edt6.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (c1.Text = zqry1.Fields[1].AsString)and (c2.Text = zqry1.Fields[2].AsString) and(edt1.Text = zqry1.Fields[3].AsString) and (edt2.Text = zqry1.Fields[4].AsString) and (edt3.Text = zqry1.Fields[5].AsString)and (edt4.Text = zqry1.Fields[6].AsString)and (c3.Text = zqry1.Fields[7].AsString)and (edt5.Text = zqry1.Fields[8].AsString)and (edt6.Text = zqry1.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pengembalian').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update pengembalian set id_peminjaman="'+c1.Text+'",id_buku="'+c2.Text+'",judul_buku="'+edt1.Text+'",pengarang="'+edt2.Text+'",penerbit="'+edt3.Text+'",jumlah_pinjam="'+edt4.Text+'",id_anggota="'+c3.Text+'",jumlah_pengembalian="'+edt5.Text+'",tanggal_pengembalian= "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",tanggal_kembali= "'+FormatDateTime('yyyy-mm-dd',dtp2.Date)+'",denda="'+edt6.Text+'" where id_pengembalian="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pengembalian');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormPengembalian.btn4Click(Sender: TObject);
begin
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pengembalian').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pengembalian where id_pengembalian="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pengembalian');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;
end;

procedure TFormPengembalian.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPengembalian.btn6Click(Sender: TObject);
begin
frxpengembalian.ShowReport();
end;

procedure TFormPengembalian.b1Click(Sender: TObject);
begin
Close;
end;

procedure TFormPengembalian.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  c1.items.add(zqry2.fieldbyname('id_peminjaman').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  c2.items.add(zqry3.fieldbyname('id_buku').asstring);
  zqry3.Next;
end;
zqry4.First;
while not zqry4.Eof do
begin
  c3.items.add(zqry4.fieldbyname('id_anggota').asstring);
  zqry4.Next;
end;
end;

procedure TFormPengembalian.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
c1.Enabled:=False;
c2.Enabled:=False;
edt1.Enabled:=false;
edt2.Enabled:=false;
edt3.Enabled:=false;
edt4.Enabled:=False;
c3.Enabled:=False;
edt5.Enabled:=False;
edt6.Enabled:=False;
end;

procedure TFormPengembalian.bersih;
begin      
c1.Text:= '';
c2.Text:= '';
edt1.Clear; 
edt2.Clear;
edt3.Clear;
edt4.Clear;
c3.Text:= '';
edt5.Clear;
edt6.Clear;
end;

procedure TFormPengembalian.editenable;
begin          
c1.Enabled:= True;
c2.Enabled:= True;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
c3.Enabled:= True;
edt5.Enabled:= True;
dtp1.Enabled:=True;
dtp2.Enabled:=True; 
edt6.Enabled:= True;
end;

procedure TFormPengembalian.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False; 
c1.Enabled:= False;
c2.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
c3.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
end;

procedure TFormPengembalian.dg1CellClick(Column: TColumn);
begin
editenable;
btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
id:=zqry1.Fields[0].AsString;    
c1.Text:= zqry1.FieldList[1].AsString;
c2.Text:= zqry1.FieldList[2].AsString;
edt1.Text:= zqry1.FieldList[3].AsString;
edt2.Text:= zqry1.FieldList[4].AsString;
edt3.Text:= zqry1.FieldList[5].AsString;
edt4.Text:= zqry1.FieldList[6].AsString;
c3.Text:= zqry1.FieldList[7].AsString;
edt5.Text:= zqry1.FieldList[8].AsString;
dtp1.Date:=FormPengembalian.zqry1.Fields[9].AsDateTime;
dtp2.Date:=FormPengembalian.zqry1.Fields[10].AsDateTime;
edt6.Text:= zqry1.FieldList[11].AsString;
end;

end.
