
    function [printjob] = findPrintJob(struct, jobname)

    printjob = 'Not Found';
    while strcmp(class(struct), 'struct')
        if strcmp(struct.name, jobname)
        printjob.name = struct.name;
        printjob.pages = struct.pages;
        break
        else 
        struct = struct.next;
        end
    end

end