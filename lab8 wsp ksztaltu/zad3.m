close all; clear all;
obraz=imread('ksztaltyReal.bmp');
obraz=rgb2gray(obraz);
imhist(obraz)
progDolny = 15;
progGorny = 55;

obrazBW = obraz > progDolny & obraz < progGorny;
obrazBW = uint8(obrazBW);

figure(2)

imshow(obrazBW, [])
title('Binaryzacja dwuprogrowa')

figure(3)
obraz=~im2bw(obraz,(67/255));
imshow(obraz)
%% 
close all; clear all;
obraz=imread('ksztaltyReal.bmp');
obraz=rgb2gray(obraz);
obraz=~im2bw(obraz,(67/255));
imshow(obraz)
size=size(obraz);

labeled=bwlabel(obraz,8);
figure(2)
imshow(labeled,[])
wsp = obliczWspolczynniki(labeled);
r = regionprops(labeled,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end

for x=2:size(1,1)-1
        for y=2:size(1,2)-1 %2 petle do poruszania sie po calym obrazie
            piksel = labeled(x,y);
            if piksel ~= 0 && ~(wsp(piksel,3) > 4.8 && wsp(piksel,3) < 5.1 && wsp(piksel,5) > 0.0092)
                labeled(x,y) = 0;
            end
        end
end

obraz=imread('ksztaltyReal.bmp');
 for x=2:size(1,1)-1
        for y=2:size(1,2)-1 %2 petle do poruszania sie po calym obrazie
            if labeled(x,y)>0
                obraz(x,y)=900;
            end
        end
 end
  figure(4)
 imshow(labeled,[])
 figure(5)
 imshow(obraz,[])