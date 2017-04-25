%% czesc 1
close all;
clear all;

lena1=imread('lena1.bmp');
lena2=imread('lena2.bmp');
lena3=imread('lena3.bmp');
lena4=imread('lena4.bmp');
figure(1)
subplot(2,4,1)
imshow(lena1);
subplot(2,4,2)
imshow(lena2);
subplot(2,4,3)
imshow(lena3);
subplot(2,4,4)
imshow(lena4);
subplot(2,4,5)
imhist(lena1,255);
subplot(2,4,6)
imhist(lena2,255);
subplot(2,4,7)
imhist(lena3,255);
subplot(2,4,8)
imhist(lena4,255);

%Rozciaganie histogramu
hist1=imread('hist1.bmp');
hist1_1=imadjust(hist1);
figure(2)
subplot(2,2,1)
imshow(hist1)
title('oryginał')
subplot(2,2,2)
imshow(hist1_1);
title('Rozciągniety histogram równomiernie')
subplot(2,2,3)
imhist(hist1,255)
subplot(2,2,4)
imhist(hist1_1,255)

%histogram skumulowany
[H,x] = imhist(hist1);
C=cumsum(H);
k = max(C)/max(H);
C2=C/k;
figure(3)
bar(x,H);
hold on;
plot(x,C2);
legend('histogram oryginalny', 'histogram skumulowany');

%histogram skumulowany rozciagnietego histogramu
[H,x] = imhist(hist1_1);
C=cumsum(H);
k = max(C)/max(H);
C3=C/k;
figure(4)
bar(x,H);
hold on;
plot(x,C3);
legend('histogram oryginalny', 'histogram skumulowany');


%wyrownanie histogramu
lut=C2/(max(C2)/255);
lut=uint8(lut);
hist1_2=intlut(hist1,lut);
figure(5)
subplot(1,3,1)
imshow(hist1_2,[])
title('obraz po intlut')
subplot(1,3,2)
imhist(hist1_2)
title('histogram')
subplot(1,3,3)
plot(x,C2);
title('histogram skumulowany')

%funkce matlaba\
hist1_3=histeq(hist1_1,256);
figure(6)
subplot(1,2,1)
imshow(hist1_3)
title('obraz po funkcji histeq')
subplot(1,2,2)
imhist(hist1_3)
title('histogram')

%% czesc2
close all;
clear all;

hist2=imread('hist2.bmp');
hist3=imread('hist3.bmp');
hist4=imread('hist4.bmp');

%rozciaganie histogramu
hist2_rozc=imadjust(hist2);
hist3_rozc=imadjust(hist3);
hist4_rozc=imadjust(hist4);

%Wyrównanie HE
hist2_he=histeq(hist2,256);
hist3_he=histeq(hist3,256);
hist4_he=histeq(hist4,256);

%Wyrównanie CLAHE
hist2_cl=adapthisteq(hist2);
hist3_cl=adapthisteq(hist3);
hist4_cl=adapthisteq(hist4);

figure(1)
subplot(2,2,1)
imshow(hist2);
title('Oryginal')
subplot(2,2,2)
imshow(hist2_rozc)
title('Rozciaganie')
subplot(2,2,3)
imshow(hist2_he)
title('Wyrównanie HE')
subplot(2,2,4)
imshow(hist2_cl)
title('Wyrównanie CLAHE')

figure(2)
subplot(2,2,1)
imshow(hist3);
title('Oryginal')
subplot(2,2,2)
imshow(hist3_rozc)
title('Rozciaganie')
subplot(2,2,3)
imshow(hist3_he)
title('Wyrównanie HE')
subplot(2,2,4)
imshow(hist3_cl)
title('Wyrównanie CLAHE')

figure(3)
subplot(2,2,1)
imshow(hist4);
title('Oryginal')
subplot(2,2,2)
imshow(hist4_rozc)
title('Rozciaganie')
subplot(2,2,3)
imshow(hist4_he)
title('Wyrównanie HE')
subplot(2,2,4)
imshow(hist4_cl)
title('Wyrównanie CLAHE')