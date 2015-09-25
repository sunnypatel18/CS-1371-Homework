function ca = LLcsvread(file)

fh = fopen(file);
proceed = true;
ca = {};
row = 1;
ndx = 1;

while proceed
    line = fgetl(fh);
    proceed = ischar(line);
    commas = length(find(line == ','))+1;
    if proceed
        for ndx = 1:commas
            [tok line] = strtok(line, ',');
            ca{row, ndx} = tok;
            ndx = ndx + 1;
        end
        row = row+1;
    else
        break
    end
end

end