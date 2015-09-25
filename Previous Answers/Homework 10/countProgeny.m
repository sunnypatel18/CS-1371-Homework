% PROBLEM 3.  It's All Relatives
%--------------------------------------------------------------------------
%
% Function Name: countProgeny
% Inputs  (1): - (struct) A family tree as described below 
% Outputs (1): - (double) The number of people in the given family tree 
function people = countProgeny(tree)
    if isempty(tree.children)
        people = length(tree);
    else
        a = tree.children;
        people = 0;
    end
        
        
end
% Function Description:
%   Given a family tree as described below, write a function named
%   countProgeny that will return the number of people in the family tree.
%   If there is no one in the tree at all, return zero.
%
%   The family tree will be represented as nested structures with two
%   fields: name and children. The name field contains the name of the
%   family member, and the children field contains a structure array of
%   that family member's children. 
%
%   We have included a createTree.p file to create test cases with. This
%   function takes in a list of names and the names of their parents, and
%   then creates a nested structure representing a family tree.
%   
%
% Constraints:
%	- You MUST use recursion for this problem.
%
% Hints:
%   - When a family member doesn't have any children, it's children field
%     will be an 1x0 (empty) structure.
%
% Test Cases:
%   t1 = createTree({'me' 'ma' 'gramma' 'bro' 'sis'}, {'ma', ...
% 'gramma',[],'ma', 'ma'});
%   t2 = createTree({'John' 'Carol' 'Alice' 'Bob'}, {'Carol', [], ...
% 'John', 'Carol'});
%
%   c1 = countProgeny(t1)
%       c1 => 5
%
%	c2 = countProgeny(t2)
%       c2 => 4