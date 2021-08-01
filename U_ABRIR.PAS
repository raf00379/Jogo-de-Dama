unit U_Abrir;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    ScrollBar1: TScrollBar;
    Image1: TImage;
    Bevel1: TBevel;
    procedure ScrollBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ScrollBar1Change(Sender: TObject);
var x:integer;
begin
x:=scrollbar1.Position;
   case x of
      0:image1.Picture.LoadFromFile('img3.bmp');
      1:image1.picture.loadfromfile('img4.bmp');
      2:image1.picture.loadfromfile('img5.bmp');
      3:image1.picture.loadfromfile('Tbeige.bmp');
      4:image1.picture.loadfromfile('Tpreto.bmp');
      5:image1.picture.loadfromfile('Tbranco.bmp');
   end;
end;
end.
