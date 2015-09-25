% PROBLEM 5.  Finding a Minimum Path
%--------------------------------------------------------------------------
%
% Function Name: findMinPath
% Inputs  (1): - (struct) A structure array of houses 
% Outputs (3): - (char) The name of the house to start laying cable from
%                (char) The name of the house to connect to
%                (double) The length of the path between the two houses
function [start to pathlength] = findMinPath(houses)

    % Create a vector of the possible starting names
    names = {};
    for i = 1:length(houses)
        names = [names houses(i).name]
    end
    % String compare names with possible paths, and wherever it's false
    % will be a possible path
    
    
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
end
% Function Description:
%   This function will be used to achieve step 2 in the overall
%   cableNetwork problem, so be sure you understand the overall concept
%   before beginning this problem.
%
%   Given a structure array of the currently connected houses, write a
%   function findMinPath that will find the minimum path from one of the
%   connected houses to a house that hasn't been connected yet.
%
% Hints:
%	- Remember that the path that you find shouldn't connect two houses
%	  that are already connected. This also includes houses that are
%	  connected by an intermediate house. Basically, this means we should
%	  avoid any circular paths in our network.
%   - If there are two paths of the same length that connect a house, take
%     the first path that you come across when iterating from the first
%     house in the structure array to the last house.
%
% Test Cases:
%	s = buildStruct([0 2 1; 2 0 0; 1 0 0], {'a' 'b' 'c'}) 
%
%   [from to len] = findMinPath(s(1))
%       from => 'a'
%       to => 'c'
%       len => 1
%
%	[from to len] = findMinPath(s([1 3]))
%       from => 'a'
%       to => 'b'
%       len => 2