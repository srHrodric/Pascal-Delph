unit dataEstoque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TmodEstoque = class(TDataModule)
    tbCliente: TTable;
    datCli: TDataSource;
    tbProduto: TTable;
    datProd: TDataSource;
    tbFunc: TTable;
    datFunc: TDataSource;
    tbForn: TTable;
    datForn: TDataSource;
    tbEntraProd: TTable;
    datEntraProd: TDataSource;
    tbPedidos: TTable;
    datPed: TDataSource;
    tbDetPed: TTable;
    datDetPed: TDataSource;
    tbClienteCodCli: TFloatField;
    tbClienteNome: TStringField;
    tbClienteEndereo: TStringField;
    tbClienteCidade: TStringField;
    tbClienteEstado: TStringField;
    tbClienteCep: TStringField;
    tbClienteTelefone: TStringField;
    tbClienteCelular: TStringField;
    tbClienteCIC: TStringField;
    tbClienteRG: TStringField;
    tbClienteSexo: TStringField;
    tbProdutoCodPro: TFloatField;
    tbProdutoDescrio: TStringField;
    tbProdutoQuantEst: TFloatField;
    tbProdutoValorUnit: TCurrencyField;
    tbProdutoEstMinimo: TFloatField;
    tbProdutoForma: TStringField;
    tbProdutoCodFor: TFloatField;
    tbFornCodFor: TFloatField;
    tbFornNomeEmpresa: TStringField;
    tbFornNomeContato: TStringField;
    tbFornCargoConta: TStringField;
    tbFornEndereo: TStringField;
    tbFornCidade: TStringField;
    tbFornCep: TStringField;
    tbFornEstado: TStringField;
    tbFornTelefoneFax: TStringField;
    tbFornCelular: TStringField;
    tbFornInsEst: TStringField;
    tbFornCGC: TStringField;
    tbFornHomePage: TStringField;
    tbFornEmail: TStringField;
    tbFuncCodFun: TIntegerField;
    tbFuncNome: TStringField;
    tbFuncCargo: TStringField;
    tbFuncEndereo: TStringField;
    tbFuncCidade: TStringField;
    tbFuncCep: TStringField;
    tbFuncTelefone: TStringField;
    tbFuncDataNascimento: TDateField;
    tbFuncDataContrata: TDateField;
    tbFuncObservaes: TStringField;
    tbEntraProdCodEn: TIntegerField;
    tbEntraProdCodPro: TFloatField;
    tbEntraProdQuantidade: TFloatField;
    tbEntraProdDataEntrada: TDateField;
    tbPedidosCodPed: TIntegerField;
    tbPedidosCodCli: TFloatField;
    tbPedidosCodFun: TFloatField;
    tbPedidosDataPed: TDateField;
    tbPedidosDataEnt: TDateField;
    tbPedidosFormaDePagamento: TStringField;
    tbDetPedCodDetPed: TIntegerField;
    tbDetPedCodPed: TFloatField;
    tbDetPedCodPro: TFloatField;
    tbDetPedQuantidade: TFloatField;
    tbDetPedDesconto: TFloatField;
    tbDetPedSubTotal: TCurrencyField;
    tbDetPedDescrio: TStringField;
    Valor: TCurrencyField;
    tbDetPedBaixa: TBooleanField;
    tbPedidosTotalGeral: TCurrencyField;
    procedure tbDetPedBeforePost(DataSet: TDataSet);
    procedure tbDetPedAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  modEstoque: TmodEstoque;

implementation

{$R *.DFM}

procedure TmodEstoque.tbDetPedBeforePost(DataSet: TDataSet);
begin
tbdetpedsubtotal.Value := (valor.Value * tbdetpedquantidade.Value)-
 (valor.Value * tbdetpedquantidade.Value * (tbdetpeddesconto.Value/100));
end;

procedure TmodEstoque.tbDetPedAfterPost(DataSet: TDataSet);
var
total: double;
begin
modestoque.tbDetPed.DisableControls;
modestoque.tbDetPed.First ;
while not modestoque.tbDetPed.Eof do
  begin
    total := total + modestoque.tbDetPedsubtotal.Value ;
    modestoque.tbDetPed.Next;
  end;
modestoque.tbPedidos.edit;
modestoque.tbPedidostotalgeral.Value := total;
modestoque.tbPedidos.Post ;
modestoque.tbDetPed.EnableControls;
end;

end.
