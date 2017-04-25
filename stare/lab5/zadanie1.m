%% Zad 1
close all;
clear all;
plansza=imread('plansza.tif');
filtr=fspecial('average');
plansza_conv=conv2(plansza,filtr,'same');
plansza_conv=uint8(plansza_conv);
plansza_roz=imabsdiff(plansza,plansza_conv);
figure(1)
subplot(1,3,1)
imshow(plansza,[])
title('oryginal')
subplot(1,3,2)
imshow(plansza_conv,[])
title('conv2 z filtrem average')
subplot(1,3,3)
imshow(plansza_roz,[]);
title('roznica')

filtr5=(fspecial('average',[5 5]));
filtr9=(fspecial('average',[9 9]));
filtr15=(fspecial('average',[15 15]));
filtr35=(fspecial('average',[35 35]));
plansza_5=uint8(conv2(plansza,filtr5,'same'));
plansza_9=uint8(conv2(plansza,filtr9,'same'));
plansza_15=uint8(conv2(plansza,filtr15,'same'));
plansza_35=uint8(conv2(plansza,filtr35,'same'));


figure(2)
subplot(2,3,1)
imshow(plansza,[])
title('oryginal')
subplot(2,3,2)
imshow(plansza_conv,[])
title('maska 3x3')
subplot(2,3,3)
imshow(plansza_5,[])
title('maska 5x5')
subplot(2,3,4)
imshow(plansza_9,[])
title('maska 9x9')
subplot(2,3,5)
imshow(plansza_15,[])
title('maska 15x15')
subplot(2,3,6)
imshow(plansza_35,[])
title('maska 35x35')

%% Zad 1 lena
close all;
clear all;

lena=imread('lena.bmp');
filtr=fspecial('average');
lena_conv=uint8(conv2(lena,filtr,'same'));
figure(1)
subplot(1,2,1)
imshow(lena,[])
title('oryginal')
subplot(1,2,2)
imshow(lena_conv,[])
title('filtr 3x3')

 M = [1 2 1; 2 4 2; 1 2 1]; %nowa maska
 M = M/sum(sum(M)); %normalizacja maski

lena_M=uint8(conv2(lena,M,'same'));
lena_Mroz=imabsdiff(lena,lena_M);

figure(2)
subplot(1,3,1)
imshow(lena,[])
title('oryginal')
subplot(1,3,2)
imshow(lena_M,[])
title('Maska własna')
subplot(1,3,3)
imshow(lena_Mroz,[]);
title('różnica')

figure(3)
filtr_g=fspecial('gaussian', [5 5],0.5);
filtr_g8=fspecial('gaussian', [5 5],2);
filtr_g2=fspecial('gaussian', [5 5],6);

lena5=uint8(conv2(lena,filtr_g,'same'));
lena8=uint8(conv2(lena,filtr_g8,'same'));
lena2=uint8(conv2(lena,filtr_g2,'same'));

subplot(2,3,1)
imshow(lena5,[])
title('0.5')
subplot(2,3,2)
imshow(lena8,[])
title('2')
subplot(2,3,3)
imshow(lena2,[])
title('6')
subplot(2,3,4)
mesh(filtr_g)
title('0.5')
subplot(2,3,5)
mesh(filtr_g8)
title('2')
subplot(2,3,6)
imshow(lena5,[])
mesh(filtr_g2)
title('6')
