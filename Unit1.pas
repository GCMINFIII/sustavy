unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var zvysok,desiatkova:integer;
    vysledok:string;
begin
try
vysledok:='';
desiatkova:=strtoint(edit1.text);
repeat
begin
zvysok:=desiatkova mod 2;
vysledok:=inttostr(zvysok)+vysledok;
desiatkova:=desiatkova div 2;
end;
until desiatkova=0;
label1.Caption:=vysledok;
 except showmessage('Tam m� by� ��slo!');
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,d:integer;
    dvojkova:string;
    mocnina,sucet:real;
begin
sucet:=0;
mocnina:=0.5;
   dvojkova:=edit2.Text;
   d:=length(dvojkova);
   for i:= d downto 1 do
   begin
         mocnina:=mocnina*2;
         if dvojkova[i]='1' then begin
         sucet:=mocnina+sucet;
         end;
         label2.caption:=floattostr(sucet);
      end;

end;

end.
