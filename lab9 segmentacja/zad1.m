close all, clear all;

obraz_org=imread('umbrealla.png');
obraz=double(rgb2hsv(obraz_org));
image=obraz(:,:,1);

rozm=size(image);
global segRes segMean prog minimum index;
index=1;
minimum=[4 4];
prog = 0.02;
segRes = ones(rozm(1,1),rozm(1,2));
segMean = ones(rozm(1,1),rozm(1,2));
prog2=0.02;


split(image,1,1,256,256);
imshow(segMean)

for i_index = 1:index
    
    IB = segRes == i_index;
    IBDilate = imdilate(IB,strel('square',3));
    IBDiff = IBDilate - IB;
    IBMult = IBDiff.*segRes;
    IBMultNZ = nonzeros(IBMult);
    IBUnique = unique(IBMultNZ);
    
    for i = 1:length(IBUnique)
        IBS = segRes == IBUnique(i);
        [y_IBS , x_IBS] = find(IBS, 1 , 'first');
        [y_IB, x_IB] = find(IB, 1, 'first');
        if abs(segMean(y_IBS, x_IBS) - segMean(y_IB, x_IB)) < prog2
            segRes(IBS) = i_index;
        end
    end
end

% Zerowaie ma³ych obszarów
ind=unique(segRes);
for i = 1:length(ind)
    IB = segRes == i;
    pole=sum(IB);
    if pole<120
        segRes=segRes.*~IB;
    end
end



figure
imshow(label2rgb(segRes), []);
title('Segmented')