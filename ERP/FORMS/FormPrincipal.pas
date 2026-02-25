unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TForm_Principal = class(TForm)
    Btn_CadastroProduto: TcxButton;
    procedure Btn_CadastroProdutoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Principal: TForm_Principal;

implementation

{$R *.dfm}

uses FormLogin, FormProdutos;

{$region 'Botao Produtos'}
procedure TForm_Principal.Btn_CadastroProdutoClick(Sender: TObject);
begin
try
  Application.CreateForm(TForm_Produtos,Form_Produtos);
  Form_Produtos.ShowModal;
finally
  FreeAndNil(Form_Produtos);
end;
end;
{$endregion}

procedure TForm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Application.Terminate;
end;

procedure TForm_Principal.FormDestroy(Sender: TObject);
begin
  Form_Principal := nil;
end;

end.
