close all;
clear all;
kolo=imread('kolo.bmp');
kwadrat=imread('kwadrat.bmp');

kolo=boolean(kolo);
kwadrat=boolean(kwadrat);

figure(1)
subplot(2,2,1)
imshow(kolo);
title('kolo')
subplot(2,2,2)
imshow(~kolo);
title('not kolo')
subplot(2,2,3)
imshow(kwadrat);
title('kwadrat')
subplot(2,2,4)
imshow(~kwadrat);
title('not kwadrat')

figure(2)
subplot(2,2,1)
imshow(kolo);
title('kolo')
subplot(2,2,2)
imshow(kwadrat);
title('kwadrat')
subplot(2,2,3:4)
imshow(kolo & kwadrat)
title('kolo AND kwadrat');

figure(3)
subplot(2,2,1)
imshow(kolo);
title('kolo')
subplot(2,2,2)
imshow(kwadrat);
title('kwadrat')
subplot(2,2,3:4)
imshow(kolo | kwadrat)
title('kolo OR kwadrat');

figure(4)
subplot(2,2,1)
imshow(kolo);
title('kolo')
subplot(2,2,2)
imshow(kwadrat);
title('kwadrat')
subplot(2,2,3:4)
imshow(xor(kolo,kwadrat))
title('kolo XOR kwadrat');
