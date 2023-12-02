unit Peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, ComCtrls, StdCtrls, Grids,
  DBGrids;

type
  TFormPeminjaman = class(TForm)
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
    frxpeminjaman: TfrxReport;
    zqry1: TZQuery;
    frxDBfrxdbdtst2: TfrxDBDataset;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    edt6: TEdit;
    c2: TComboBox;
    lbl10: TLabel;
    edt7: TEdit;
    dtp2: TDateTimePicker;
    zqry2: TZQuery;
    zqry3: TZQuery;
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure posisiawal;
    procedure editenable;
    procedure bersih;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPeminjaman: TFormPeminjaman;
  id : string;

implementation

uses Pegawai;

{$R *.dfm}

procedure TFormPeminjaman.btn6Click(Sender: TObject);
begin
frxpeminjaman.ShowReport();
end;

procedure TFormPeminjaman.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True; 
edt2.Enabled:= True; 
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
c1.Enabled:= True;
c2.Enabled:= True;
edt6.Enabled:=True;
edt7.Enabled:=True;
end;

procedure TFormPeminjaman.btn2Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text= '')or (edt3.Text= '') or (edt4.Text= '')or (edt5.Text= '') or (c1.Text= '')or (c2.Text= '')or (edt6.Text= '')or (edt7.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else

begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into peminjaman values (null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+c1.Text+'","'+c2.Text+'","'+edt6.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+FormatDateTime('yyyy-mm-dd',dtp2.Date)+'","'+edt7.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from peminjaman');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TFormPeminjaman.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text= '')or (edt3.Text= '') or (edt4.Text= '')or (edt5.Text= '') or (c1.Text= '')or (c2.Text= '')or (edt6.Text= '')or (edt7.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (edt3.Text = zqry1.Fields[3].AsString)and (edt4.Text = zqry1.Fields[4].AsString)and (edt5.Text = zqry1.Fields[5].AsString)and (c1.Text = zqry1.Fields[6].AsString)and (c2.Text = zqry1.Fields[7].AsString) and (edt6.Text = zqry1.Fields[8].AsString)and (edt7.Text = zqry1.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_peminjaman').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update peminjaman set kode_buku="'+edt1.Text+'",judul_buku="'+edt2.Text+'",pengarang="'+edt3.Text+'",penerbit="'+edt4.Text+'",stok_awak="'+edt5.Text+'",id_pegawai="'+c1.Text+'",id_anggota="'+c2.Text+'",nama="'+edt6.Text+'",tanggal_peminjaman= "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",tanggal_pengembalian= "'+FormatDateTime('yyyy-mm-dd',dtp2.Date)+'",jumlah_pinjam="'+edt7.Text+'" where id_peminjaman="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from peminjaman');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormPeminjaman.btn4Click(Sender: TObject);
begin
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_peminjaman').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from peminjaman where id_peminjaman="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from peminjaman');
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

procedure TFormPeminjaman.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPeminjaman.b1Click(Sender: TObject);
begin
Close;
end;

procedure TFormPeminjaman.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
edt1.Enabled:=false;
edt2.Enabled:=false;
edt3.Enabled:=false;
edt4.Enabled:=False;
edt5.Enabled:=False;
c1.Enabled:=False;
c2.Enabled:=False;
edt6.Enabled:=False;
edt7.Enabled:=False;
end;

procedure TFormPeminjaman.dg1CellClick(Column: TColumn);
begin
editenable;
btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
edt1.Text:= zqry1.FieldList[1].AsString;
edt2.Text:= zqry1.FieldList[2].AsString;
edt3.Text:= zqry1.FieldList[3].AsString;
edt4.Text:= zqry1.FieldList[4].AsString;
edt5.Text:= zqry1.FieldList[5].AsString;
c1.Text:= zqry1.FieldList[6].AsString;
c2.Text:= zqry1.FieldList[7].AsString;
edt6.Text:= zqry1.FieldList[8].AsString;
dtp1.Date:=FormPegawai.zqry1.Fields[9].AsDateTime;
dtp2.Date:=FormPegawai.zqry1.Fields[10].AsDateTime;
edt7.Text:= zqry1.FieldList[11].AsString;
end;

procedure TFormPeminjaman.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
c1.Enabled:= True;
c2.Enabled:= True;
edt6.Enabled:= True;
dtp1.Enabled:=True;
dtp2.Enabled:=True;
edt7.Enabled:= True;
end;

procedure TFormPeminjaman.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
c1.Enabled:= False;
c2.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
end;

procedure TFormPeminjaman.bersih;
begin
edt1.Clear; 
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
c1.Text:= ''; 
c2.Text:= '';
edt6.Clear;
edt7.Clear;
end;

procedure TFormPeminjaman.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  c1.items.add(zqry2.fieldbyname('id_pegawai').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  c2.items.add(zqry3.fieldbyname('id_anggota').asstring);
  zqry3.Next;
end;
end;

end.
