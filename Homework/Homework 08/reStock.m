function out = reStock(sup,cellarr)

[nums,txt,raw] = xlsread(sup);
ca_no_name = cellarr;
ca_no_name(1,:) = [];
[row,col] = size(ca_no_name);
aisle = [];
out = [];
a = 1;
while a<=(row*col)
   aisle = [aisle,ca_no_name{a}];
   a = a+1;
end
a = 1;
while a<=col
 b = 1;
   while b<=row
       stock = txt{aisle(b)+1,a};
       if strcmp(stock,'')
           out = [out,txt(1,a)];
           b = b+row+1000000000000;
       end
       b = b+1;
   end
   aisle(1:row) = [];
   a = a+1;
end
end
