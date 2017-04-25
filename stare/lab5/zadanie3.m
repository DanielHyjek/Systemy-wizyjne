%% zad1

close all;
clear all;

moon=imread('moon.bmp');
M = [0 1 0; 1 -4 1; 0 1 0];
M=M/9; %normalizacja maski

moon2=uint8(conv2(moon,M,'same'));

figure(1)
subplot(3,1,1)
imshow(moon,[])
title('oryginal')
subplot(3,1,2)
imshow(abs(moon2),[])
title('wart bezwzgledna')
subplot(3,1,3)
imshow((moon2+128),[])
title('+128')

%% zad2
close all;
clear all;

moon=imread('moon.bmp');
filtr=fspecial('laplacian', 0.6);
moon2=uint8(conv2(moon,filtr,'same'));
suma=imsubtract(moon,moon2);


figure(1)
subplot(2,2,1)
imshow(moon,[])
title('oryginal')
subplot(2,2,2)
imshow(abs(moon2),[])
title('wart bezwzgledna')
subplot(2,2,3)
imshow((moon2+128),[])
title('+128')
subplot(2,2,4)
imshow(suma);
title('Różnica')

%% zad3
close all;
clear all;

dipxe=imread('dipxe.jpg');
h = fspecial('gaussian', [5 5]);
dipxe2=uint8(conv2(dipxe,h,'same'));
maska=dipxe-dipxe2;
k1=dipxe+maska;
k45=dipxe+4.5*maska;

figure(1)
subplot(3,2,1)
imshow(dipxe, [])
title('Oryginal')
subplot(3,2,2)
imshow(dipxe2, [])
title('Rozmyty')
subplot(3,2,3)
imshow(maska, [])
title('Maska')

subplot(3,2,4)
imshow(k1, [])
title('unsharp mask')
subplot(3,2,5)
imshow(k45, [])
title('highboost filtring')

