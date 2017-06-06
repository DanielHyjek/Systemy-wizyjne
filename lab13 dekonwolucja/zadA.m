close all, clear all

obraz = imread('tetniak_aorty.png');

himage = imshow(obraz);
h = imellipse(gca, [220 100 260 170]);

maska=createMask(h,himage);
filtr=fspecial('unsharp');

obraz2=roifilt2(filtr,obraz,maska);
figure
subplot(1,2,1)
imshow(obraz)
title('Oryginal')
subplot(1,2,2)
imshow(obraz2)
title('Po wyostrzeniu')

% uchwyt do funkcji
uchwyt = @(obraz) imadjust(obraz,[0.5 0.7],[0 1])
obraz2=roifilt2(obraz,maska,uchwyt);
figure
subplot(1,2,1)
imshow(obraz)
title('Oryginal')
subplot(1,2,2)
imshow(obraz2)
title('Z własnym uchwytem')