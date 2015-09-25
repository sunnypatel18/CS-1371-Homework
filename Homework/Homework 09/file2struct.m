function [out] = file2struct(in)
finh = fopen(in,'r');
str = fgetl(finh);
str = fgetl(finh);
while str~='}';
   ind = strfind(str,':');
   fieldname = str(2:ind-2);
   dat = str(ind+2:end);
   if any((dat>='A'&dat<='Z')|(dat>='a'&dat<='z'))&any((dat=='['))
       ca = [];
       while ~isempty(dat)
           [token,dat] = strtok(dat,',');
           token = token((token>='A'&token<='Z')|(token>='a'&token<='z'));
           ca = [ca,{token}];
       end
       out.(fieldname) = ca;
   elseif any((dat>='A'&dat<='Z')|(dat>='a'&dat<='z'))
       dat = dat((dat>='A'&dat<='Z')|(dat>='a'&dat<='z'));
       out.(fieldname) = dat;
   elseif any((dat>='0'&dat<='9'))&any(dat=='[')
       vec = [];
       while ~isempty(dat)
           [token,dat] = strtok(dat,',');
           token = token((token>='0'&token<='9'));
       token = str2num(token);
       vec = [vec,token];
       end
       out.(fieldname) = vec;
   elseif any((dat>='0'&dat<='9'))
       dat = dat((dat>='0'&dat<='9'));
       dat = str2num(dat);
       out.(fieldname) = dat;
   end
   str = fgetl(finh);
end
fclose(finh);
end
