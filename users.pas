unit users;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, Libc;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Lista : TStringList;
    procedure ListaUser(Pass : PPasswordRecord);
  public
    { Public declarations }
  end;


var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  pwd : PPasswordRecord;
begin
  Lista := TStringList.Create;
  Lista.Clear;
  setpwent(); //Função Linux para trabalhar com arquivo passwd
// pega o primeiro usuário
  pwd := getpwent();
  while pwd <> nil do begin
// processa o usuário chamando a procedure ListaUser
    ListaUser(pwd);
// passa para o próximo usuário
    pwd := getpwent();
  end;
  endpwent();
  Memo1.Lines.Assign(Lista);
end;

procedure TForm1.ListaUser(Pass: PPasswordRecord);
var
  grp : PGroup;
begin
  if Pass <> nil then
    with Pass^ do begin
      Lista.Add('Nome: ' + String(pw_name) + ' Senha: ' + String(pw_passwd));
      Lista.Add('UID: ' + InttoStr(pw_uid) + ' GID: ' + InttoStr(pw_gid));
      Lista.Add('Comentário: ' + String(pw_gecos));
      Lista.Add('Dir.Inicial: ' + String(pw_dir) + 'Shell: ' + String(pw_shell));
    end;
  grp := getgrgid(Pass^.pw_gid);
  if grp <> nil then
    with grp^ do begin
      Lista.Add('');
      Lista.Add('Dados do Grupo');
      Lista.Add('Nome: ' + String(gr_name));
      Lista.Add('Senha: ' + String(gr_passwd));
      Lista.Add('ID: ' + InttoStr(gr_gid));
      Lista.Add('Membros: ');
      While gr_mem^ <> nil do begin
        Lista.Add('  ' + String(gr_mem^));
        Inc(gr_mem);
      end;
    end;
    Lista.Add('***************************');
end;

end.
