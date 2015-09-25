function out = checkImage(fn1, fn2)
    img1 = imread(fn1);
    img2 = imread(fn2);
    [r1 c1 d1] = size(img1);
    [r2 c2 d2] = size(img2);
    % Compares the size of the images
    if r1 == r2 & c1 == c2
        a = double(img1);
        b = double(img2);
        if a == b
            out = 'The images are the same.'
        else
            out = 'The RGB values are different.'
        end
    else
        out = 'The images have different dimensions.'
    end
end