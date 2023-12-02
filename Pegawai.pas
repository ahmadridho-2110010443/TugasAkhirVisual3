unit Pegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TFormPegawai = class(TForm)
    lbl2: TLabel;
    lbl3: TLabel;
    dg1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    con1: TZConnection;
    ds1: TDataSource;
    frxpegawai: TfrxReport;
    zqry1: TZQuery;
    frxDBfrxdbdtst2: TfrxDBDataset;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edt4: TEdit;
    edt5: TEdit;
    c1: TComboBox;
    dtp1: TDateTimePicker;
    b1: TButton;
    edt2: TEdit;
    edt3: TEdit;
    lbl1: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure bersih;
    procedure editenable;
    procedure posisiawal;
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPegawai: TFormPegawai;
  id : string;

implementation

uses Anggota;

{$R *.dfm}

procedure TFormPegawai.btn1Click(Sender: TObject);
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
c1.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TFormPegawai.btn2Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text= '')or (edt3.Text= '')or (c1.Text= '') or (edt4.Text= '')or (edt5.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else

begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pegawai values (null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+c1.Text+'","'+edt4.Text+'","'+edt5.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TFormPegawai.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (edt2.Text= '')or (edt3.Text= '')or (c1.Text= '') or (edt4.Text= '')or (edt5.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = zqry1.Fields[1].AsString) and (edt2.Text = zqry1.Fields[2].AsString) and (edt3.Text = zqry1.Fields[3].AsString)and (c1.Text = zqry1.Fields[4].AsString)and (edt4.Text = zqry1.Fields[5].AsString)and (edt5.Text = zqry1.Fields[6].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pegawai').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update pegawai set nik="'+edt1.Text+'",nama="'+edt2.Text+'",tempat_lahir="'+edt3.Text+'",tanggal_lahir= "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",jk="'+c1.Text+'",no_telepon="'+edt4.Text+'",alamat="'+edt5.Text+'" where id_pegawai="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormPegawai.btn4Click(Sender: TObject);
begin
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_pegawai').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pegawai where id_pegawai="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
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

procedure TFormPegawai.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormPegawai.btn6Click(Sender: TObject);
begin
frxpegawai.ShowReport();
end;

procedure TFormPegawai.b1Click(Sender: TObject);
begin
close;
end;

procedure TFormPegawai.FormShow(Sender: TObject);
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
c1.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;
end;

procedure TFormPegawai.dg1CellClick(Column: TColumn);
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
dtp1.Date:=FormPegawai.zqry1.Fields[4].AsDateTime;
c1.Text:= zqry1.FieldList[5].AsString;
edt4.Text:= zqry1.FieldList[6].AsString;
edt5.Text:= zqry1.FieldList[7].AsString;
end;

procedure TFormPegawai.bersih;
begin
edt1.Clear; 
edt2.Clear;
edt3.Clear;
c1.Text:= '';
edt4.Clear;
edt5.Clear;
end;

procedure TFormPegawai.editenable;
begin
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
dtp1.Enabled:=True;
c1.Enabled:= True;
edt4.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TFormPegawai.posisiawal;
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
c1.Enabled:= False;
edt4.Enabled:= False;
edt5.Enabled:= False;
end;

end.
