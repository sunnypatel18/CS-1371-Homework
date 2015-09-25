function screen = colorScreen(fn1, fn2, vec)
% Open the images
    img1 = imread(fn1);
    img2 = imread(fn2);
    
% Set them to type double
    imgd1 = double(img1);
    imgd2 = double(img2);

% Set each rgb matrix to a variable
    r1a = imgd1(:,:,1);
    r2a = imgd2(:,:,1);
    g1a = imgd1(:,:,2);
    g2a = imgd2(:,:,2);
    b1a = imgd1(:,:,3);
    b2a = imgd2(:,:,3);

% Start with the red values
        red1 = imgd1(:,:,1) == vec(1);
        ndx1 = find(red1);
        for i = 1:length(ndx1)
            r1a(ndx1(i)) = r2a(ndx1(i));
            i = i + 1;
        end
% Green values
        green1 = imgd1(:,:,2) == vec(2);
        ndx2 = find(green1);
        for i = 1:length(ndx2)
            g1a(ndx2(i)) = g2a(ndx2(i));
            i = i + 1;
        end

% Blue values
        blue1 = imgd1(:,:,3) == vec(3);
        ndx3 = find(blue1);
        for i = 1:length(ndx3)
            b1a(ndx3(i)) = b2a(ndx3(i));
            i = i + 1;
        end
        
% Change the doubles to uint8s
        r1a = uint8(r1a);
        g1a = uint8(g1a);
        b1a = uint8(b1a);
        
% Put it in the screen
    screen(:,:,1) = r1a;
    screen(:,:,2) = g1a;
    screen(:,:,3) = b1a;
    
end