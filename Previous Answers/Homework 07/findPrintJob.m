function job = findPrintJob(struct, name)
    % Loop through every job until the last
    while class(struct.name) == 'char'
        
        if strcmp(struct.name, name)
            job.name = struct.name
            job.pages = struct.pages
            break
        else
            job = 'Not Found'
        end
        if isempty(struct.next)
            break
        end
       struct = struct.next
    end
    
end