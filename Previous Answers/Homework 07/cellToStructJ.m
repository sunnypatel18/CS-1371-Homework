
    function [struct] = cellToStruct(cell)

    for x = 1:2:length(cell)-1
        struct(1).(cell{x}) = cell{x+1};
    end

end