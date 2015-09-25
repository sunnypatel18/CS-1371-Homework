function pirateShip()
clf
u = linspace(0,-10);
v = linspace(-10,0);
u2 = [-10, -10, 0];
v2 = [0, 40, 40];
ang = pi;
u3 = linspace(0,-5);
v3 = linspace(-5,0);
u4 = [-5,-5,0];
v4 = [0,20,20];
ang3=pi;
[xx,yy,zz] = makeShip(u,v,ang,'y');
xx = xx-70;
yy = yy-70;
[xx2,yy2,zz2] = makeShip(u2,v2,ang,'y');
xx2 = xx2-70;
yy2 = yy2-70;
[xx3,yy3,zz3]=makeShip(u3,v3,ang3,'x');
[xx4,yy4,zz4]=makeShip(u4,v4,ang3,'x');
[xxc,yyc,zzc] = CylindArrs(9,2,'x');
[xxc,yyc,zzc] = rotateAxis(xxc,yyc,zzc,pi./4,'y');
xxc = xxc-60;
yyc = yyc-62;
zzc = zzc-2;
[xxcb,yycb,zzcb] = cannonBall(1.5);
xxcb = xxcb-31;
yycb = yycb-75;
zzcb = zzcb+5;
[xxs,yys,zzs] = cannonBall(12);
zzs = zzs+50;
xxs = xxs+80;
u = [0,0.75,0.75,3,0.75,0.75,0,0];
v = [3,-2,7.5,2.25,9.75,13.5,15,3];
[xxr,yyr,zzr] = makeShip(u,v,2*pi,'x');
zzr = zzr+60;
xxr = xxr-120;
a = 1;
while a<=30
   hold off
   surf(xx,yy,zz);
   hold on;
   surf(xx2,yy2,zz2);
   surf(xxc,yyc,zzc);
   surf(xx3,yy3,zz3);
   surf(xx4,yy4,zz4);
   surf(xxs,yys,zzs);
   colormap pink
   shading flat
   surf(xxr,yyr,zzr);
   axis([-150, 100, -100, 150, -20, 60]);
   axis off
   view(-157,20);
   if a~=3
   [xx,yy,zz] = rotateAxis(xx,yy,zz,pi./20,'z');
   [xx2,yy2,zz2] = rotateAxis(xx2,yy2,zz2,pi./20,'z');
   [xxc,yyc,zzc] = rotateAxis(xxc,yyc,zzc,pi./20,'z');
   end
   if a>=1&a<=8
       title(sprintf('Captain: FIRE NOW MATES \n Crew: AYY AYY CAPTAIN \n Fisherman: OH SHIT THEY ARE SHOOTING AT US'));
   elseif a>=9&a<=20
       title(sprintf('Captain: WHAT ARE YOU DOING \n Crew: I AM SORRY CAPTAIN WE MISSED \n Fisherman: TIME TO GET OUT OF HERE'));
   elseif a>=18&a<=30
       title(sprintf('Captain: THAT WAS THE WORST SHOT I HAVE EVER SEEN IN MY LIFE. YOU ARE ALL FIRED  \n Crew: DONT FIRE US WE ARE SO SORRY  \n Fisherman: THOSE PIRATES SUCK SO MUCH'));
   end
   if a>=3&a<=10
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb+4;
       xxr = xxr+3;
   elseif a==11
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb+3;
       xxr = xxr+3;
   elseif a==12
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb+2;
       xxr = xxr+3;
   elseif a==13
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb+1;
       xxr = xxr+3;
   elseif a==14
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       xx3 = xx3-20;
       xx4 = xx4-20;
       xxr = xxr+3;
   elseif a==15
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb-1;
       xx3 = xx3-20;
       xx4 = xx4-20;
       xxr = xxr+3;
   elseif a==16
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb-2;
       xx3 = xx3-20;
       xx4 = xx4-20;
       xxr = xxr+3;
   elseif a==17
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb-3;
       xx3 = xx3-20;
       xx4 = xx4-20;
       xxr = xxr+3;
   elseif a>=18
       surf(xxcb,yycb,zzcb);
       xxcb = xxcb+7;
       zzcb = zzcb-4;
       xx3 = xx3-20;
       xx4 = xx4-20;
       xxr = xxr+3;
   else
       xxr = xxr+3;
   end
    a = a+1;
   grid off
   pause(0.3)
end


% Creative changes I made to the assignment include: 
%1.) Added a moon and a Bird
%2.) Made a smaller boat. 
%3.) The fishman boat moves off the screen
%4.) The bird moves
%5.) Added the "mast" to the front of the boat allowing it ram other boats.
end

function [xx,yy,zz] = cannonBall(radius)
th = linspace(0,2.*pi,100);
u = radius.*cos(th);
v = radius.*sin(th);
[uu,tth] = meshgrid(u,th);
vv = meshgrid(v,th);
rr = vv;
zz = uu;
xx = rr.*cos(tth);
yy = rr.*sin(tth);
end

function [xx,yy,zz] = CylindArrs(l,radius,axis)
th = linspace(0,2*pi,100);
if strcmp('x',axis)
   u = [0,radius,radius,0,0];
   v = [0,0,l,l,0];
   [uu,tth] = meshgrid(u,th);
   vv = meshgrid(v,th);
   xx = vv;
   rr = uu;
   zz = rr.*cos(tth);
   yy = rr.*sin(tth);
elseif strcmp('y',axis)
   u = [0,radius,radius,0,0];
   v = [0,0,l,l,0];
   [uu,tth] = meshgrid(u,th);
   vv = meshgrid(v,th);
   yy = vv;
   rr = uu;
   xx = rr.*cos(tth);
   zz = rr.*sin(tth);
elseif strcmp('z',axis)
   u = [0,radius,radius,0,0];
   v = [0,0,l,l,0];
   [uu,tth] = meshgrid(u,th);
   vv = meshgrid(v,th);
   zz = vv;
   rr = uu;
   xx = rr.*cos(tth);
   yy = rr.*sin(tth);
end
end

function [xx,yy,zz] = makeShip(u,v,angle,axis)
thr = linspace(0,angle,300);
if strcmp('x',axis)
[vv,th] = meshgrid(v,thr);
uu = meshgrid(u,thr);
xx = vv;
rr = uu;
yy = rr.*cos(th);
zz = rr.*sin(th);
elseif strcmp('y',axis)
[vv,th] = meshgrid(v,thr);
uu = meshgrid(u,thr);
yy = vv;
rr = uu;
xx = rr.*cos(th);
zz = rr.*sin(th);
elseif strcmp('z',axis)
[vv,th] = meshgrid(v,thr);
uu = meshgrid(u,thr);
zz = vv;
rr = uu;
xx = rr.*cos(th);
yy = rr.*sin(th); 
end
end

function [xx,yy,zz] = rotateAxis(x,y,z,angle,axis)
if strcmp('x',axis)
   xx = x;
   y2 = y(:)';
   z2 = z(:)';
   points = [y2;z2];
   points = [cos(angle),-sin(angle);sin(angle),cos(angle)]*points;
   y3 = points(1,:);
   z3 = points(2,:);
   [row,col] = size(xx);
   yy = [];
   zz = [];
   a = 1;
   while a<=col
       y4 = y3(1:row)';
       z4 = z3(1:row)';
       y3(1:row) = [];
       z3(1:row) = [];
       yy = [yy,y4];
       zz = [zz,z4];
       a = a+1;
   end
elseif strcmp('y',axis)
   yy = y;
   x2 = x(:)';
   z2 = z(:)';
   points = [x2;z2];
   points = [cos(angle),-sin(angle);sin(angle),cos(angle)]*points;
   x3 = points(1,:);
   z3 = points(2,:);
   [row,col] = size(yy);
   xx = [];
   zz = [];
   a = 1;
   while a<=col
       x4 = x3(1:row)';
       z4 = z3(1:row)';
       x3(1:row) = [];
       z3(1:row) = [];
       xx = [xx,x4];
       zz = [zz,z4];
       a = a+1;
   end
elseif strcmp('z',axis)
   zz = z;
   x2 = x(:)';
   y2 = y(:)';
   points = [x2;y2];
   points = [cos(angle),-sin(angle);sin(angle),cos(angle)]*points;
   x3 = points(1,:);
   y3 = points(2,:);
   [row,col] = size(zz);
   xx = [];
   yy = [];
   a = 1;
   while a<=col
       x4 = x3(1:row)';
       y4 = y3(1:row)';
       x3(1:row) = [];
       y3(1:row) = [];
       xx = [xx,x4];
       yy = [yy,y4];
       a = a+1;
   end
end
end