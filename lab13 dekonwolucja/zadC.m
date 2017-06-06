close all, clear all

load inv_filter_noisy.mat
himage = imshow(inv_filter_noisy);
psf=fspecial('disk', 10);

Fmaska=fft2(psf,256,256);
Fobraz=fft2(inv_filter_noisy);

wynik=Fobraz./Fmaska;
wynik(abs(Fmaska) < 0.01) = 0;
wynik=abs(ifft2(wynik));

figure
subplot(1,2,1)
imshow(inv_filter_noisy)
title('Oryginal')
subplot(1,2,2)
imshow(wynik)
title('Odzyskany')
