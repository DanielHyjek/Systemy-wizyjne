close all
clear all
load maskiPP.mat
obraz=imread('lenaRGBSzumKolor.bmp');
figure
imshow(obraz)

filtr=fspecial('average');

lenaR = obraz(:,:,1);
lenaR=uint8(conv2(lenaR,filtr,'same'));

lenaG = obraz(:,:,2);
lenaG=uint8(conv2(lenaG,filtr,'same'));

lenaB = obraz(:,:,3);
lenaB=uint8(conv2(lenaB,filtr,'same'));

obrazEQ = obraz;
obrazEQ(:,:,1) = lenaR;
obrazEQ(:,:,2) = lenaG;
obrazEQ(:,:,3) = lenaB;

% Plot składowych RGB po filtracji
% figure
% subplot(1,3,1)
% imshow(lenaR)
% title('R')
% subplot(1,3,2)
% imshow(lenaG)
% title('G')
% subplot(1,3,3)
% imshow(lenaB)
% title('B')

obraz=rgb2hsv(obraz);

lenaH = obraz(:,:,1);
lenaH=conv2(lenaH,filtr,'same');

lenaS = obraz(:,:,2);
lenaS=conv2(lenaS,filtr,'same');

lenaV = obraz(:,:,3);
lenaV=conv2(lenaV,filtr,'same');

obrazEQ2 = obraz;
obrazEQ2(:,:,1) = lenaH;
obrazEQ2(:,:,2) = lenaS;
obrazEQ2(:,:,3) = lenaV;
obrazEQ2=hsv2rgb(obrazEQ2);

% Plot składowych HSV po filtracji
% figure
% subplot(1,3,1)
% imshow(lenaH,[])
% title('H')
% subplot(1,3,2)
% imshow(lenaS,[])
% title('S')
% subplot(1,3,3)
% imshow(lenaV,[])
% title('V')


% Plot obrazow po filtracji
figure
subplot(1,2,1)
imshow(obrazEQ)
title('Obraz po filtracji dolnoprzepsutowej RGB')
subplot(1,2,2)
imshow(obrazEQ2)
title('Obraz po filtracji dolnoprzepsutowej HSV')

%%%%%%%%%%%%%%%%%%%%%%%%%% MEDIANOWY %%%%%%%%%%%%%%%%%%%%%%%%


obraz=imread('lenaRGBSzumKolor.bmp');


lenaR = obraz(:,:,1);
lenaR=uint8(medfilt2(lenaR,[3 3]));

lenaG = obraz(:,:,2);
lenaG=uint8(medfilt2(lenaG,[3 3]));

lenaB = obraz(:,:,3);
lenaB=uint8(medfilt2(lenaB,[3 3]));

obrazEQ = obraz;
obrazEQ(:,:,1) = lenaR;
obrazEQ(:,:,2) = lenaG;
obrazEQ(:,:,3) = lenaB;

% Plot składowych RGB po filtracji
% figure
% subplot(1,3,1)
% imshow(lenaR)
% title('R')
% subplot(1,3,2)
% imshow(lenaG)
% title('G')
% subplot(1,3,3)
% imshow(lenaB)
% title('B')

obraz=rgb2hsv(obraz);

lenaH = obraz(:,:,1);
lenaH=(medfilt2(lenaH,[3 3]));

lenaS = obraz(:,:,2);
lenaS=(medfilt2(lenaS,[3 3]));

lenaV = obraz(:,:,3);
lenaV=(medfilt2(lenaV,[3 3]));

obrazEQ2 = obraz;
obrazEQ2(:,:,1) = lenaH;
obrazEQ2(:,:,2) = lenaS;
obrazEQ2(:,:,3) = lenaV;
obrazEQ2=hsv2rgb(obrazEQ2);

%Plot składowych HSV po filtracji
% figure
% subplot(1,3,1)
% imshow(lenaH,[])
% title('H')
% subplot(1,3,2)
% imshow(lenaS,[])
% title('S')
% subplot(1,3,3)
% imshow(lenaV,[])
% title('V')



% Plot obrazow po filtracji
figure
subplot(1,2,1)
imshow(obrazEQ)
title('Obraz po filtracji medianowej RGB')
subplot(1,2,2)
imshow(obrazEQ2)
title('Obraz po filtracji medianowej HSV')