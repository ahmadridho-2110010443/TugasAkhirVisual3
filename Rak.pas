unit Rak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TFormRak = class(TForm)
    lbl1: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    edt1: TEdit;
    edt2: TEdit;
    c1: TComboBox;
    b1: TButton;
    con1: TZConnection;
    ds1: TDataSource;
    frxrak: TfrxReport;
    zqry1: TZQuery;
    frxDBfrxdbdtst2: TfrxDBDataset;
    dg1: TDBGrid;
    zqry2: TZQuery;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRak: TFormRak;
  id : string;

implementation

{$R *.dfm}

procedure TFormRak.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= false;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;
edt1.Enabled:= True;
c1.Enabled:= True;
edt2.Enabled:= True;
end;

procedure TFormRak.btn2Click(Sender: TObject);
begin
if (edt1.Text= '')or (c1.Text= '') or (edt2.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else

begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into rak values (null,"'+edt1.Text+'","'+c1.Text+'","'+edt2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from rak');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TFormRak.btn3Click(Sender: TObject);
begin
if (edt1.Text= '')or (c1.Text= '') or (edt2.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (edt1.Text = zqry1.Fields[1].AsString) and (c1.Text = zqry1.Fields[2].AsString)and (edt2.Text = zqry1.Fields[3].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_rak').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update rak set lokasi_rak="'+edt1.Text+'",id_rak="'+c1.Text+'",kategori="'+edt2.Text+'" where id_rak="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from rak');
zqry1.Open;
posisiawal;
end;
end;

procedure TFormRak.btn4Click(Sender: TObject);
begin
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_rak').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from rak where id_rak="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from rak');
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

procedure TFormRak.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TFormRak.btn6Click(Sender: TObject);
begin
frxrak.ShowReport();
end;

procedure TFormRak.b1Click(Sender: TObject);
begin
Close;
end;

procedure TFormRak.FormShow(Sender: TObject);
begin
bersih;
btn1.Enabled:=true;
btn2.Enabled:=false;
btn3.Enabled:=false;
btn4.Enabled:=false;
btn5.Enabled:=false;
edt1.Enabled:=false;
c1.Enabled:=False;
edt2.Enabled:=false;
end;

procedure TFormRak.dg1CellClick(Column: TColumn);
begin
editenable;
btn1.Enabled:= true;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
edt1.Text:= zqry1.FieldList[1].AsString;
c1.Text:= zqry1.FieldList[2].AsString;
edt2.Text:= zqry1.FieldList[3].AsString;
end;

procedure TFormRak.bersih;
begin
edt1.Clear;
c1.Text:= '';
edt2.Clear;
end;

procedure TFormRak.editenable;
begin
edt1.Enabled:= True;
c1.Enabled:= True;
edt2.Enabled:= True;
end;

procedure TFormRak.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;
edt1.Enabled:= False;
c1.Enabled:= False;
edt2.Enabled:= False;
end;

procedure TFormRak.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  c1.items.add(zqry2.fieldbyname('id_buku').asstring);
  zqry2.Next;
end;
end;

end.
