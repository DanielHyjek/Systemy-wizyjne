close all, clear all;

obraz=zeros(11);
obraz(3,6)=1;
H = houghAB(obraz);
figure
imshow(H,[])
title('1 pkt ')

obraz(7,2)=1;
H = houghAB(obraz);
figure
imshow(H,[])
title('2 pkt ')

clear all;
obraz=zeros(11);
obraz(4,7)=1;
obraz(4,11)=1;
obraz(4,1)=1;
obraz(4,3)=1;
H = houghAB(obraz);
figure
imshow(H,[])
title('4 pkt wspoliniowe')