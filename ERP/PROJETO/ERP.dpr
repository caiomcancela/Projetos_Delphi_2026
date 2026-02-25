program ERP;

uses
  Vcl.Forms,
  FormLogin in '..\FORMS\FormLogin.pas' {Form_Login},
  FormPrincipal in '..\FORMS\FormPrincipal.pas' {Form_Principal},
  FormProdutos in '..\FORMS\FormProdutos.pas' {Form_Produtos},
  UDM in '..\FORMS\UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Login, Form_Login);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
