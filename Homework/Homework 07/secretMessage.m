function secretMessage(file_name)

file = file_name
%file is the filename
fh = fopen(file, 'r')
%opens the document
file2 = [strtok(file, '.') '_decoded.txt']
%creates the name of the new document
fh2 = fopen(file2, 'w')
%creates the new file with write permission
line = fgets(fh)
%pulls up the first line

while ischar(line)
           fprintf(fh2, '%s', line)
        %if the file handle is a number which
        %is not divisible by 2 it is odd
        %meaning that we do want to write that line
    
    line = fgets(fh)
    line = fgets(fh)
    %pulls up next line
end
fclose(fh)
fclose(fh2)
end