var f,g:file of real;
n, i:integer;
a,s, max:real;
var mas: array of real;
begin
randomize;
assign(f,'maximum');
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
max:=mas[0];
for i:=0 to n-1 do 
begin
  if i=0 then
    if mas[1]>max then
      max:=mas[1];
      if (i> 0) and (i<n-1) then
        begin
        if (mas[i]>mas[i-1]) and (mas[i]>mas[i+1]) then
          begin
          max:=mas[i];
          end;
          end;
        if mas[n-1]>mas[n-2] then max:=mas[n-1];
end;
print(mas);
print(max);
end.