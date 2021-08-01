{25-01-2009 -> corrigido Bug procedure TForm1.FormActivate. Antes de atribuir a estrutura
dados[x].pontos a string correspondente ao numero, o valor é testado pela função
TryStrToInt. Antes usando IntToStr ocorria erro quando atribuia-se valor não numerico a variavel.
Este erro evitava qualquer salvamento ou visualização dos recordes por parte do jogador.
Para quem não conhecesse o processo do jogo, o unico método era deletar o arquivo recorde.dat
na pasta raiz do jogo e executando novamente o programa para que ele criasse automaticamente o arquivo
01/2018 -> foi acrescentado tempo decorrido na lista dos 5 melhores jogadores.
}
unit U_lista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, XPMan;
type  registro=record
        nome:string[20];
        pontos:integer;
        tempo:integer;
        tempostr:string[20];
        datastr:string[10]
end;
type
  TForm1 = class(TForm)
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
    XPManifest1: TXPManifest;
    Label18: TLabel;
    Label33: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const N_MAX=1000;
var
  Form1: TForm1;
  arq:textfile;
    x:integer;
 dados:array[1..N_MAX]of registro;
 troca:registro;
implementation

uses U_principal;

{$R *.DFM}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var resp,i:integer;
begin
   resp:=messagebox(Application.Handle,'Certeza???','Atenção',36);

   //32 pelo beep mais 4 para a opção sim e não
   //7 o BOTÃO NÃO for pressionado
   if(resp=6)then //o botao sim for pressionado
   begin
      assignfile(arq,frm_principal.dir_inicial+'\recorde.dat');
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
      label29.Caption:='';
      label30.Caption:='';
      label33.Caption:='';
      label34.Caption:='';
      label35.Caption:='';
      label23.Caption:='';
      label22.Caption:='';
      label20.Caption:='';
      label21.Caption:='';
      label24.Caption:='';
      for i:=1 to 5 do
      begin
          dados[i].nome:='';
          dados[i].pontos:=0;
          dados[i].tempo:=0;
          dados[i].tempostr:='';
      end;
   end;
end;

procedure TForm1.FormActivate(Sender: TObject);
var copia_tempo,copia_pontos,linha_lida,copia_data:string;
i,j,hora,minuto,segundo:integer;
begin
   x:=0;
   for i := 1 to 5 do
   begin
        dados[i].tempo:= 0;
        dados[i].tempostr:='';
   end;
   assignfile(arq,frm_principal.dir_inicial+'\recorde.dat');
   reset(arq);
   while not eof(arq) do
   begin
       readln(arq,linha_lida);
       //copia_pontos:=copy(linha_lida,pos('*',linha_lida)+1,length(linha_lida));
       copia_pontos:= copy(linha_lida,pos('*',linha_lida)+1,pos(':',linha_lida));
        copia_tempo:= copy(linha_lida,pos(':',linha_lida)+1,pos('[',linha_lida));
         copia_data:= copy(linha_lida,pos('[',linha_lida)+1,Length(linha_lida));
       if(linha_lida<>'')then
       begin
          x:=x+1;
          if(x = N_MAX) then
          begin
              ShowMessage('Atingido o número máximo de registros');
              break;
          end;
          dados[x].nome:=copy(linha_lida,0,pos('*',linha_lida)-1);
          TryStrToInt(copia_pontos,dados[x].pontos);
          TryStrToInt(copia_tempo, dados[x].tempo);
          dados[x].datastr:= copia_data;
       end;
   end;
     closefile(arq);
    for i:=1 to x-1 do
     begin
       for j:=i+1 to x do
        begin
         if(dados[i].pontos = dados[j].pontos) then
         begin
                if(dados[i].tempo >= dados[j].tempo)then
                begin
                      troca:=dados[i];
                      dados[i]:=dados[j];
                      dados[j]:=troca;
                end;
         end
         else
         if(dados[i].pontos > dados[j].pontos)then
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

       for i:=1 to 5 do
       begin
           if(dados[i].tempo >= 3600)then
           begin
             hora:= dados[i].tempo div 3600;

              if(hora > 0)then
              begin
                   dados[i].tempostr:= FloatToStr(hora)+' Hs';
              end;
           end;
           minuto:= dados[i].tempo mod 3600;
           segundo:= minuto mod 60;
           if(minuto >= 60)then
           begin
               minuto:= minuto div 60;
               if(minuto < 10)then
                        dados[i].tempostr:=dados[i].tempostr+' 0'+ FloatToStr(minuto)+' Min'
                   else dados[i].tempostr:=dados[i].tempostr+' '+ FloatToStr(minuto)+' Min';
           end;
           if(segundo < 60)then
           begin
               if(segundo < 10) then
                    dados[i].tempostr:=dados[i].tempostr+' 0'+ FloatToStr(segundo)+' Seg'
               else dados[i].tempostr:=dados[i].tempostr+' '+ FloatToStr(segundo)+' Seg';
           end;
       end;
       if(dados[1].tempo <> 0) then
          label33.Caption:=dados[1].tempostr;
       if(dados[2].tempo <> 0) then
          label29.Caption:=dados[2].tempostr;
       if(dados[3].tempo <> 0) then
          label30.Caption:=dados[3].tempostr;
       if(dados[4].tempo <> 0) then
          label34.Caption:=dados[4].tempostr;
       if(dados[5].tempo <> 0) then
          label35.Caption:=dados[5].tempostr;

       if(dados[1].datastr <> ' ') then
          label23.Caption:=dados[1].datastr;
       if(dados[2].datastr <> ' ') then
          label22.Caption:=dados[2].datastr;
       if(dados[3].datastr <> ' ') then
          label20.Caption:=dados[3].datastr;
       if(dados[4].datastr <> ' ') then
          label21.Caption:=dados[4].datastr;
       if(dados[5].datastr <> ' ') then
          label24.Caption:=dados[5].datastr;

end;

end.
