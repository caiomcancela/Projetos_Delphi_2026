program PRJ_Calculadora;

uses
  Vcl.Forms,
  UPrincipal in '..\FORMS\UPrincipal.pas' {Form_Principal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_Principal, Form_Principal);
  Application.Run;
end.
