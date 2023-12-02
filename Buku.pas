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
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    c1: TComboBox;
    b1: TButton;
    edt2: TEdit;
    edt3: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    frxbuku: TfrxReport;
    zqry1: TZQuery;
    frxDBfrxdbdtst2: TfrxDBDataset;
    dg1: TDBGrid;
    edt4: TEdit;
    lbl7: TLabel;
    edt7: TEdit;
    zqry2: TZQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure bersih;
    procedure editenable;
    procedure posisiawal;
    procedure dg1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBuku: TFormBuku;
  id : string;

implementation

{$R *.dfm}

procedure TFormBuku.btn1Click(Sender: TObject);
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
edt6.Enabled:= True;
edt7.Enabled:= True;
end;

procedure TFormBuku.btn2Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text= '')or (edt3.Text= '') or (edt4.Text= '')or (edt5.Text= '')or (c1.Text= '') or (edt6.Text= '')or (edt7.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else

begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into buku values (null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+c1.Text+'","'+edt6.Text+'","'+edt7.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from buku');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TFormBuku.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text= '')or (edt3.Text= '') or (edt4.Text= '')or (edt5.Text= '')or (c1.Text= '') or (edt6.Text= '')or (edt7.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (edt3.Text = zqry1.Fields[3].AsString)and (edt4.Text = zqry1.Fields[4].AsString)and (edt5.Text = zqry1.Fields[5].AsString)and (c1.Text = zqry1.Fields[6].AsString)and (edt6.Text = zqry1.Fields[7].AsString)and (edt7.Text = zqry1.Fields[8].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_buku').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update buku set kode_buku="'+edt1.Text+'",judul_buku="'+edt2.Text+'",pengarang="'+edt3.Text+'",penerbit="'+edt4.Text+'",tahun_terbit="'+edt5.Text+'",id_rak="'+c1.Text+'",kategori_buku="'+edt6.Text+'",jumlah_buku="'+edt7.Text+'" where id_buku="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from buku');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormBuku.btn4Click(Sender: TObject);
begin
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_buku').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from buku where id_buku="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from buku');
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

procedure TFormBuku.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormBuku.btn6Click(Sender: TObject);
begin
frxbuku.ShowReport();
end;

procedure TFormBuku.b1Click(Sender: TObject);
begin
Close;
end;

procedure TFormBuku.bersih;
begin
edt1.Clear; 
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
c1.Text:= ''; 
edt6.Clear;
edt7.Clear;
end;

procedure TFormBuku.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
c1.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
end;

procedure TFormBuku.posisiawal;
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
edt6.Enabled:= False;
edt7.Enabled:= False;
end;

procedure TFormBuku.dg1CellClick(Column: TColumn);
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
edt6.Text:= zqry1.FieldList[7].AsString;
edt7.Text:= zqry1.FieldList[8].AsString;
end;

procedure TFormBuku.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  c1.items.add(zqry2.fieldbyname('id_rak').asstring);
  zqry2.Next;
end;
end;

end.
