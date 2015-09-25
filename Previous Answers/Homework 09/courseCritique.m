function [best str] = courseCritique(fn, threshold)

    [num text raw] = xlsread(fn);
    psc = find(num>=threshold);
    if ~isempty(psc)
        pass = num(psc);
        [topgpa ndx] = max(num);
        rawtop = text{ndx+1};
        best = sprintf('Professor: %s', rawtop);
        for i = 1:length(psc)
            fileinfo{1,1} = 'Professor';
            fileinfo{1, 2} = 'GPA';
            fileinfo{i+1, 1} = text{psc(i)+1};
            fileinfo{i+1, 2} = num(psc(i));
        end
        newfile = fn;
        newfile(end-3:end) = [];
        newfile(end+1:end+8) = '_new.xls';
        xlswrite(newfile, fileinfo);
        for x = 1:length(psc)
            str(x).GPA = num(psc(x));
            str(x).Professor = text{psc(x)+1};
        end
    
    else
        best = '';
        str = [];
    end

end