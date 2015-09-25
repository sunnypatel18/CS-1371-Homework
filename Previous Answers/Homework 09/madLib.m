function sentence = madLib(fn, inc)
ia = 2;
iv = 2;
in = 2;
    % Access the file and find the size of the text block
    [num text raw] = xlsread(fn)
    [rows cols] = size(text);
    % Find the %s and isolate them
    while ~isempty(strfind(inc, '%'))
        [first last] = strtok(inc, '%');
        [replace rest] = strtok(last, ' ');
        if strcmp(replace(2), 'a')
            word = text{ia, 3};
            ia = ia + 1;
            replace(end+1) = ' '
            if replace(3) ~= ' '
                word = [word replace(3)];
            end
        elseif strcmp(replace(2), 'n')
            word = text{in, 1};
            in = in + 1;
            replace(end+1) = ' '
            if replace(3) ~= ' '
                word = [word replace(3)];
            end
        elseif strcmp(replace(2), 'v')
            word = text{iv, 2};
            iv = iv + 1;
            replace(end+1) = ' '
            if replace(3) ~= ' '
                word = [word replace(3)];
            end
        end
       inc = [first word rest]
    end
    fclose(fn);
    sentence = inc;
end