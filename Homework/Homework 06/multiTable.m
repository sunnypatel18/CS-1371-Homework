function table = multiTable(num)
    
    % Sets up top row, which will just be a vector from 1 to the input
    
    vec = 1:num;
    
    % Sets up the first column, which will be vec with a zero in front
    % "vec" and "multipliers" will be the top left corner of the table
    
    multipliers = [0; transpose(vec)];
    
    % The relationship between the inside rows is vec multiplied by an
    % integer from 1 to "num"
    
    i = 1;
    row = [];
    for i = vec
        row = [row; vec .* multipliers(1 + i)];
    end
    table = [vec; row];
    table = [multipliers table];    
end