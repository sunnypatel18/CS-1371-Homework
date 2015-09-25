function message = steganos(image);

img = imread(image);

[rows cols layers] = size(img);
msg = ''; message = '';tc=0;ctr=0;

for r=1:rows
    for c=1:cols
        for l=1:3
            pixval = img(r,c,l);
            pixval = dec2bin(pixval);
            msg = [msg num2str(pixval(end))];
            ctr=ctr+1;
            
            if ctr>7
                if msg(end:-1:end-7)=='00000000'
                    tc=1;
                end 
            end
            if tc==1;;break;end
        end
        if tc==1;break;end
    end
    if tc==1;break;end
    c = c+1;
end

while length(msg)>7
    decoded = msg(1:8);
    decoded = bin2dec(decoded);
    message = [message char(decoded)];
    msg(1:8) = [];
end

