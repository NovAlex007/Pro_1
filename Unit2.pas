unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
     f1 : file of byte;
     i : integer;
     b : byte;
begin
     AssignFile(f1,'c:\Test1.txt');
     Rewrite(f1);
     for i:= 1 to 1 do begin
     b := $01;
     Write(f1,b);
     end;
     CloseFile(f1);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
     f1 : file of byte;
     i : integer;
     b : byte;
begin
     AssignFile(f1,'c:\Test2.txt');
     Rewrite(f1);
     for i:= 1 to 1 do begin
     b := $ff;
     Write(f1,b);
     end;
     CloseFile(f1);
end;

procedure TForm2.Button3Click(Sender: TObject);
var
     f1 : file of byte;
     i : integer;
     b : byte;
begin
     AssignFile(f1,'c:\Test3.txt');
     Rewrite(f1);
     b := 49;
     for i:= 1 to 9 do begin
     Write(f1,b);
     b := b+1;
     end;
     CloseFile(f1);
end;

procedure TForm2.Button4Click(Sender: TObject);
var
     f1 : file of byte;
     i : integer;
     b : byte;
begin
     AssignFile(f1,'c:\Test4.txt');
     Rewrite(f1);
     for i:= 1 to 1000000 do begin
     b := $ff;
     Write(f1,b);
     end;
     CloseFile(f1);
end;

end.
