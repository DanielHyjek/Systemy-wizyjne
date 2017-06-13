close all
clear all

obraz=imread('lenaRGB.bmp');
imshow(obraz)

lenaR = obraz(:,:,1);
lenaG = obraz(:,:,2);
lenaB = obraz(:,:,3);

figure
subplot(2,3,1)
imshow(lenaR)
title('Red')
subplot(2,3,2)
imshow(lenaG)
title('Green')
subplot(2,3,3)
imshow(lenaB)
title('Blue')
subplot(2,3,4)
imhist(lenaR)
subplot(2,3,5)
imhist(lenaG)
subplot(2,3,6)
imhist(lenaB)


Re=histeq(lenaR,256);
Ge=histeq(lenaG,256);
Be=histeq(lenaB,256);
obrazEQ = obraz;
obrazEQ(:,:,1) = Re;
obrazEQ(:,:,2) = Ge;
obrazEQ(:,:,3) = Be;
figure
imshow(obrazEQ)
title('Obraz po wyrownaniu histogramow skladowych')

obraz=rgb2hsv(obraz);

lenaH = obraz(:,:,1);
lenaS = obraz(:,:,2);
lenaV = obraz(:,:,3);

figure
subplot(2,3,1)
imshow(lenaH)
title('H')
subplot(2,3,2)
imshow(lenaS)
title('S')
subplot(2,3,3)
imshow(lenaV)
title('V')
subplot(2,3,4)
imhist(lenaH)
subplot(2,3,5)
imhist(lenaS)
subplot(2,3,6)
imhist(lenaV)


Re=histeq(lenaH,256);
% figure
% subplot(1,2,1)
% imshow(Re)
% subplot(1,2,2)
% imhist(Re)
Ge=histeq(lenaS,256);
% figure
% subplot(1,2,1)
% imshow(Ge)
% subplot(1,2,2)
% imhist(Ge)
Be=histeq(lenaV,256);
% figure
% subplot(1,2,1)
% imshow(Be)
% subplot(1,2,2)
% imhist(Be)

obrazEQ = obraz;
obrazEQ(:,:,1) = Re;
obrazEQ(:,:,2) = Ge;
obrazEQ(:,:,3) = Be;
obrazEQ=hsv2rgb(obrazEQ);
figure
imshow(obrazEQ)
title('Obraz po wyrownaniu histogramow HSV')