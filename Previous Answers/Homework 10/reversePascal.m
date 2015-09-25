function [bi exp] = reversePascal(poly)
    exp = (length(poly) -1);
    if length(poly) == 2
        bi = [poly(1) poly(end)];
    else
        for x = 2:length(poly)
            poly(x) = poly(x) - poly(x-1);
        end
        if poly(end) == 0
            poly(end) = [];
        end
        bi = reversePascal(poly);
    end
end