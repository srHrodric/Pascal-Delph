unit Processador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
var
  SystemInfo : TSystemInfo;
begin
  GetSystemInfo(SystemInfo);
  with SystemInfo do begin
    case wProcessorArchitecture of
      0 : Label6.Caption := 'Intel';
      1 : Label6.Caption := 'Mips';
      2 : Label6.Caption := 'Alpha';
      3 : Label6.Caption := 'PPC';
      $FFFF : Label6.Caption := 'Desconhecido';
    end;
    Label7.Caption := IntToStr(dwNumberOfProcessors);
    case dwProcessorType of
      386 : Label8.Caption := '386';
      486 : Label8.Caption := '486';
      586 : Label8.Caption := 'Pentium';
      4000 : Label8.Caption := 'Mips';
      21064 : Label8.Caption := 'Alpha';
    end;
    case wProcessorLevel of
      3	: Label9.Caption := '386';
      4	: Label9.Caption := '486';
      5	: Label9.Caption := 'Pentium';
      6	: Label9.Caption := 'Pentium Pro/Pentium II/Celeron';
    end;
    Label10.Caption := IntToHex(wProcessorRevision,4);
  end;  
end;

end.
