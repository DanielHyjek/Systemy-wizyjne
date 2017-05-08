%%%%%%%%%%%%%%   Binaryzacja dwuprogowa   %%%%%%%%%%%%%%
%   Dwa progi - wybieramy w ten sposób przedzia³ jasnoœci 
%(piksele w nim zawarte klasyfikujemy jako obiekty).


clear all, close all,

obraz = imread('bart.bmp');

figure(1)
subplot(1, 2, 1)
imshow(obraz, [])
title('Obrazek')

subplot(1, 2, 2)
imhist(obraz, 256)
title('Histogram')

progDolny = 180;
progGorny = 215;

obrazBW = obraz > progDolny & obraz < progGorny;
obrazBW = uint8(obrazBW);

figure(2)
subplot(1, 2, 1)
imshow(obraz, [])
title('Oryginal')

subplot(1, 2, 2)
imshow(obrazBW, [])
title('Binaryzacja dwuprogrowa')