var
    f: file of char;
    c: char;
    i: integer;
begin
    assign (f, 'text.txt');
    reset (f);
    c:='!';
    for i:=0 to filesize(f)-1 do
      begin
        if i mod 2 = 1 then
          begin
          seek(f,i);
          write(f,c);
        end;
        end;
    close(f);
 end.