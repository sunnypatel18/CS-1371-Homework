  % Cycle thru all lengths, make vector of 
    ndx1 = length(houses);
        x = 1
        housevec = []
        minboth = []
        locboth = []
        while x <= ndx1
            % Creates a vector of indicies for the amount of lengths in the
            % field 'lengths'
            ndx = 1:(length(houses(x).lengths));
            
            [mins loc] = min(houses(x).lengths);
            minboth = [mins minboth];
            locboth = [loc locboth];
            housevec = {minboth locboth housevec}
            x = x + 1;
            A = housevec{1}
            B = housevec{2}
            C = housevec{3}
        end
        
            pathlength = houses(x).lengths(minloc);
            start = houses(x).name;
            to = houses(x).paths{minloc};
        
        
        
    ndx = 1:(length(houses.lengths));
    log = houses.lengths == min(houses.lengths);
    minloc = ndx(log);

    
    pathlength = houses.lengths(minloc);
    start = houses.name;
    to = houses.paths{minloc};
    
    houses.paths{minloc} = [];
    houses.lengths(minloc) = [];