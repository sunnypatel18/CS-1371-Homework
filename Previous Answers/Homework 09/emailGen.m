% PROBLEM 1.  You've Got Mail!
%--------------------------------------------------------------------------
function emailGen(file)
    fh = fopen(file, 'r');
    name = strtok(file, '.');
    wf = fopen([name '_email.txt'], 'w');
    go = true;
    line = fgetl(fh);
    while go
        [username line] = strtok(line, ',');
        while ~isempty(username)
            if username(end) >= '0' & username(end) <= '9'
                fprintf(wf, '%s@gatech.edu\n', username)
            else
                username = [];
            end
            if ~isempty(line)
            line(1) = [];
            end
            [username line] = strtok(line, ',');
        end
        line = fgetl(fh);
        if line == -1
            go = false;
        end
    end
    
end
% Function Name: emailGen
% Inputs  (1): - (char) a filename of a text file containing GT usernames 
% Outputs (0): - None
%
% Output Files (1): A text file containing the email addresses of the
%                   people in the original text file
%
% Function Description:
%   Write a function called "emailGen" that takes in one string input. The
%   string will be the filename of a .txt file that features
%   comma-separated GT usernames (ex. gburdell3, dsmith3). The function
%   should read in the GT usernames and write a new text file containing
%   the e-mail addresses that correspond to the GT usernames. First,
%   check to make sure each email ends in a number. If it does not, then do
%   not include the invalid username in the output file. Each e-mail
%   address should be on its own line and appear in the order corresponding
%   to the order the usernames appear in the original .txt file. All e-mail
%   addresses to valid usernames will include '@gatech.edu' appended to the
%	end of a GT username. The filename of the output .txt file should be
%	the name of the original file (excluding the .txt) with the string
%   "_email.txt" appended to the end. 
%
% Constraints:
%	- You are *not* allowed to use textscan().
%
% Notes: 
%   - The last line of the text file should contain the last email address 
%     (not a blank line)
%   - The GT usernames will be comma-separated in the .txt file.
%     However, they may also be placed on multiple lines, and there might 
%     be different numbers of GT usernames on each line. Example:
%
%           jdoe3,jsmith9,mryan7 
%           mturner,rwhite7
%           msmith1 
%   
% Hints:
%   - You may find fgetl() and strtok() useful.
%   - To avoid the last line containing a blank line, consider specific
%     conditions that denote when you reach the last line of the .txt file.
%
% Test Cases:
%
%    emailGen('test1.txt') 
%       => Should create a file named 'test1_email.txt', that should be 
%          exactly the same as the file test1_email_soln.txt.