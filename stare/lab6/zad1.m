%% Obrqaz coins
close all;
clear all;

coins=imread('coins.png');
figure (1)
subplot(2,1,1)
imshow(coins);
title('oryginal')
subplot(2,1,2)
imhist(coins);
title('histogram')

figure(2)
bin=im2bw(coins,(80/255));
imshow(bin);
title('próg 80')

%% Rozne obrazy z szumami
close all;
clear all;

figura=imread('figura.tif');
figure (3)
subplot(3,1,1)
imshow(figura);
title('oryginal')
subplot(3,1,2)
imhist(figura);
title('histogram')
subplot(3,1,3)
bin1=im2bw(figura,(80/255));
imshow(bin1)

figura2=imread('figura2.tif');
figure (4)
subplot(3,1,1)
imshow(figura2);
title('oryginal')
subplot(3,1,2)
imhist(figura2);
title('histogram')
subplot(3,1,3)
bin2=im2bw(figura2,(120/255));
imshow(bin2)

figura3=imread('figura3.tif');
figure (5)
subplot(3,1,1)
imshow(figura3);
title('oryginal')
subplot(3,1,2)
imhist(figura3);
title('histogram')
subplot(3,1,3)
bin3=im2bw(figura3,(180/255));
imshow(bin3)

figura4=imread('figura4.tif');
figure(6)
subplot(3,1,1)
imshow(figura4);
title('oryginal')
subplot(3,1,2)
imhist(figura4);
title('histogram')
subplot(3,1,3)
bin4=im2bw(figura4,(47/255));
imshow(bin4)

%% Automatyczne szukanie progu
close all;
clear all;

coins=imread('coins.png');
level1=graythresh(coins);
level2=clusterKittler(coins);
level3=entropyYen(coins);
bin1=im2bw(coins,level1);
bin2=im2bw(coins,level2/255);
bin3=im2bw(coins,level3/255);

figure(1)
subplot(2,3,1)
imshow(coins)
title('oryginal')
subplot(2,3,2)
imhist(coins)
title('histogram')
subplot(2,3,3)
imshow(bin1)
title([num2str(level1*255), 'Otsu'])

subplot(2,3,4)
imshow(bin2)
title([num2str(level2),'Kittler'])
subplot(2,3,5)
imshow(bin3)
title([num2str(level3),'Yen'])

%% RICE

close all;
clear all;

coins=imread('rice.png');
level1=graythresh(coins);
level2=clusterKittler(coins);
level3=entropyYen(coins);
bin1=im2bw(coins,level1);
bin2=im2bw(coins,level2/255);
bin3=im2bw(coins,level3/255);
bin4=im2bw(coins,128/255);

figure(1)
subplot(3,3,1)
imshow(coins)
title('oryginal')
subplot(3,3,2)
imhist(coins)
title('histogram')
subplot(3,3,3)
imshow(bin1)
title([num2str(level1*255), 'Otsu'])

subplot(3,3,4)
imshow(bin2)
title([num2str(level2),'Kittler'])
subplot(3,3,5)
imshow(bin3)
title([num2str(level3),'Yen'])
subplot(3,3,6)
imshow(bin4)
title('Wlasny 128')

%% TEKST

close all;
clear all;

coins=imread('tekst.bmp');
level1=graythresh(coins);
level2=clusterKittler(coins);
level3=entropyYen(coins);
bin1=im2bw(coins,level1);
bin2=im2bw(coins,level2/255);
bin3=im2bw(coins,level3/255);
bin4=im2bw(coins,150/255);

figure(1)
subplot(3,3,1)
imshow(coins)
title('oryginal')
subplot(3,3,2)
imhist(coins)
title('histogram')
subplot(3,3,3)
imshow(bin1)
title([num2str(level1*255), 'Otsu'])

subplot(3,3,4)
imshow(bin2)
title([num2str(level2),'Kittler'])
subplot(3,3,5)
imshow(bin3)
title([num2str(level3),'Yen'])
subplot(3,3,6)
imshow(bin4)
title('Wlasny 150')

%% OBIEKTY
close all;
clear all;

coins=imread('obiekty.bmp');
level1=graythresh(coins);
level2=clusterKittler(coins);
level3=entropyYen(coins);
bin1=im2bw(coins,level1);
bin2=im2bw(coins,level2/255);
bin3=im2bw(coins,level3/255);
bin4=im2bw(coins,170/255);

figure(1)
subplot(3,3,1)
imshow(coins)
title('oryginal')
subplot(3,3,2)
imhist(coins)
title('histogram')
subplot(3,3,3)
imshow(bin1)
title([num2str(level1*255), 'Otsu'])

subplot(3,3,4)
imshow(bin2)
title([num2str(level2),'Kittler'])
subplot(3,3,5)
imshow(bin3)
title([num2str(level3),'Yen'])
subplot(3,3,6)
imshow(bin4)
title('Wlasny 170')
%% KATALOG
close all;
clear all;

coins=imread('katalog.bmp');
level1=graythresh(coins);
level2=clusterKittler(coins);
level3=entropyYen(coins);
bin1=im2bw(coins,level1);
bin2=im2bw(coins,level2/255);
bin3=im2bw(coins,level3/255);
bin4=im2bw(coins,140/255);

figure(1)
subplot(3,3,1)
imshow(coins)
title('oryginal')
subplot(3,3,2)
imhist(coins)
title('histogram')
subplot(3,3,3)
imshow(bin1)
title([num2str(level1*255), 'Otsu'])

subplot(3,3,4)
imshow(bin2)
title([num2str(level2),'Kittler'])
subplot(3,3,5)
imshow(bin3)
title([num2str(level3),'Yen'])
subplot(3,3,6)
imshow(bin4)
title('Wlasny 140')