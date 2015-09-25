function [loc,price,powers] = findActionFigure(sain,heros)
name = {sain.Name};
pw = {sain.Powers};
pr = {sain.Price};
[row,col] = size(sain);
if all(~strcmp(heros,name))
   loc = 'Item not found';
   price = 0;
   powers = 'Item not found';
else
   ind = find(strcmp(name,heros));
   powers = pw{ind};
   price = pr{ind};
   c = ceil(ind/row);
   r = mod(ind,row);
   if r == 0;
       r = row;
   end
   r = char(r+64);
   c = num2str(c);
   loc = [r,c];
end
end