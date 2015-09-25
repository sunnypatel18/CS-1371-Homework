function printFunctionHeader(file)

fh = fopen(file);

line = fgetl(fh);

while ~isempty(line)
    [str line] = strtok(line, ': ');
end

name = str;
filename = [name '.m'];
fh2 = fopen(filename, 'w');

proceed = true;
while proceed
    line = fgetl(fh);
    if ~isempty(strfind(line,'Inputs'))
        for ndx = 1:2
            [str line] = strtok(line, '()');
            ins = str2num(str);
        end
    elseif ~isempty(strfind(line, 'Outputs'))
        for ndx = 1:2
            [str line] = strtok(line, '()');
            outs = str2num(str);
        end
        proceed = false;
    end
    
end

inputs = 'in1';
if ins >=2
    for ndx = 2:ins
        newin = sprintf('in%d', ndx);
        inputs = [inputs ',' newin];
    end
end
outputs = 'out1';
if outs >= 2
    for ndx = 2:outs
        newout = sprintf('out%d', ndx);
        outputs = [outputs ',' newout];
    end
end

text = sprintf('function [%s]=%s(%s)', outputs, name, inputs);
fprintf(fh2, '%s', text);

fclose(fh);
fclose(fh2);

end