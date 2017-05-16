close all, clear all;

obraz=imread('kolo.bmp');
Y=fft2(obraz);
Z=fftshift(Y);
obraz2=ifft2(Y);

subplot(1,2,1)
imshow(obraz)
subplot(1,2,2)
imshow(obraz2)