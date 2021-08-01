unit Sobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, ComCtrls, XPMan;

type
  TformSobre = class(TForm)
    Panel1: TPanel;
    Version: TLabel;
    Copyright: TLabel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formSobre: TformSobre;

implementation

{$R *.DFM}


procedure TformSobre.BitBtn1Click(Sender: TObject);
begin
          FormSobre.Close;
end;

procedure TformSobre.FormActivate(Sender: TObject);
begin
  version.Caption:=application.title;
end;

end.

