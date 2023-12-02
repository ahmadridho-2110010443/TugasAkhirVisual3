unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFormLogin = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edit_2: TEdit;
    edit_1: TEdit;
    btn1: TButton;
    zqry: TZQuery;
    ds: TDataSource;
    connect: TZConnection;
    img1: TImage;
    b1: TButton;
    b2: TButton;
    lbl4: TLabel;
    chk1: TCheckBox;
    procedure btn1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;
  username : string;
  password : string;
  level : string;

implementation

uses
  Menu;

{$R *.dfm}

procedure TFormLogin.btn1Click(Sender: TObject);
begin
username := edit_1.Text;
password := edit_2.Text;

  zqry := TZQuery.Create(nil);
  try
    zqry.Connection := connect;
    zqry.SQL.Text := 'SELECT level FROM user WHERE username = :username AND password = :password';
    zqry.ParamByName('username').AsString := username;
    zqry.ParamByName('password').AsString := password;
    zqry.Open;

    if not zqry.IsEmpty then
    begin
      level := zqry.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Login successful');
        begin
          FormMenu.ShowModal;
        end;
      end;
    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('Username or Password invalid!,Please Register!');
    end;
  finally
    zqry.Free;
  end;
end;

procedure TFormLogin.chk1Click(Sender: TObject);
begin
if chk1.Checked then
 edit_2.PasswordChar:=#0
 else edit_2.PasswordChar:='*';
end;

procedure TFormLogin.b2Click(Sender: TObject);
begin
close;
end;

end.
