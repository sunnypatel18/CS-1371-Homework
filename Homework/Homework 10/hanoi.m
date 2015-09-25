function [out] = hanoi(in)
if in<=0
   out = 0;
else
   out = 2*hanoi(in-1)+1;
end
end
