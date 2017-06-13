close all
clear all
load maskiPP.mat
obraz=imread('lenaRGB.bmp');

lenaR = obraz(:,:,1);
kws1=(conv2(lenaR,S1,'same'));
kws2=(conv2(lenaR,S2,'same'));
lenaR=uint8(abs(kws1)+abs(kws2));

lenaG = obraz(:,:,2);
kws1=(conv2(lenaG,S1,'same'));
kws2=(conv2(lenaG,S2,'same'));
lenaG=uint8(abs(kws1)+abs(kws2));

lenaB = obraz(:,:,3);
kws1=(conv2(lenaB,S1,'same'));
kws2=(conv2(lenaB,S2,'same'));
lenaB=uint8(abs(kws1)+abs(kws2));

obrazEQ = obraz;
obrazEQ(:,:,1) = lenaR;
obrazEQ(:,:,2) = lenaG;
obrazEQ(:,:,3) = lenaB;

% Plot składowych RGB po filtracji
figure
subplot(1,3,1)
imshow(lenaR)
title('R')
subplot(1,3,2)
imshow(lenaG)
title('G')
subplot(1,3,3)
imshow(lenaB)
title('B')

obraz=rgb2hsv(obraz);

lenaH = obraz(:,:,1);
kws1=(conv2(lenaH,S1,'same'));
kws2=(conv2(lenaH,S2,'same'));
lenaH=(abs(kws1)+abs(kws2));

lenaS = obraz(:,:,2);
kws1=(conv2(lenaS,S1,'same'));
kws2=(conv2(lenaS,S2,'same'));
lenaS=(abs(kws1)+abs(kws2));

lenaV = obraz(:,:,3);
kws1=(conv2(lenaV,S1,'same'));
kws2=(conv2(lenaV,S2,'same'));
lenaV=(abs(kws1)+abs(kws2));

obrazEQ2 = obraz;
obrazEQ2(:,:,1) = lenaH;
obrazEQ2(:,:,2) = lenaS;
obrazEQ2(:,:,3) = lenaV;
obrazEQ2=hsv2rgb(obrazEQ2);

% Plot składowych HSV po filtracji
figure
subplot(1,3,1)
imshow(lenaH,[])
title('H')
subplot(1,3,2)
imshow(lenaS,[])
title('S')
subplot(1,3,3)
imshow(lenaV,[])
title('V')



% Plot obrazow po filtacji
figure
subplot(1,2,1)
imshow(obrazEQ)
title('Obraz po filtracji górnoprzepsutowej RGB')
subplot(1,2,2)
imshow(obrazEQ2)
title('Obraz po filtracji górnoprzepustowej HSV')
