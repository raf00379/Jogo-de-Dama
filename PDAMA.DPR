program PDama;

uses
  Forms,
  U_PRINCIPAL in 'U_PRINCIPAL.PAS' {frm_principal},
  Sobre in 'Sobre.pas' {formSobre},
  Topicos in 'Topicos.pas' {formTopicos},
  U_config in 'U_config.pas' {frmconfig},
  UNIT5 in 'UNIT5.PAS' {Frm_salva_recorde},
  U_lista in 'U_lista.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Dama 1.16';
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrm_salva_recorde, Frm_salva_recorde);
  Application.CreateForm(Tfrmconfig, frmconfig);
  Application.CreateForm(TformSobre, formSobre);
  Application.CreateForm(TformTopicos, formTopicos);
  Application.Run;
end.
