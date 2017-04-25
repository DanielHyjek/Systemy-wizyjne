close all;
clear all;
load funkcjeLUT;
%% zad1
figure(1);
plot(kwadratowa);
lena=imread('lena.bmp');
figure(2);
imshow(lena)

lut1=intlut(lena, kwadratowa);
figure(3);
imshow(lut1);

%% zad1.1
figure(1)
LUT(lena,ex);
figure(2)
LUT(lena,invlog2);
figure(3)
LUT(lena,kwadratowa);
figure(4)
LUT(lena,log);
figure(5)
LUT(lena,odwlog);
figure(6)
LUT(lena,odwrotna);
figure(7)
LUT(lena,pila);