function st = cellToStruct(ca)
    evens = {}
    odds = {}
        for x = 1:2:length(ca)
            odds = [odds ca{x}]
        end
            
        for i = 2:2:length(ca)
            evens = [evens ca{i}]
        end
    
        for y = 1:length(odds)
            st.(odds{y}) = evens{y}
        end

end