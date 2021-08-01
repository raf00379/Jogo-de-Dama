unit U_recorde;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls;
type  registro=record
      nome:string[20];
      pontos:integer;
end;
type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    Label17: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  arq:text;
    x:integer;
 dados:array[1..200]of registro;
 troca:registro;
implementation

{$R *.DFM}

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
var resp,i:integer;
begin
   resp:=messagebox(Application.Handle,'Certeza???','Atenção',36);
   //32 pelo beep mais 4 para a opção sim e não
   //7 o BOTÃO NÃO for pressionado
   if(resp=6)then //o botao sim for pressionado
   begin
     assignfile(arq,'recorde.txt');
     rewrite(arq);
     closefile(arq);
     label7.Caption:='';
     label8.Caption:='';
     label9.Caption:='';
     label10.Caption:='';
     label11.Caption:='';
     label12.Caption:='';
     label13.Caption:='';
     label14.Caption:='';
     label15.Caption:='';
     label16.Caption:='';
     for i:=1 to 5 do
      begin
       dados[i].nome:='';
       dados[i].pontos:=0;
      end;
   end;
end;

procedure TForm4.FormActivate(Sender: TObject);
var copia_pontos,linha_lida:string;i,j:integer;
begin
   x:=0;
   assignfile(arq,'recorde.txt');
   reset(arq);
   while not eof(arq) do
   begin
       readln(arq,linha_lida);
       copia_pontos:=copy(linha_lida,pos('*',linha_lida)+1,length(linha_lida));
       if(linha_lida<>'')then
       begin
          x:=x+1;
          dados[x].nome:=copy(linha_lida,0,pos('*',linha_lida)-1);
          dados[x].pontos:=strToInt(copia_pontos);
       end;
   end;
     closefile(arq);
    for i:=1 to x-1 do
     begin
       for j:=i+1 to x do
        begin
         if(dados[i].pontos>dados[j].pontos)then
          begin
           troca:=dados[i];
           dados[i]:=dados[j];
           dados[j]:=troca;
        end;
       end;
     end;
     label7.Caption:=' '+dados[1].nome;
     label8.Caption:=' '+dados[2].nome;
     label9.Caption:=' '+dados[3].nome;
     label10.Caption:=' '+dados[4].nome;
     label11.Caption:=' '+dados[5].nome;
     if(dados[1].pontos<>0)then
       label12.Caption:=Inttostr(dados[1].pontos);
     if(dados[2].pontos<>0)then
       label13.Caption:=Inttostr(dados[2].pontos);
     if(dados[3].pontos<>0)then
       label14.Caption:=Inttostr(dados[3].pontos);
     if(dados[4].pontos<>0)then
       label15.Caption:=Inttostr(dados[4].pontos);
     if(dados[5].pontos<>0)then
       label16.Caption:=Inttostr(dados[5].pontos);

end;

end.
