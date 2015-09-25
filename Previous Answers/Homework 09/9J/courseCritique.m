function [topprof passedprofs] = courseCritique(file, threshold)

[num text raw] = xlsread(file);
psc = find(num>=threshold);
if ~isempty(psc)
    passgpas = num(psc);
    [topgpa toppos] = max(num);
    topprofraw = text{toppos+1};
    topprof = sprintf('Professor: %s', topprofraw);
    for i = 1:length(psc)
        fileinfo{1,1} = 'Professor';
        fileinfo{1, 2} = 'GPA';
        fileinfo{i+1, 1} = text{psc(i)+1};
        fileinfo{i+1, 2} = num(psc(i));
    end
    newfile = file;
    newfile(end-3:end) = [];
    newfile(end+1:end+8) = '_new.xls';
    xlswrite(newfile, fileinfo);
    for x = 1:length(psc)
        passedprofs(x).GPA = num(psc(x));
        passedprofs(x).Professor = text{psc(x)+1};
    end
    
else
    topprof = '';
    passedprofs = [];
end

end