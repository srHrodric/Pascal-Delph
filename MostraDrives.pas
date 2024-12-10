unit MostraDrives;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QComCtrls;

type
  TForm1 = class(TForm)
    ListView1: TListView;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Lista : TStringList;
  Linha : String;
  PosAtu : Integer;
  i,j : Integer;
begin
// cria a Lista de strings
  Lista := TStringList.Create;
  try
// carrega o arquivo na lista
    Lista.LoadFromFile('/etc/fstab');
// processa todas as linhas
    for i := 0 to Lista.Count-1 do begin
// elimina os espacos antes e depois da linha
      Linha := Trim(Lista[i]);
// se linha est� em branco ou comeca com # (coment�rio) - despreza
      if (Linha <> '') and (Copy(Linha,1,1) <> '#') then
// adiciona uma linha na ListView para cada dispositivo
        with ListView1.Items.Add do begin
// a separa��o de campos pode ser feita com tabulac�o ou
//    espacos
          PosAtu := Pos(#9,Linha);
          if PosAtu = 0 then
// n�o encontrou tabulac�o. Tenta espacos
            PosAtu := Pos(' ',Linha);
          if PosAtu > 0 then begin
// encontrou separacao de campos. Coloca o nome do dispositivo
//   e despreza a parte inicial da linha
            Caption := Copy(Linha,1,PosAtu-1);
            Linha := Trim(Copy(Linha,PosAtu+1,Length(Linha)));
          end
          else begin
// n�o encontrou separador de campos. O dispositivo � a linha
            Caption := Linha;
            Linha := '';
          end;
          for j := 1 to 2 do begin
// quebra as duas partes seguintes da linha e coloca na Listview
            PosAtu := Pos(#9,Linha);
            if PosAtu = 0 then
              PosAtu := Pos(' ',Linha);
            if PosAtu > 0 then begin
              SubItems.Add(Copy(Linha,1,PosAtu-1));
              Linha := Trim(Copy(Linha,PosAtu+1,Length(Linha)));
            end
            else begin
              Subitems.Add(Linha);
              Linha := '';
              break;
            end;
          end;
        end;
    end;
  finally
    Lista.Free;
  end;
end;

end.
