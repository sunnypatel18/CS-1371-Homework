function = txt2xls(in)
finh = fopen(in);
str = fgetl(finh);
header = [];
while ~isempty(str)
   [tk,str] = strtok(str,':');
   header = [header,{tk}];
   if any(str==',')
       ind = find(str==',');
       str(1:ind(1)+1) = [];
   else
       str(1:end) = [];
   end
end
fclose(finh);
finh = fopen(in);
str = fgetl(finh);
value = [];
while ischar(str)
   while ~isempty(str)
       [tk,str] = strtok(str,',');
       [semi_header,v] = strtok(tk,':');
       v(1:2) = [];
       value = [value,{v}];
   end
str = fgetl(finh);
end
l = length(header);
while ~isempty(value)
   entry = value(1:l);
   value(1:l) = [];
   header = [header;entry];
end
fileout = in;
fileout(find(fileout=='.'):end) = '.xls';
xlswrite(fileout,header);
fclose(finh);
end



