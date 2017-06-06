close all, clear all

load inv_filter.mat
himage = imshow(inv_filter);
psf=fspecial('disk', 10);

Fmaska=fft2(psf,256,256);
Fobraz=fft2(inv_filter);

wynik=Fobraz./Fmaska;
wynik=abs(ifft2(wynik));

figure
subplot(1,2,1)
imshow(inv_filter)
subplot(1,2,2)
imshow(wynik)
