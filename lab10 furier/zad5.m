close all, clear all;


obraz=imread('literki.bmp');
wzorA=imread('wzorA.bmp');
figure
subplot(1,2,1)
imshow(obraz)
subplot(1,2,2)
imshow(wzorA)

obrazF=fft2(obraz);
obrazF=fftshift(obrazF);
wzorAF = fft2(rot90(wzorA,2),256,256);
wzorAF=fftshift(wzorAF);

tmp=obrazF.*wzorAF;
tmp=ifftshift(tmp);
tmp=ifft2(tmp);


se = strel('square',3);
tophatFiltered = imtophat(tmp,se);
figure
subplot(1,2,1)
imshow(obraz)
subplot(1,2,2)
imshow(tophatFiltered,[])