function [out] = checkImage(im1,im2)
img1 = imread(im1);
img2 = imread(im2);

if any(~(size(img1)==size(img2)))
    out = 'The images have different dimensions.';
elseif img1==img2
    out = 'The images are the same.';
else
    out = 'The RGB values are different.';
    mb = (img1~=img2);    
    r = mb(:,:,1);
    g = mb(:,:,2);
    b = mb(:,:,3);
    mask = (r + g + b)>0;
    mask = cat(3,mask,mask,mask);
       
    img1(mask) = 0;
    img1(~mask) = 255;
    imwrite(img1,[im1(1:end-4) 'VS' im2])
end

end


