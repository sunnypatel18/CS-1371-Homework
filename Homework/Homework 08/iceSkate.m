function [new,win] = iceSkate(cellarr)
skater = cellarr(:,1);
if strcmp(cellarr{1,2},'Long Program')
   LP = cellarr(:,2);
elseif strcmp(cellarr{1,2},'Short Program')
   SP = cellarr(:,2);
else
   BE = cellarr(:,2);
end
if strcmp(cellarr{1,3},'Long Program')
   LP = cellarr(:,3);
elseif strcmp(cellarr{1,3},'Short Program')
   SP = cellarr(:,3);
else
   BE = cellarr(:,3);
end
if strcmp(cellarr{1,4},'Long Program')
   LP = cellarr(:,4);
elseif strcmp(cellarr{1,4},'Short Program')
   SP = cellarr(:,4);
else
   BE = cellarr(:,4);
end

for a=2:length(LP)
   score = LP{a,1};
   score = sum(score)/length(score);
   LP{a,1} = score;
end
for a=2:length(SP)
   score = SP{a,1};
   score = sum(score)/length(score);
   SP{a,1} = score;
end
for a=2:length(BE)
   score = BE{a,1};
   score = sum(score)/length(score);
   BE{a,1} = score;
end

a = 2;
while a<=length(LP);
   LP{a,1} = LP{a,1}*0.6;
   a = a+1;
end
a = 2;
while a<=length(SP);
   SP{a,1} = SP{a,1}*0.3;
   a = a+1;
end
a = 2;
while a<=length(BE);
   BE{a,1} = BE{a,1}*0.1;
   a = a+1;
end

a = 2;
outLP = [];
while a<=length(LP)
   outLP = [outLP;LP{a,1}];
   a = a+1;
end
a = 2;
outSP = [];
while a<=length(SP)
   outSP = [outSP;SP{a,1}];
   a = a+1;
end
a = 2;
outBE = [];
while a<=length(BE)
   outBE = [outBE;BE{a,1}];
   a = a+1;
end

arr = [outLP,outSP,outBE];
total = sum(arr');
win = find(max(total)==total)+1;

a = 1;
totalca = [];
while a<=length(total)
   totalca = [totalca;{total(a)}];
   a = a+1;
end
totalca = [{'Overall Score'};totalca];

new = [cellarr,totalca];
win = cellarr{win,1};
end