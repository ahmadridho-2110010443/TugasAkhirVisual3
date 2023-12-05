unit Register;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TFormRegister = class(TForm)
    edt1: TEdit;
    lbl1: TLabel;
    edt2: TEdit;
    lbl2: TLabel;
    edt3: TEdit;
    lbl3: TLabel;
    edt4: TEdit;
    lbl4: TLabel;
    b1: TButton;
    b2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegister: TFormRegister;

implementation

{$R *.dfm}

procedure TFormRegister.b1Click(Sender: TObject);
begin
if(edt1.Text = '')or(edt2.Text = '')or (edt3.Text = '')or(edt4.Text = '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('username',edt1.Text,[])) then
begin
  ShowMessage('Username sudah digunakan!');
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'", "'+edt4.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;

ShowMessage('DATA BERHASIL DISIMPAN!!');

edt1.Text :='';
edt2.Text :='';
edt3.Text :='';
edt4.Text :='';

end;
end;

procedure TFormRegister.b2Click(Sender: TObject);
begin
Close;
end;

end.
