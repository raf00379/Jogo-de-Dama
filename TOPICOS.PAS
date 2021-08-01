unit Topicos;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, ImgList, ToolWin;

type
  TformTopicos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    OKBtn: TButton;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    MemoObjetivo: TMemo;
    PanelTitulo: TPanel;
    MemoHistoria: TMemo;
    MemoRegras: TMemo;
    MemoJogando: TMemo;
    MemoOpen: TMemo;
    Image1: TImage;
    Memo1: TMemo;
    Edit1: TEdit;
    Panel4: TPanel;
    BtnBusca: TButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    MemoConfiguracoes: TMemo;
    procedure SpeedButton1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OKBtnClick(Sender: TObject);
    procedure SpeedButton4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTopicos: TformTopicos;

implementation

uses U_principal;

{$R *.DFM}

procedure TformTopicos.SpeedButton1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton2.Font.Size:=8;
 SpeedButton3.Font.Size:=8;
 SpeedButton4.Font.Size:=8;
 SpeedButton9.Font.Size:=8;
 SpeedButton1.Font.Size:=10;
 PanelTitulo.Caption:='Objetivo da dama';
 MemoOpen.visible:=false;
 MemoHistoria.Visible:=false;
 MemoRegras.Visible:=false;
 MemoJogando.Visible:=false;
 MemoObjetivo.Visible:=true;
 MemoConfiguracoes.Visible:=false;
end;
procedure TformTopicos.OKBtnClick(Sender: TObject);
begin
 formTopicos.Close;
end;

procedure TformTopicos.SpeedButton4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton2.Font.Size:=8;
 SpeedButton3.Font.Size:=8;
 SpeedButton1.Font.Size:=8;
 SpeedButton9.Font.Size:=8;
 SpeedButton4.Font.Size:=10;
 PanelTitulo.Caption:='Jogando dama';
 MemoOpen.visible:=false;
 MemoHistoria.Visible:=false;
 MemoRegras.Visible:=false;
 MemoObjetivo.Visible:=false;
 MemoJogando.Visible:=true;
 MemoConfiguracoes.Visible:=false;
end;

procedure TformTopicos.SpeedButton2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton1.Font.Size:=8;
 SpeedButton3.Font.Size:=8;
 SpeedButton4.Font.Size:=8;
 SpeedButton9.Font.Size:=8;
 SpeedButton2.Font.Size:=10;
 PanelTitulo.Caption:='História da dama';
 MemoOpen.visible:=false;
 MemoObjetivo.Visible:=false;
 MemoRegras.Visible:=false;
 MemoJogando.Visible:=false;
 MemoConfiguracoes.Visible:=false;
 MemoHistoria.Visible:=true;
end;

procedure TformTopicos.SpeedButton3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton2.Font.Size:=8;
 SpeedButton1.Font.Size:=8;
 SpeedButton4.Font.Size:=8;
 SpeedButton9.Font.Size:=8;
 SpeedButton3.Font.Size:=10;
 PanelTitulo.Caption:='Regras do jogo';
 MemoOpen.visible:=false;
 MemoHistoria.Visible:=false;
 MemoConfiguracoes.Visible:=false;
 MemoObjetivo.Visible:=false;
 MemoJogando.Visible:=false;
 MemoRegras.Visible:=true;
end;

procedure TformTopicos.PageControl1Change(Sender: TObject);
begin
 if PageControl1.ActivePage = TabSheet1 then
  begin
   Memo1.Visible:=False;
   Panel4.Visible:=False;
   Edit1.Visible:=false;
   Panel3.Visible:=true;
   SpeedButton1.Visible:=true;
   SpeedButton2.Visible:=true;
   SpeedButton3.Visible:=true;
   SpeedButton4.Visible:=true;
   SpeedButton5.Visible:=false;
   SpeedButton6.Visible:=false;
   SpeedButton7.Visible:=false;
   SpeedButton8.Visible:=false;
     Image1.Visible:=true;
   BtnBusca.Visible:=false;
  end;
 If PageControl1.ActivePage = TabSheet2 Then
  begin
   Panel3.Visible:=false;
   SpeedButton1.Visible:=false;
   SpeedButton2.Visible:=false;
   SpeedButton3.Visible:=false;
   SpeedButton4.Visible:=false;
   SpeedButton5.Visible:=true;
   SpeedButton6.Visible:=true;
   SpeedButton7.Visible:=true;
   SpeedButton8.Visible:=true;
   Image1.Visible:=false;
   MemoOpen.Visible:=true;
   Memo1.Visible:=true;
   Panel4.Visible:=true;
   Edit1.Visible:=true;
   Edit1.SetFocus;
   PanelTitulo.Visible:=false;
   btnBusca.Visible:=true;
  end;
end;

procedure TformTopicos.FormActivate(Sender: TObject);
begin
 memoOpen.Visible:=true;
 PageControl1.ActivePage:=TabSheet2;
end;

procedure TformTopicos.SpeedButton5MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton5.Font.Color:=clred;
 SpeedButton6.Font.Color:=clWindowtext;
 SpeedButton7.Font.Color:=clWindowtext;
 SpeedButton8.Font.Color:=clWindowtext;
end;

procedure TformTopicos.SpeedButton6MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton6.Font.Color:=clred;
 SpeedButton5.Font.Color:=clWindowtext;
 SpeedButton7.Font.Color:=clWindowtext;
 SpeedButton8.Font.Color:=clWindowtext;
end;

procedure TformTopicos.SpeedButton7MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton7.Font.Color:=clred;
 SpeedButton6.Font.Color:=clWindowtext;
 SpeedButton5.Font.Color:=clWindowtext;
 SpeedButton8.Font.Color:=clWindowtext;
end;

procedure TformTopicos.SpeedButton8MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SpeedButton8.Font.Color:=clred;
 SpeedButton6.Font.Color:=clWindowtext;
 SpeedButton7.Font.Color:=clWindowtext;
 SpeedButton5.Font.Color:=clWindowtext;
end;



procedure TformTopicos.SpeedButton9Click(Sender: TObject);
begin
 SpeedButton1.Font.Size:=8;
 SpeedButton2.Font.Size:=8;
 SpeedButton3.Font.Size:=8;
 SpeedButton4.Font.Size:=8;
 SpeedButton9.Font.Size:=10;
 PanelTitulo.Caption:='Configurando a dama';
 MemoOpen.visible:=false;
 MemoHistoria.Visible:=false;
 MemoRegras.Visible:=false;
 MemoObjetivo.Visible:=false;
 MemoJogando.Visible:=false;
 MemoConfiguracoes.Visible:=true;
end;

end.

