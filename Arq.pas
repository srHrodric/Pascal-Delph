unit Arq;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
 Arquivo: TFileStream;
  //Declara variável para armazenar Arquivo
begin
  try
    //Abre o arquivo dentro da variável Arquivo
    Arquivo  := TFileStream.Create('/etc/crontab',
                fmOpenRead or fmShareDenyNone);
    // Atribui a propriedade Size do tipo de variavel TFileStream
    // ao Label1.Caption
    Label1.Caption  := Format('Tamanho do arquivo: %d',
                        [Arquivo.Size]);
    //Carrega o conteúdo da variável no objeto Memo
    Memo1.Lines.LoadFromStream(Arquivo);
  finally
    // Depois de carregado o arquivo Libera o mesmo da mémoria
    Arquivo.Free;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  ArqOriginal, ArqAntigo, Arquivo: TFileStream;
  //Declara variáveis que serão usadas para cópia
  begin
  try
    // Carrega o arquivo original e cria o novo arquivo.
    ArqOriginal := TFileStream.Create('/etc/crontab',
                    fmOpenRead or fmShareDenyNone);
    ArqAntigo := TFileStream.Create('/etc/crontab.novo',                   fmCreate or fmOpenWrite);

    // Copiar o arquivo antigo para o Backup com o metodo CopyFrom
    ArqAntigo.CopyFrom(ArqOriginal,
                            ArqOriginal.Size);
  finally
    // Libera as variaveis
    ArqOriginal.Free;
    ArqAntigo.Free;
  end;

  try
    // Carrega o arquivo crontab novamente na memória
    Arquivo  := TFileStream.Create('/etc/crontab',
                    fmCreate or fmOpenWrite);

    // Grava o conteudo do TMemo no arquivo
    Memo1.Lines.SaveToStream(Arquivo);
  finally
    // Libera a memória novamente
    Arquivo.Free;
  end;
end;

end.
