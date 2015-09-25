function Shakespeare( file_name, a )

f1 = fopen(file_name, 'r');
line=fgetl(f1);
funcname = [line '.txt'];
fwrite = fopen(funcname, 'w'); 

while ischar(line)
    wl1 = fopen(a, 'r');
    line2=' ';
    while ischar(line2)
        line2=fgetl(wl1);
        [word rest]=strtok(line2, ',');
        replace= rest(3:end);
        ind= strfind(line, word);
        if length(ind)>0
            i = [length(ind):-1:1];
            for i =i 
            line=[line(1:ind(i)-1) replace line(ind(i)+length(word):end)];
            end
        end 

    end
    
    fprintf(fwrite, [line]);
    line=fgetl(f1);

    
   if line~=-1
      fprintf(fwrite, '\n');
   end
   

   fclose(wl1);
   
end
fclose(f1);
fclose(fwrite);
end 



