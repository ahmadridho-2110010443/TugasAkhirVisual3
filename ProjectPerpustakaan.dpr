program ProjectPerpustakaan;

uses
  Forms,
  Login in 'Login.pas' {FormLogin},
  Menu in 'Menu.pas' {FormMenu},
  Anggota in 'Anggota.pas' {FormAnggota},
  Pegawai in 'Pegawai.pas' {FormPegawai},
  Peminjaman in 'Peminjaman.pas' {FormPeminjaman},
  Register in 'Register.pas' {FormRegister},
  Rak in 'Rak.pas' {FormRak},
  Buku in 'Buku.pas' {FormBuku},
  Pengembalian in 'Pengembalian.pas' {FormPengembalian};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormBuku, FormBuku);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormAnggota, FormAnggota);
  Application.CreateForm(TFormPegawai, FormPegawai);
  Application.CreateForm(TFormPeminjaman, FormPeminjaman);
  Application.CreateForm(TFormRegister, FormRegister);
  Application.CreateForm(TFormRak, FormRak);
  Application.CreateForm(TFormPengembalian, FormPengembalian);
  Application.Run;
end.
