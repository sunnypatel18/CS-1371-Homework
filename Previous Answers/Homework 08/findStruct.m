function housename = findStruct(name, houses)
    log = strcmp(name, {houses.name});
    ndx = 1:length(log);
    if ~any(log)
        housename = -1;
    else
        location = ndx(log);
        housename = houses(location);
    end
end