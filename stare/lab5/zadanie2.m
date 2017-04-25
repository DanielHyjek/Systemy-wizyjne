close all;
clear all;

lenaSzum=imread('lenaSzum.bmp');
lena=imread('lena.bmp');
lenaSzum_med=medfilt2(lenaSzum,[3 3]);
lena_med=medfilt2(lena,[3 3]);
lenaSzum_roz=imabsdiff(lenaSzum,lenaSzum_med);
lena_roz=imabsdiff(lena,lena_med);

figure(1)
subplot(1,3,1)
imshow(lena,[])
title('oryginal')
subplot(1,3,2)
imshow(lena_med,[])
title('po filtracji medianowej')
subplot(1,3,3)
imshow(lena_roz,[]);
title('roznica')

figure(2)
subplot(1,3,1)
imshow(lenaSzum,[])
title('oryginal zaszumiony')
subplot(1,3,2)
imshow(lenaSzum_med,[])
title('po filtracji medianowej')
subplot(1,3,3)
imshow(lenaSzum_roz,[]);
title('roznica')
