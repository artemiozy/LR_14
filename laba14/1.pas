var f:file of char;
    c:char;
    i,k:integer;
begin
assign(f,'f:\lr14\mfile.txt');
rewrite(f);
write('Сколько символов записать в файл k=');
read(k);
writeln('Введите в файл ',k,' символов, в том числе пробел:');
for i:=1 to k do
 begin
  read(c);
  write(f,c);
 end;
reset(f);
k:=-1;
for i:=0 to filesize(f)-1 do
 begin
  read(f,c);
  if c=' ' then k:=i;
 end;
if k=-1 then
 begin
  writeln('Не введен пробел');
  close(f);
 end
else
 begin
  seek(f,k);
  truncate(f);
  seek(f,0);
  close(f);
 end;
end.