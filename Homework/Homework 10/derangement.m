function [out] = derangement(in)
if in<=0
   out = 'Invalid Input';
elseif in==1
   out = 0;
elseif in==2
   out = 1;
else
   out = (in-1).*(derangement(in-1)+derangement(in-2));
end
end

function [out] = hanoi(n)
if n<=0
   out = 0;
else
   out = 2*hanoi(n-1)+1;
end
end