unit UnitPrincipal2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.DBCtrls;


type
    TFormPrincial2 = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Gerenciar1: TMenuItem;
    Consultar1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    Image1: TImage;
    procedure Consultar1Click(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Gerenciar1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincial2: TFormPrincial2;

implementation

{$R *.dfm}

uses UnitCadMovimentacao, UnitCadProdutos, UnitConMovimentacao, UnitDM;


procedure TFormPrincial2.CadastrodeProdutos1Click(Sender: TObject);
begin
  FormcadProdutos.ShowModal;
end;

procedure TFormPrincial2.Consultar1Click(Sender: TObject);
begin
  FormConMovimentacao.ShowModal;
end;

procedure TFormPrincial2.Gerenciar1Click(Sender: TObject);
begin
 DM.calculartotais;
 FormCadMovimentacao.ShowModal;
end;

procedure TFormPrincial2.Sair1Click(Sender: TObject);
begin
   application.Terminate;
end;





end.
