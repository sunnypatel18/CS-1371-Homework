function [img] = scrambleImage(imagefile,textfile)
fh = fopen(textfile);
img = imread(imagefile);
line = fgetl(fh);

while line~=-1
    [operation quads] = strtok(line,':');
    
    switch operation
        case 'Swap Quadrants'
            img = swapQuadrants(quads,img);
        case 'Rotate'
            img = rotate(quads,img);
    end
    line = fgetl(fh);   
end
end

function img = swapQuadrants(quads,img)

[row col dep] = size(img);
rep1 = str2num(quads(end));
rep2 = str2num(quads(end-3));

q1 = img(1:(row/2),1:(col/2),:);
q2 = img(1:(row/2),(col/2)+1:end,:);
q3 = img((row/2)+1:end,1:(col/2),:);
q4 = img((row/2)+1:end,(col/2)+1:end,:);

if     (rep1==1||rep1==2) && (rep2==1||rep2==2);
    img = [q2 q1; q3 q4];
elseif (rep1==1||rep1==3) && (rep2==1||rep2==3);
    img = [q3 q2; q1 q4];
elseif (rep1==1||rep1==4) && (rep2==1||rep2==4);
    img = [q4 q2; q3 q1];
elseif (rep1==2||rep1==3) && (rep2==2||rep2==3);
    img = [q1 q3; q2 q4];
elseif (rep1==2||rep1==4) && (rep2==2||rep2==4);
    img = [q1 q4; q3 q2];
else   (rep1==3||rep1==4) && (rep2==3||rep2==4);
    img = [q1 q2; q4 q3];
end
end

function img = rotate(quads,img)

rot = str2num(quads(end));

[row col dep] = size(img);
q1 = img(1:(row/2),1:(col/2),:);
q2 = img(1:(row/2),(col/2)+1:end,:);
q3 = img((row/2)+1:end,1:(col/2),:);
q4 = img((row/2)+1:end,(col/2)+1:end,:);

switch rot
    case 1
        q1 = q1(:,end:-1:1,:); q1 = q1(end:-1:1,:,:);
    case 2
        q2 = q2(:,end:-1:1,:); q2 = q2(end:-1:1,:,:);
    case 3
        q3 = q3(:,end:-1:1,:); q3 = q3(end:-1:1,:,:);
    case 4
        q4 = q4(:,end:-1:1,:); q4 = q4(end:-1:1,:,:);
end

img = [q1 q2; q3 q4];

end