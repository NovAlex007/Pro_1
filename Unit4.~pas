unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
{32-разрядный сумматор по модулю 2}
var
 i : integer;
 a,b : LongWord;
 sum : LongWord;
begin
 a := 4039875432;
 b := 1233445677;
 sum := (a+b) mod 2;
 Form4.Label1.Caption := inttostr(sum);
end;

procedure TForm4.Button2Click(Sender: TObject);
{сумматор больших чисел 64бита}
var
  a : int64;
  b : int64;
  sum : int64;
begin
  a := 523456789;
  b := 1098765432;
  sum := (a+b) mod 2;
  Form4.Label1.Caption := inttostr(sum);
end;

procedure TForm4.Button3Click(Sender: TObject);
{сумматор по модулю 2 в 32}
var
  a,b,sum : LongWord;
begin
  a := 4294967295;
  b := 3;
  sum := LongWord(a+b);
  Form4.Label1.Caption := inttostr(sum);
end;

procedure TForm4.Button4Click(Sender: TObject);
var
  a,b,sum : LongWord;
begin
  a := 4294967295;
  b := 1;
  sum :=(a+b) mod 4294967294;
  Form4.Label1.Caption := inttostr(sum);
end;

end.
