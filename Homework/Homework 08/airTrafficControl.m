function [out] = airTrafficControl(rad,filename,cell)
[xlsnum,xlstext,xlsraw] = xlsread(filename);
[row,col] = size(rad);
ATCpos = [(row+1)/2,(col+1)/2];
distance = [];
planedist = [];
r = 1;
while r<=row
   c = 1;
   while c<=col
       plane = rad{r,c};
       if ischar(plane)&~strcmpi(plane,'ATC')
           difference = ATCpos-[r,c];
           height = difference(1)*cell;
           width = difference(2)*cell;
           d = sqrt((height^2)+(width^2));
           distance = [distance,d];
           planedist = [planedist,{plane}];
       end
       c = c+1;
   end
   r = r+1;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
planexls2 = xlsraw(:,1);
a = 1;
planexls = [];
while a<=length(planexls2)
   planexls = [planexls,' ',planexls2{a,1}];
   a = a+1;
end
planexls(1) = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a = 1;
speedind = [];
while a<=length(planedist)
   tk = planedist{a};
   ind = strfind(planexls,tk);
   ind = planexls(1:ind);
   ind = sum(ind==' ');
   ind = ind+1;
   speedind = [speedind,ind];
   a = a+1;
end

speedxls = xlsnum';

speed = speedxls(speedind);

time = distance./speed;

a = 1;
out = [];
p = length(time);
while a<=p
   planeind = find(time==min(time));
   time(planeind) = [];
   name = planedist{planeind};
   planedist(planeind) = [];
   out = [out,{name}];
   a = a+1;
end
end
