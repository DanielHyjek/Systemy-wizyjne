close all;
clear all;
lena=imread('lena.bmp');
lena90=imrotate(lena,-45);
imshow(lena90);

szach=imread('szachownica.bmp');
szach_neu=imrotate(szach,-45,'nearest');
szach_bilin=imrotate(szach,-45,'bilinear');
szach_bicub=imrotate(szach,-45,'bicubic');
figure(1);
subplot(2,2,1);
imshow(szach);
title('oryginal');
subplot(2,2,2);
imshow(szach_neu);
title('nearest');
subplot(2,2,3);
imshow(szach_bilin);
title('bilinear');
subplot(2,2,4);
imshow(szach_bicub);
title('bicubic');


theta = -45;
scale=[0.5 0 0; 0 0.5 0; 0 0 1];
tform = affine2d(scale*[cos(theta) sin(theta) 0;
    -sin(theta) cos(theta) 0;
    0 0 1 ]);

B=imwarp(lena,tform);
figure(2);
imshow(B);