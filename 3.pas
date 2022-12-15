var f,g,h:file of real;
    n, i:integer;
    a:real;
begin
randomize; //задаем рандом чисел
assign(f,'file1'); //связывает переменную с файлом на диске
rewrite(f); //открываем текстовый файл
write('Введите количество чисел исходного файла: ');
readln(n);
for i:=1 to n do
 begin
  a:=10*random;
  write(f,a);
 end;
randomize;
reset(f); //открываем файл на чтение
assign(g,'file2');//связываем переменную с файлом на диске
rewrite(g);//открываем текстовый файл
assign(h,'file3');//связываем переменную с файлом на диске
rewrite(h);//открываем текстовый файл
writeln('Содержание исходного файла:');
for i:=0 to filesize(f)-1 do
 begin
  read(f,a);
  write(a:0:2,' ');
  if odd(i)then write(g,a)
  else write(h,a)
 end;
writeln;
writeln;
seek(g,0);
writeln('Файл с четными номерами:');
while not eof(g) do
 begin
  read(g,a);
  write(a:0:2,' ');
 end;
close(g);
writeln;
writeln;
seek(h,0);
writeln('Файл с нечетными номерами:');
while not eof(h) do
 begin
  read(h,a);
  write(a:0:2,' ');
 end;
close(h);
end.