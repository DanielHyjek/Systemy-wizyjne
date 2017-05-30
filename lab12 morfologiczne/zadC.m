close all, clear all;

obraz=imread('ferrari.bmp');
figure
subplot(3,2,1)
imshow(obraz)
title('Oryginal')
subplot(3,2,2)
erozja=imerode(obraz,strel('square', 3));
imshow(erozja)
title('Obraz po erozji - kwadrat')
subplot(3,2,3)
dylatacja=imdilate(obraz,strel('square', 3));
imshow(dylatacja)
title('Obraz po dylatacji')
subplot(3,2,4)
imshow(dylatacja-erozja)
title('gradient morfologiczny')
subplot(3,2,5)
imshow(imopen(obraz,strel('square', 3)))
title('Obraz po otwarciu')
subplot(3,2,6)
imshow(imclose(obraz,strel('square', 3)))
title('Sam napis po zamknieciu')

%%%%% TOP HAT
SE=strel('square', 5);
figure
subplot(2,2,1)
imshow(obraz)
title('Oryginal')
subplot(2,2,2)
imshow(imtophat(obraz,SE),[])
title('Obraz top-hat')
subplot(2,2,3)
imshow(imbothat(obraz,SE),[])
title('Obraz buttonhat')

%%%%%% TOP-HAT na RICE
SE=strel('disk',10);
obraz=imread('rice.png');
figure
subplot(1,2,1)
imshow(obraz)
title('Oryginal')
subplot(1,2,2)
imshow(imtophat(obraz,SE),[])
title('Obraz top-hat')

