close all;
clear all;
lena=imread('lena.bmp');
jet=imread('jet.bmp');

figure(1)
suma=imadd(lena,jet,'uint16');
imshow(suma,[]);
title('dodawanie obrazow')

figure(2)
K = imlincomb(3,lena,1,jet,'uint16');
imshow(K,[])
title('kombinacja liniowa')

figure(3)
lena16=int16(lena);
jet16=int16(jet);
odej=imsubtract(lena16,jet16);
imshow(odej,[])
title('odejmowanie obrazow 16bit')

figure(4)
odej2=imabsdiff(lena,jet);
imshow(odej2,[]);
title('odejmowanie wartosci bezwzgl.')

figure(5)
mnoz=immultiply(lena,0.5);
imshow(mnoz);
title('mnozenie przez 0.5 -> przyciemnienie')

figure(6)
maska=imread('kolo.bmp');
maska=boolean(maska);
mnoz2=immultiply(lena,maska);
imshow(mnoz2);
title('mnozenie przez maske')

figure(7)
lena_neg=imcomplement(lena);
subplot(1,2,1)
imshow(lena)
title('oryginal')
subplot(1,2,2)
imshow(lena_neg)
title('negatyw')