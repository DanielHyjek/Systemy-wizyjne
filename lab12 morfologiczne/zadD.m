clear all; close all;

obraz = imread('calculator.png');

% likwidacja odblaskow poziomych
elem = ones(1, 71);
poziom = imerode(obraz, elem);
poziom = imreconstruct(poziom, obraz);
poziom_open = imopen(obraz, elem);  %zwykle otwarcie dla porownania


figure
subplot(1, 3, 1)
imshow(obraz, [])
title('Pryginal')
subplot(1, 3, 2)
imshow(poziom, [])
title('Otwarcie przez rekonstrukcje')
subplot(1, 3, 3)
imshow(poziom_open, [])
title('Otwarcie')

%top-hat poprzez rekonstrukcjê
poziom_tophat = obraz - poziom;        
klasyczny_tophat = obraz-poziom_open;
figure
subplot(1,2,1)
imshow(poziom_tophat)
title('top-hat poprzez rekonstrukcjê')
subplot(1,2,2)
imshow(klasyczny_tophat)
title('klasyczny top-hat')



% likwidacja odblaskow pionowych
elem = ones(1, 11);
pion = imerode(poziom_tophat, elem);
pion = imreconstruct(pion, poziom_tophat);
figure
subplot(1,2,1)
imshow(obraz)
title('Oryginal')
subplot(1,2,2)
imshow(pion, [])
title('likwidacja odblaskow pionowych')

% dodanie elementow pionowych, ktore mialy pozostac
elem = ones(1, 21);
dyl = imdilate(pion, elem);
wynik = imreconstruct(min(dyl, poziom_tophat), poziom_tophat);


figure
imshow(wynik, [])
title('Wynik operacji')