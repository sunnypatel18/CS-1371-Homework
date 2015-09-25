function img = takeNegative(fn)
    img = imread(fn);
    img = 255 - img;
    image(img);
end