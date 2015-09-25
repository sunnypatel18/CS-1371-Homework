function img = greyscale(fn)
    img = imread(fn);
    [r c d] = size(img);
    imd = double(img);
    imd(:,:,1) = imd(:,:,1) - imd(:,:,1).*0.2989;
    imd(:,:,2) = imd(:,:,2) - imd(:,:,2).*0.5870;
    imd(:,:,3) = imd(:,:,3) - imd(:,:,3).*0.1140;
    img = uint8(imd);
    image(img);
end