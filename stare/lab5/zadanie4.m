close all;
clear all;

kw=imread('jet.bmp');
 load maskiPP;
kwr1=uint8(conv2(kw,R1,'same'));
sumar1=imsubtract(kw,kwr1);
kwr2=uint8(conv2(kw,R2,'same'));
sumar2=imsubtract(kw,kwr2);

kwp1=uint8(conv2(kw,P1,'same'));
sumap1=imsubtract(kw,kwp1);
kwp2=uint8(conv2(kw,P2,'same'));
sumap2=imsubtract(kw,kwp2);

kws1=uint8(conv2(kw,S1,'same'));
sumas1=imsubtract(kw,kws1);
kws2=uint8(conv2(kw,S2,'same'));
sumas2=imsubtract(kw,kws2);


figure(1)
subplot(2,2,1)
imshow(kw,[])
title('oryginal do R1')
subplot(2,2,2)
imshow(abs(kwr1),[])
title('wart bezwzgledna')
subplot(2,2,3)
imshow((kwr1+128),[])
title('+128')
subplot(2,2,4)
imshow(sumar1);
title('Roznica')

figure(2)
subplot(2,2,1)
imshow(kw,[])
title('oryginal do R2')
subplot(2,2,2)
imshow(abs(kwr2),[])
title('wart bezwzgledna')
subplot(2,2,3)
imshow((kwr2+128),[])
title('+128')
subplot(2,2,4)
imshow(sumar2);
title('Roznica')

figure(3)
subplot(2,2,1)
imshow(kw,[])
title('oryginal do P1')
subplot(2,2,2)
imshow(abs(kwp1),[])
title('wart bezwzgledna')
subplot(2,2,3)
imshow((kwp1+128),[])
title('+128')
subplot(2,2,4)
imshow(sumap1);
title('Roznica')

figure(4)
subplot(2,2,1)
imshow(kw,[])
title('oryginal do P2')
subplot(2,2,2)
imshow(abs(kwp2),[])
title('wart bezwzgledna')
subplot(2,2,3)
imshow((kwp2+128),[])
title('+128')
subplot(2,2,4)
imshow(sumap2);
title('Roznica')

figure(5)
subplot(2,2,1)
imshow(kw,[])
title('oryginal do S1')
subplot(2,2,2)
imshow(abs(kws1),[])
title('wart bezwzgledna')
subplot(2,2,3)
imshow((kws1+128),[])
title('+128')
subplot(2,2,4)
imshow(sumas1);
title('Roznica')

figure(6)
subplot(2,2,1)
imshow(kw,[])
title('oryginal do S2')
subplot(2,2,2)
imshow(abs(kws2),[])
title('wart bezwzgledna')
subplot(2,2,3)
imshow((kws2+128),[])
title('+128')
subplot(2,2,4)
imshow(sumas2);
title('Roznica')


kws1=(conv2(kw,S1,'same'));
kws2=(conv2(kw,S2,'same'));

kombinacyjny2=uint8(abs(kws1)+abs(kws2));
kombinacyjny1=uint8(sqrt((kws1.^2) + (kws2.^2)));

figure(7)
subplot(3,1,1)
imshow(kw,[])
title('Oryginal do kombinacyjnego')
subplot(3,1,2)
imshow(kombinacyjny1,[]);
title('Pierwiastek kwadratow')
subplot(3,1,3)
imshow(kombinacyjny2,[]);
title('Suma z ABS')