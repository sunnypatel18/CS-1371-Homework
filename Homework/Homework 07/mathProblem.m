function [ out ] = mathProblem( file_text, number )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

fh=fopen(file_text, 'r');
firstline=' ';
while ischar(firstline)
    
    firstline= fgetl(fh);
    [func1 num1] = strtok(firstline, ' ');
    num1 = num1(2:end);
    num1 = str2double(num1);
    
    if strcmp(func1, 'Add')
        number = num1+number;
    elseif strcmp(func1, 'Subtract')
        number = number-num1;
    elseif strcmp(func1, 'Divide')
        number = number/num1;
    elseif strcmp(func1, 'Multiply')
        number = number.*num1;
    end
    
  
end

out = number;
    
    fclose(fh);


end

