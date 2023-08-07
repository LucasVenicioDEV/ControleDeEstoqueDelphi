program ProjectEstoque;







uses
  Vcl.Forms,
  UnitCadProdutos in 'UnitCadProdutos.pas' {FormCadProdutos},
  UnitConMovimentacao in 'UnitConMovimentacao.pas' {FormConMovimentacao},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitPrincipal2 in 'UnitPrincipal2.pas' {FormPrincial2},
  UnitCadMovimentacao in 'UnitCadMovimentacao.pas' {FormCadMovimentacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincial2, FormPrincial2);
  Application.CreateForm(TFormCadProdutos, FormCadProdutos);
  Application.CreateForm(TFormConMovimentacao, FormConMovimentacao);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormCadMovimentacao, FormCadMovimentacao);
  Application.Run;
end.
