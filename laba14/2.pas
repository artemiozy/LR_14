var
 S: ShortString;
 var input,output: file of ShortString;
 MaxLen, i: integer;
begin
  Assign(input,'input.txt');
  Rewrite(input);
   write('Введите строки исходного файла:');
  for i:=1 to 5 do
  begin
       readln(s);
       write(input,s);
  end;
  Reset(input);
  Assign(output,'output.txt');
  Rewrite(output);
 
 MaxLen:=-1;
 
 
 while (not eof(input)) do
  begin
   Read(input,S);
   if (Length(S)>MaxLen) or (MaxLen=-1) then
   MaxLen:=Length(S);
  end;
 
 Close(input);
 Reset(input);
 
 
 while (not eof(input)) do
  begin
   Read(input,S);
   if Length(S)=MaxLen then
   Write(output,S);
  end;
 
 Close(input);
 Close(output);
end.