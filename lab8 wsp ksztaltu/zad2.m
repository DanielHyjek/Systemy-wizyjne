%% PKT A
close all; clear all;
obraz=imread('indeks2.bmp');

bit4=bwlabel(obraz,4);
labeled=bwlabel(obraz,8);
figure(1)
subplot(1,3,1)
imshow(obraz,[])
title('Oryginał')
subplot(1,3,2)
imshow(bit4,[])
title('bwlabel z 4 somsiadów')
subplot(1,3,3)
imshow(labeled,[])
title('bwlabel z 8 somsiadów')

%% PKT B
close all; clear all;
obraz=imread('ksztalty.bmp');
size=size(obraz);

labeled=bwlabel(obraz,8);

wsp = obliczWspolczynniki(labeled);
subplot(1,2,1)
imshow(labeled,[])
r = regionprops(labeled,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end

     for x=2:size(1,1)-1
        for y=2:size(1,2)-1 %2 petle do poruszania sie po calym obrazie
            piksel = labeled(x,y);
            if piksel ~= 0 && ~(wsp(piksel,1) > 0.73 && wsp(piksel,1) < 0.86)
                labeled(x,y) = 0;
            end
        end
     end
     
     
subplot(1,2,2)
imshow(labeled,[])
r = regionprops(labeled,'Centroid');
for i=1:length(r)
    text(r(i).Centroid(1),r(i).Centroid(2),['\color{magenta}',num2str(i)]);
end