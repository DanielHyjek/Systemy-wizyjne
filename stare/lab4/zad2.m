close all;
clear all;

%HE
phobos=imread('phobos.bmp');
phobos_he=histeq(phobos,256);
figure(1)
subplot(1,2,1)
imshow(phobos)
subplot(1,2,2)
imshow(phobos_he)
title('HE')

%Wykorzystanie histogramu docelowego
load histogramZadany;
phobos_he2=histeq(phobos,histogramZadany);
figure(2)
subplot(1,2,1)
imshow(phobos)
subplot(1,2,2)
imshow(phobos_he2)
title('histogram docelowy')

%Rozciąganie i CLASHE
phobos_rozc=imadjust(phobos);
phobos_cl=adapthisteq(phobos);
figure(3)
subplot(1,3,1)
imshow(phobos)
subplot(1,3,2)
imshow(phobos_rozc)
title('Rozciaganie')
subplot(1,3,3)
imshow(phobos_cl);
title('CLASHE')

%Podział na połówki
[H,x] = imhist(phobos);
liczba=round(mean(H))

