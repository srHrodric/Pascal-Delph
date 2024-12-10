unit prop;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QExtCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Shape4DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Shape4DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape3DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Shape2DragDrop(Sender, Source: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.Shape4DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
Accept := Source is Tlabel;
end;

procedure TForm1.Shape4DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
Shape4.Color := (Source as Tlabel).Color;
end;

procedure TForm1.Shape1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
Shape1.Color := (Source as Tlabel).Color;
end;

procedure TForm1.Shape3DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
Shape3.Color := (Source as Tlabel).Color;
end;

procedure TForm1.Shape2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
Shape2.Color := (Source as Tlabel).Color;
end;

end.
