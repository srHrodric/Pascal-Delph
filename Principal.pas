unit Principal;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdActns, QActnList, QImgList, QMenus, QTypes, QComCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    Novo: TAction;
    Abrir: TAction;
    Salvar: TAction;
    Sair: TAction;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Arquivo1: TMenuItem;
    Editar1: TMenuItem;
    Janela1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    Sair3: TMenuItem;
    Copia1: TMenuItem;
    Corta1: TMenuItem;
    Cola1: TMenuItem;
    SelecionaTudo1: TMenuItem;
    Cascata1: TMenuItem;
    MinimizaTodas1: TMenuItem;
    Copia2: TMenuItem;
    Corta2: TMenuItem;
    Cola2: TMenuItem;
    WindowTile11: TMenuItem;
    Sobre1: TMenuItem;
    SobreoPrograma1: TMenuItem;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditDelete1: TEditDelete;
    WindowCascade1: TWindowCascade;
    WindowTile1: TWindowTile;
    WindowMinimizeAll1: TWindowMinimizeAll;
    SalvarComo: TAction;
    SalvarComo1: TMenuItem;
    procedure NovoExecute(Sender: TObject);
    procedure AbrirExecute(Sender: TObject);
    procedure SalvarExecute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure SalvarUpdate(Sender: TObject);
    procedure SalvarComoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Editor;

{$R *.xfm}

procedure TForm1.NovoExecute(Sender: TObject);
begin
  with TForm2.Create(Self) do begin
// cria um novo formulário para edição
    Memo1.Lines.Clear;
// atribui o menu do botão direito
    Memo1.PopupMenu := PopupMenu1;
// atribui o novo título à janela
    Caption := 'Novo Documento';
// mostra janela
    Show;
  end;  
end;

procedure TForm1.AbrirExecute(Sender: TObject);
begin
  with OpenDialog1 do
    if Execute then
// se for clicado o botão OK cria-se a Form
       with TForm2.Create(Self) do begin
// carrega o arquivo na caixa Memo
          Memo1.Lines.LoadFromFile(FileName);
          Memo1.PopupMenu := PopupMenu1;
          Caption := FileName;
          Show;
       end;
end;

procedure TForm1.SalvarExecute(Sender: TObject);
begin
// verifica se o sub-formulário é da classe TForm2
 if ActiveMDIChild is TForm2 then
    with TForm2(ActiveMDIChild) do
// se o caption não for Novo Documento,
// o arquivo já tem nome
      if Caption <> 'Novo Documento' then
        Memo1.Lines.SaveToFile(Caption)
      else
// se for novo arquivo, chama a opção Salvar como
        SalvarComoExecute(Self);
end;



procedure TForm1.Action5Execute(Sender: TObject);
begin
   Close;
end;

procedure TForm1.SalvarUpdate(Sender: TObject);
begin
  (Sender as TCustomAction).Enabled := ActiveMDIChild is TForm2;
end;

procedure TForm1.SalvarComoExecute(Sender: TObject);
begin
// verifica se janela-filha é do tipo TForm2
  if ActiveMDIChild is TForm2 then
// chama a caixa de diálogo de salvar arquivos
    with SaveDialog1 do
      if Execute then
// usuário confirmou o nome
// verifica se o arquivo existe ou pede confirmação de sobreposição
        if (not FileExists(FileName)) or
          (MessageDlg('Arquivo já existe. Sobrepõe?',
          mtConfirmation,[mbYes,mbNo],0) = mrYes) then
        with TForm2(ActiveMDIChild) do begin
           Memo1.Lines.SaveToFile(FileName);
           Caption := FileName;
        end;
end;

end.
