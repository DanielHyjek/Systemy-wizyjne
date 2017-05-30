close all, clear all;
%%%%%%%%%%%%%%%%%%%%%
obraz=imread('ertka.bmp');
SE=strel('square', 3);
erozja=imerode(obraz,SE);

figure
subplot(2,2,1)
imshow(obraz)
title('Oryginal')
subplot(2,2,2)
imshow(erozja)
title('Obraz po erozji - kwadrat')
subplot(2,2,3)
imshow(imerode(obraz,strel('disk', 3,6)))
title('Obraz po erozji - dysk')
subplot(2,2,4)
imshow(imerode(obraz,strel('diamond', 3)))
title('Obraz po erozji - diament')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
subplot(3,2,1)
imshow(obraz)
title('Oryginal')
subplot(3,2,2)
imshow(imerode(obraz,strel('square', 3)))
title('Obraz po erozji - kwadrat')
subplot(3,2,3)
imshow(imdilate(obraz,strel('square', 3)))
title('Obraz po dylatacji')
subplot(3,2,4)
imshow(imopen(obraz,strel('square', 3)))
title('Obraz po otwarciu')
subplot(3,2,5)
imshow(imclose(obraz,strel('square', 3)))
title('Obraz po zamknieciu')
subplot(3,2,6)
tmp=imopen(obraz,strel('square', 3));
tmp=imclose(tmp,strel('square', 2));
imshow(tmp)
title('Sam napis po otwarciu i zamknieciu')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
obraz=imread('buska.bmp');
SE=strel('square', 3);
erozja=imerode(obraz,SE);

figure
subplot(2,2,1)
imshow(obraz)
title('Oryginal')
subplot(2,2,2)
imshow(erozja)
title('Obraz po erozji - kwadrat')
subplot(2,2,3)
imshow(imerode(obraz,strel('line', 3,-45)))
title('Obraz po erozji - linia w lewo')
subplot(2,2,4)
imshow(imerode(obraz,strel('line', 3,45)))
title('Obraz po erozji - linia w prawo')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

obraz=imread('hom.bmp')
SE1= [ 0 1 0; 1 1 1; 0 1 0]; %- to co chcemy wykryć
SE2= [ 1 0 1; 0 0 0; 1 0 1]; %- dopełnienie maski SE2
trafi=bwhitmiss(obraz,SE1,SE2);
subplot(2,1,1)
imshow(obraz)
title('Oryginal')
subplot(2,1,2)
imshow(trafi)
title('Detekcja trafi nie trafi')