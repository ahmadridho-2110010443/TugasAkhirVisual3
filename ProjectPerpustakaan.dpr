program ProjectPerpustakaan;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Menu in 'Menu.pas' {FormMenu},
  Anggota in 'Anggota.pas' {FormAnggota};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormAnggota, FormAnggota);
  Application.Run;
end.
