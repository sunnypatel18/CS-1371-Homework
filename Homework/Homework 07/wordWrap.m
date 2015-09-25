function wordWrap( file, out, number_words )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

fh1 = fopen(file, 'r');
text = fgetl(fh1);
fh2 = fopen(out, 'w');
wordCount = 0;
while ~isempty(text)
    
    [word text] = strtok(text, ' ');

    
        wordCount = wordCount+1;

    
    if wordCount~=number_words
        fprintf(fh2, [word ' ']);
    else 
        fprintf(fh2, [word ' \n']);
        wordCount = 0;
    end
    
end
if wordCount<number_words && wordCount~=0
    fprintf(fh2, '\n');
end

fclose(fh2);
fclose(fh1);

end

