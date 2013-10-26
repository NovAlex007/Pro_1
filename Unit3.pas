unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  mas_buf = array[0..9] of byte;

var
  Form3: TForm3;

implementation

{$R *.dfm}

function s_buf(buf : mas_buf):string;
var
  s : string;
  i : integer;
begin
  s := '';
  for i:=0 to 9 do begin
    s := s + inttostr(buf[i]) + ', ';
  end;
  Result := s;
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  f : TFilestream;
  buf : mas_buf;
  s : string;
  v,count,i,ind,kol : integer;
begin
    f := TFileStream.create('c:\my.txt', fmOpenRead);
    v := f.Seek(0,soFromEnd);
    Form3.Label1.Caption := IntToStr(v);
    kol := v;
    ind := 0;
    while kol >= 10 do
    begin
      f.Seek(ind,soFromBeginning);
      f.Read(buf,10);
      s := s_buf(buf);
      Form3.Memo1.Lines.Add(s);
      ind := ind + 10;
      kol := kol - 10;
    end;
    f.Read(buf,kol);
    s := s_buf(buf);
    Form3.Memo1.Lines.Add(s);
   end;
end.
