unit UStack;

interface

uses
  SysUtils, Windows;

const
  MaxN = 100;

type
  TElem = integer;
  TMas = array [1 .. MaxN] of TElem;
  TSTack = record
    Elems: TMas;
    top: integer;
  end;

procedure Init (var s:TStack);
function IsEmpty (var s:TStack):boolean;
procedure Push (var s:TStack; el:TElem);
function TryPush (var s:TStack; el:TElem):boolean;
function Pop (var s:TStack):telem;
function TryPop (var s:TStack; var el:TElem):boolean;
function Seek(var s:TSTack):TElem;

//Преобразование стэка в строку
function StackToStr(var s:Tstack):string;

implementation

//преобразование стэка в строку
function StackToStr;
var
  i:integer;
begin
  result:='';
  for i:=1 to s.top do
    result:= result + ' ' + IntToStr(s.Elems[i]);
  result:= trim(result);
end;

function Seek(var s:TSTack):TElem;
begin
  if not IsEmpty(s) then
    Result:= s.elems[s.top]
  else
    raise Exception.Create('Стек пуст');
end;

procedure Init (var s:TStack);
begin
  s.top:= 0;
end;

function IsEmpty (var s:TStack):boolean;
begin
  result:= (s.top = 0);
end;

procedure Push(var s:TStack; el:TElem);
begin
  if s.top >= MaxN then
    raise Exception.Create('Стек переполнен');
  inc(s.top);
  s.Elems[s.top]:= el;
end;

function TryPush (var s:TStack; el:TElem):boolean;
begin
  result := s.top < MaxN;
  if result then
  with s do
  begin
    inc(top);
    Elems[top] := el;
  end;
end;

function Pop (var s:TStack):telem;
begin
  if IsEmpty(s) then
    raise Exception.Create ('Попытка достать из пустого стека');
  result:= s.Elems[s.top];
  dec(s.top);
end;

function TryPop (var s:TStack; var el:TElem):boolean;
begin
  result := not IsEmpty(s);
  if result then
  with s do
  begin
    el := Elems[top];
    dec(top);
  end;
end;

end.
