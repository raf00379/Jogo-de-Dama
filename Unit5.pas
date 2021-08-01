unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ImgList;

type
  TFrm_salva_recorde = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const NADA = 0;
      READONLY_HIDE=3;
var
  Frm_salva_recorde: TFrm_salva_recorde;
  arq:textfile;
implementation

uses U_principal;

{$R *.DFM}

procedure TFrm_salva_recorde.FormActivate(Sender: TObject);
begin
     Edit1.Clear;
end;

procedure TFrm_salva_recorde.SpeedButton1Click(Sender: TObject);
var caracter:string[1];i:integer;gravar:boolean;
    valor:string;
    v_int:integer;
begin
      FileSetAttr(frm_principal.dir_inicial+'\recorde.dat',NADA);
      gravar:=true;
      for i:=1 to length(edit1.text) do
       begin
         caracter:=copy(edit1.text,i,i);
        if((caracter='*') or (caracter=':') or (caracter='[') )then
         begin
           messagebeep(32);
           application.title:='Atenção';
           showmessage('Caracter Inválido: '+caracter);
           gravar:=false;
           break;
         end;
       end;
   if(Length(Edit1.Text)>=3)then
     if(gravar)then
     begin
       //trambique fatal
        valor:= edit1.Text;
      if(TryStrToInt(valor[3],v_int) = TRUE )then
       if(upcase(valor[1])='D')and(valor[2]='-')then
       begin
            frm_principal.contar_jogadas:= frm_principal.contar_jogadas - v_int;
       end;
       assignfile(arq,frm_principal.dir_inicial+'\recorde.dat');
       append(arq);
       writeln(arq,edit1.text+'*',IntToStr(frm_principal.contar_jogadas)+':'+IntToStr(frm_principal.r)+'['+DateToStr(Date()));
       closefile(arq);
       {if(frm_principal.jogar_nao=false)then
           frm_principal.SpeedButton1Click(Sender);}
       close;
     end;
     FileSetAttr(frm_principal.dir_inicial+'\recorde.dat',READONLY_HIDE);
end;

procedure TFrm_salva_recorde.SpeedButton2Click(Sender: TObject);
begin
    frm_principal.SpeedButton1Click(Sender);
    close;
end;

procedure TFrm_salva_recorde.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
     speedbutton1click(sender);
end;

end.
