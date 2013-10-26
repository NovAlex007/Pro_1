unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    Memo3: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label3: TLabel;
    Stream1: TMenuItem;
    Button2: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
//    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Stream1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  mas = array [0..255] of LongWord;
  mas1 = array [0..7] of char;
  s8 = string[8];
type
  mas_buf = array[0..9] of byte;
var
  Form1: TForm1;
  f : TFilestream;
  size : integer;
  CRCTable : mas;
  pytch : string[50];
implementation

uses Unit2, Unit3;

{$R *.dfm}

function CRC_Tab(poly : longword):mas;
  external 'lib_crc.dll' name 'CRC_Tab';

function CRC_32(b : byte; crc : LongWord ):LongWord;
var
  t : byte;
begin
  crc := (crc shl 8) xor CRCTable[(crc shr 24) xor b] ;
  Result := crc;
end;

function to16(a:LongWord):s8;
external 'lib_crc.dll' name 'to16';

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
begin
  Form1.Memo1.Clear;
  pytch := '';
  size := 0;
  if not OpenDialog1.Execute then
    begin
      ShowMessage('Îøèáêà!!!');
      exit;
    end;
  pytch := OpenDialog1.FileName;
  Form1.Memo1.Lines[0] := pytch;
  f := TFileStream.create(pytch, fmOpenRead);
  size := f.Seek(0,soFromEnd);
  f.Free;
  Form1.Label2.Caption := inttostr(size);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
     buf : mas_buf;
     res : s8;
     v,count,i,ind,kol : integer;
     crc : LongWord;
     Pol : LongWord;
begin
  Pol := $04C11DB7;
  CRCTable := CRC_Tab(Pol);
  crc := 0;
    f := TFileStream.create(pytch, fmOpenRead);
    kol := size;
    ind := 0;
    while kol >= 10 do
    begin
      f.Seek(ind,soFromBeginning);
      f.Read(buf,10);
      for i := 0 to 9 do
        begin
          crc := CRC_32(buf[i],crc);
        end;
      ind := ind + 10;
      kol := kol - 10;
    end;
    f.Read(buf,kol);
    for i:=0 to kol-1 do
    begin
      crc := CRC_32(buf[i],crc);
    end;
  res := to16(crc);
  Form1.Memo3.Lines[0]:=res;
  f.Free;
end;


procedure TForm1.N1Click(Sender: TObject);
begin
    Form2.Show;
end;

procedure TForm1.Stream1Click(Sender: TObject);
begin
 Form3.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form1.Memo1.Clear;
Form1.Memo3.Clear;
end;

end.
