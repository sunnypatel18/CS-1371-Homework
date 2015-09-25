function coasters = sixFlags(filename, height)

fh = fopen(filename);
line = fgets(fh);
coasters = [];
x=1;
height(end) = '';
height = str2double(height);
while ischar(line)
    [token rest] = strtok(line, ':')
    
    rest(1:2) = '';
    rest(3) = '';
    rest = str2double(rest);
    if rest <= height
        coasters{1,x} = token;
        x = x+1;
    end
    
    line = fgets(fh);
end

coasters{1,x} = 'Monster Mansion';

fclose(fh);