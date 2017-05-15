function [] = split(image, x1, y1, x2, y2)

global segRes segMean minimum index prog

temp = image(x1:x2, y1:y2);
[row, col]=size(temp);
srednia = mean(double(temp(:)));
odchylenie = std(double(temp(:)));

    if odchylenie > prog && row > minimum(1,1) && col > minimum(1,2)
        split(image, x1, y1, round((x2-x1)/2)+x1, round((y2-y1)/2)+y1);
        split(image, x1, round((y2-y1)/2)+y1, round((x2-x1)/2)+x1, y2);
        split(image, round((x2-x1)/2)+x1, y1, x2, round((y2-y1)/2)+y1);
        split(image, round((x2-x1)/2)+x1, round((y2-y1)/2)+y1, x2, y2);
    else 
        index = index + 1;
        segRes(x1:x2, y1:y2) = index;
        segMean(x1:x2, y1:y2) = srednia;
    end

end