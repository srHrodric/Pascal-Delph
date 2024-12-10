program ConEstoque;

uses
  Forms,
  uAber in 'uAber.pas' {frmAbertura},
  dataEstoque in 'dataEstoque.pas' {modEstoque: TDataModule},
  UCliente in 'UCliente.pas' {fmClientes},
  URelCli in 'URelCli.pas' {RelCli},
  UProdutos in 'UProdutos.pas' {fmProdutos},
  uRelPro in 'uRelPro.pas' {relpro},
  uEscPro in 'uEscPro.pas' {fmEscPro},
  UFornecedor in 'UFornecedor.pas' {fmFornecedor},
  URelForn in 'URelForn.pas' {fmrelForn},
  UFunc in 'UFunc.pas' {fmFunc},
  URelFunc in 'URelFunc.pas' {fmRelFunc},
  UEntraProd in 'UEntraProd.pas' {fmEntraProd},
  uRelEntraProd in 'uRelEntraProd.pas' {fmRelEntraProd},
  UPedidos in 'UPedidos.pas' {fmPedidos},
  URelPed in 'URelPed.pas' {fmRelPed},
  URelDetalhe in 'URelDetalhe.pas' {fmRelDetalhe};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfrmAbertura, frmAbertura);
  Application.CreateForm(TmodEstoque, modEstoque);
  Application.Run;
end.
