unit UnitCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadMovimentacao = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBNavigator3: TDBNavigator;
    TDBcombobox1: TDBComboBox;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    txtTotalProdutos: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    procedure DBNavigator3Click(Sender: TObject; Button: TNavigateBtn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadMovimentacao: TFormCadMovimentacao;

implementation

{$R *.dfm}

uses UnitDM;





procedure TFormCadMovimentacao.DBNavigator3Click(Sender: TObject;
  Button: TNavigateBtn);

begin
   if Button = nbInsert then
      begin
        DM.SQLmaxIDmov.Open;
        DBEdit3.Text := IntToStr(DM.SQLmaxIDmov.Fields[0].AsInteger + 1);
        DM.FDTableMovimentacao.Refresh;
        DM.SQLmaxIDmov.Close;
      end;

   if Button = nbPost then
   begin
      DM.FDTableMovimentacao.Refresh;
      DM.FDTableMovimentacaoproduto.Refresh;
   end;


end;


end.
