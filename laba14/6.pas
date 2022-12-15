var f,g:file of real;
n, i, maxi,mini:integer;
a,s, max, min:real;
var mas: array of real;
begin
randomize;
assign(f,'max');
rewrite(f);
write('Введите количество чисел исходного файла: ');
readln(n);
SetLength (mas,n);
for i:=1 to n do
begin
a:=10*random;
write(f,a);
mas[i-1]:=trunc(a * 100 + 0.5)/100; 
end;
println(mas);
min:=mas[0];
mini:=1;
for i:=1 to n-1 do begin
 if mas[i]<min then begin
 min:=mas[i];
 mini:=i+1;
 end;
 end;
 max:=mas[0];
 maxi:=1;
for i:=1 to n-1 do
 if mas[i]>max then begin
 max:=mas[i];
 maxi:=i+1;
 end;
 assign(g,'max1');
rewrite(g);
for i:=1 to n do
begin
  if (i = maxi) then
    write(g,mas[mini-1])
  else 
  begin
  if (i=mini) then
    write(g,mas[maxi-1])
  else 
  write(g,mas[i-1]);
  end;
  end;
  reset(g);
  writeln('Содержание файла чисел g :');
while not eof(g) do
 begin
  read(g,a);
  write(a:0:2,' ');
 end;
close(g);
close(f);
end.