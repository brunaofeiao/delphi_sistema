program ProjetoSistema_Teste;

uses
  Vcl.Forms,
  UfrmTelas in 'UfrmTelas.pas' {Menu},
  UfrmCadastro_produtos in 'UfrmCadastro_produtos.pas' {formcadastro_produtos},
  UfrmSaida in 'UfrmSaida.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMenu, Menu);
  Application.CreateForm(Tformcadastro_produtos, formcadastro_produtos);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
