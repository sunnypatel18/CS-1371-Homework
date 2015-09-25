function img = grayscale(fn)
   img = imread(fn);
   img = rgb2gray(img);
   image(img);
end