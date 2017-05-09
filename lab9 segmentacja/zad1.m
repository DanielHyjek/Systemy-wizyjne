close all, clear all;

obraz_org=imread('umbrealla.png');
obraz=rgb2hsv(obraz_org);

rozm=size(obraz_org);
global segRes;
global segMean;
global prog;
global minimum;
global index;
index=1;
minimum=[8 8];
prog = 0.05;
segRes = ones(rozm(1,1),rozm(1,2));
segMean = ones(rozm(1,1),rozm(1,2));


split(obraz,1,1,256,256);
imshow(segRes,[])
