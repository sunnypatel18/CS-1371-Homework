
    function [holeloc depth] = deepestCell(ca)  
ca = {{{{{true}}}}}
    count = zeros(1, length(ca))
    for i = 1:length(ca)
        while strcmp(class(ca{i}), 'cell')
            count(i) = count(i)+1
            ca(i) = ca{i}
        end
    end
    [depth holeloc] = max(count)

end