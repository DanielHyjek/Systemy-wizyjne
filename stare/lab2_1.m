close all;
clear all;
lena100=imread('lena100.bmp');
lena_nearest=imresize(lena100,2,'nearest');
lena_bilin=imresize(lena100,2,'bilinear');
lena_bicub=imresize(lena100,2,'bicubic');
figure(1);
imshow(lena_nearest);
title('nearest');
figure(2);
imshow(lena_bilin);
title('bilinear');
figure(3);
imshow(lena_bicub);
title('bicubic');

szach=imread('szachownica.bmp');
szach_nearest=imresize(szach,10,'nearest');
szach_bilin=imresize(szach,10,'bilinear');
szach_bicub=imresize(szach,10,'bicubic');
figure(4);
imshow(szach_nearest);
title('nearest');
figure(5);
imshow(szach_bilin);
title('bilinear');
figure(6);
imshow(szach_bicub);
title('bicubic');

szach_nearest2=imresize(szach,[100 100],'nearest');
szach_bilin2=imresize(szach,[100 100],'bilinear');
szach_bicub2=imresize(szach,[100 100],'bicubic');
figure(7);
imshow(szach_nearest2);
title('nearest');
figure(8);
imshow(szach_bilin2);
title('bilinear');
figure(9);
imshow(szach_bicub2);
title('bicubic');