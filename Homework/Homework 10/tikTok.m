function tikTok(dat,times)
dat = showDate(dat);
plot(0,0,'ko');
hold on;
th = linspace(0,2*pi);
plot(cos(th),sin(th),'k');
hold on;
point = [0,0;0.9,1];
a = 1;
while a<=12
   plot(point(1,:),point(2,:),'k');
   hold on
   point = [cos(pi/6),(-sin(pi/6));sin(pi/6),cos(pi/6)]*point;
   a = a+1;
end 

title(['Today is ',dat,' and the Time is ',times]);

[hour,minute] = strtok(times,':');
hour = str2num(hour);
point = [0,0;0,0.6];
a = 1;
while a<=hour
   point = [cos(pi/6),sin(pi/6);(-sin(pi/6)),cos(pi/6)]*point;
   a = a+1;
end
plot(point(1,:),point(2,:),'b');
hold on;

minute(1) = [];
minute = str2num(minute);
point = [0,0;0,0.9];
a = 1;
while a<=minute
   point = [cos(pi/30),sin(pi/30);(-sin(pi/30)),cos(pi/30)]*point;
   a = a+1;
end
plot(point(1,:),point(2,:),'r');
hold on;
end