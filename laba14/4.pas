var f,g:file of real;
    n, i:integer;
    a,s:real;
begin
randomize;
assign(f,'file4');
rewrite(f);
write('Введите количество чисел исходного файла: ');
readln(n);
for i:=1 to n do
 begin
  a:=10*random;
  write(f,a);
 end;
reset(f);
writeln('Содержание исходного файла:');
s:=0;
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a:0:2,' ');
  if i mod 2 = 1 then s:=s+a;
 end;writeln;
 writeln(s:0:2);
end.