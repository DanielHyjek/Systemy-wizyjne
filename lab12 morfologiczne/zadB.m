close all, clear all

%%%%%%%% SCIENIANIE
obraz=imread('fingerprint.bmp');
figure
subplot(2,2,1)
imshow(obraz)
title('Oryginal')
subplot(2,2,2)
imshow(bwmorph(obraz,'thin',1))
title('Obraz po scienianiu 1x')
subplot(2,2,3)
imshow(bwmorph(obraz,'thin',3))
title('Obraz po scienianiu 3x')
subplot(2,2,4)
imshow(bwmorph(obraz,'thin',Inf))
title('Obraz po scienianiu inf')

%%%%%%%%% SZKIELETYZACJA
obraz=imread('kosc.bmp');
figure
subplot(1,2,1)
imshow(obraz)
title('Oryginal')
subplot(1,2,2)
imshow(bwmorph(obraz,'skel',Inf))
title('Obraz po Szkieletyzacji')


%%%%%%%%%%% Otwarcie poprzez rekonstrukcję
obraz=imread('text.png');
SE = ones(51,1);
erozja=imerode(obraz,SE);
rekonstrukcja=imreconstruct(erozja,obraz);
figure
subplot(2,2,1)
imshow(obraz)
title('Oryginal')
subplot(2,2,2)
imshow(erozja)
title('Obraz po erozji')
subplot(2,2,3)
imshow(rekonstrukcja)
title('Obraz po rekonstrukcji')

%%%%%%%%% Wypełnianie dziur
obraz=imread('text.png');
figure
subplot(2,1,1)
imshow(obraz)
title('Oryginal')
subplot(2,1,2)
imshow(imfill(obraz, 'holes'))
title('Obraz po wypełnieniu')

%%%%%%%% Czyszczenie brzegu
obraz=imread('text.png');
figure
subplot(2,1,1)
imshow(obraz)
title('Oryginal')
subplot(2,1,2)
imshow(imclearborder(obraz))
title('Obraz po czyszczeniu brzegu')
