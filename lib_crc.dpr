library lib_crc;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes;

{$R *.res}

type
 mas = array [0..255] of longword;
 s8 = string[8];

function CRC_Tab(poly : longword): mas;
var
i,j : integer;
crc : longword;
tab : mas;
begin
for i:= 0 to 255 do
  begin
    crc := i;
    crc := crc shl 24;
    for j := 8 downto 1 do
      begin
        if (crc and (1 shl 31))<>0 then
          crc := (crc shl 1) xor poly
        else
          crc := (crc shl 1);
      end;
    tab[i] := crc;
  end;
  Result := tab;
end;



function to16(a:LongWord):s8;
var
  i : integer;
  c,d,num : integer;
  s : string;
begin
  s:='00000000';
  i := 0;
  c := 1;
  d := 0;
  num := 8;
  while c<>0 do
  begin
    d := a mod 16;
    c := a div 16;
    a := c;
    begin
      case d of
      0:s[num]:='0';
      1:s[num]:='1';
      2:s[num]:='2';
      3:s[num]:='3';
      4:s[num]:='4';
      5:s[num]:='5';
      6:s[num]:='6';
      7:s[num]:='7';
      8:s[num]:='8';
      9:s[num]:='9';
      10:s[num]:='a';
      11:s[num]:='b';
      12:s[num]:='c';
      13:s[num]:='d';
      14:s[num]:='e';
      15:s[num]:='f';
      end
    end;
    num := num - 1;
  end;
  Result := s;
end;

exports CRC_Tab,to16;

begin
end.
