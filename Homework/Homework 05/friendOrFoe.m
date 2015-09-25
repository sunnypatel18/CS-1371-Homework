function [result] = friendOrFoe(conA ,conB ,cash)
cash(1) = [];
halfcash = str2num(cash);
halfcash = halfcash./2;
halfcash = num2str(halfcash);
[conA,conAvote] = strtok(conA,'-');
conAvote(1) = [];
[conB,conBvote] = strtok(conB,'-');
conBvote(1) = [];
if strcmp(conAvote,'Friend')==1&&strcmp(conBvote,'Friend')==1
    result = ['Congratulations! ',conA,' and ',conB,' will split the trust fund and each take home $',halfcash,'!'];
elseif strcmp(conAvote,'Foe')==1&&strcmp(conBvote,'Friend')==1
    result = ['Ouch! ',conA,' stabs ',conB,' in the back and takes home the whole $',cash,'! For shame, ',conA,', for shame!'];
elseif strcmp(conAvote,'Friend')==1&&strcmp(conBvote,'Foe')==1
    result = ['Ouch! ',conB,' stabs ',conA,' in the back and takes home the whole $',cash,'! For shame, ',conB,', for shame!'];
else
    result = ['Oooh! ',conA,' and ',conB,' both turned foe and will leave with a whopping $0.'];
end
end
