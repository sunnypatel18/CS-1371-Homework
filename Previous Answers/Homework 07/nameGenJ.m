
    function [usernames] = nameGen(info)

    numusers = length(info{1});
    for x = 1:numusers
        info{2}{x}(1) = char(info{2}{x}(1)+32);
    end
    for i = 1:numusers
        usernames{i} = [char(info{1}{i}(1)+32), info{2}{i}, num2str(info{3}(i))];
    end

end