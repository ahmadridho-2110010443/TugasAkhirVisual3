unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TFormMenu = class(TForm)
    img1: TImage;
    mm1: TMainMenu;
    Form1: TMenuItem;
    FormAnggota1: TMenuItem;
    FormPegawai1: TMenuItem;
    FormBuku1: TMenuItem;
    FormPeminjaman1: TMenuItem;
    FormPengembalian1: TMenuItem;
    FormRak1: TMenuItem;
    Kembali1: TMenuItem;
    procedure Kembali1Click(Sender: TObject);
    procedure FormAnggota1Click(Sender: TObject);
    procedure FormPegawai1Click(Sender: TObject);
    procedure FormPeminjaman1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses
  Login, Anggota, Pegawai, Peminjaman;

{$R *.dfm}

procedure TFormMenu.Kembali1Click(Sender: TObject);
begin
close;
end;

procedure TFormMenu.FormAnggota1Click(Sender: TObject);
begin
FormAnggota.ShowModal;
end;

procedure TFormMenu.FormPegawai1Click(Sender: TObject);
begin
FormPegawai.ShowModal;
end;

procedure TFormMenu.FormPeminjaman1Click(Sender: TObject);
begin
FormPeminjaman.ShowModal;
end;

end.
