function coloredCampanile(sides,angles,colors)
view(3);
z = 0;
ind = 1;
helper(sides,angles,colors,z,ind)
end
function helper(side,angle,color,z,ind)
if side<1
   axis equal;
   xlabel('x-axis');
   ylabel('y-axis');
   zlabel('z-axis');
   title('My Campanile');
else
   point1 = [-(side./2),side./2;-(side./2),-(side./2)];
   point2 = [-(side./2),-(side./2);-(side./2),side./2];
   point3 = [-(side./2),side./2;side./2,side./2];
   point4 = [side./2,side./2;-(side./2),side./2];
   a = 1;
   while a<=z
       point1 = [cos(angle),(-sin(angle));sin(angle),cos(angle)]*point1;
       point2 = [cos(angle),(-sin(angle));sin(angle),cos(angle)]*point2;
       point3 = [cos(angle),(-sin(angle));sin(angle),cos(angle)]*point3;
       point4 = [cos(angle),(-sin(angle));sin(angle),cos(angle)]*point4;
       a = a+1;
   end
   z = z.*ones(1,length(point1));
   
   i = mod(ind,length(color));
   if i==0
       i = length(color);
   end
   c = color(i);
   plot3(point1(1,:),point1(2,:),z,c,point2(1,:),point2(2,:),z,c,point3(1,:),point3(2,:),z,c,point4(1,:),point4(2,:),z,c);
   hold on
   side = 0.9*side;
   z = z+1;
   ind = ind+1;
   helper(side,angle,color,z,ind)
end
end