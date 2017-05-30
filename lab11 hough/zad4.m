close all, clear all;

obraz=zeros(11);
obraz(3,6)=1;
H = houghAB(obraz);
figure
imshow(H,[])
title('1 pkt ')

obraz(3,2)=1;
H = houghAB(obraz);
figure
imshow(H,[])
title('2 pkt ')

clear all;
obraz=zeros(11);
obraz(1,7)=1;
obraz(8,7)=1;
obraz(3,7)=1;
obraz(11,7)=1;
H = houghAB(obraz);
figure
imshow(H,[])
title('4 pkt wspoliniowe')