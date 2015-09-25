function emailGen(file)

fid = fopen(file, 'r');
filelength = length(file);
namelength = filelength - 4;
newfile(1:namelength) = file(1:namelength);
newfile(namelength+1:namelength+10) = '_email.txt';
fh2 = fopen(newfile, 'w');
proceed = true;
newcontents = [];
while proceed
    line = fgetl(fid);
    proceed = ischar(line);
    while length(line)>0
        [user rest] = strtok(line, ',');
        line = rest;
        switch user(end)
            case {'1' '2' '3' '4' '5' '6' '7' '8' '9' '0'}
                user = [user '@gatech.edu\n'];
                newcontents = [newcontents user];
            otherwise
        end
    end
end
newcontents(end-1:end) = [];
fprintf(fh2, newcontents);
fclose(fid);
fclose(fh2);

end