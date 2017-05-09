function split(obraz,x,y,X,Y)
global segRes;
global segMean;
global prog;
global minimum;
global index;

obszar=obraz(x:X,y:Y);
srednia=mean(obszar(:));
odchylenie=std(obszar(:));

if (odchylenie>prog && (X-x) >= minimum(1,1) && (Y-y) >= minimum(1,2))
    O=round([(X-x)/2 (Y-y)/2])
    split(obraz,x,y,O(1),O(2));
    split(obraz,O(1),y,X,O(2));
    split(obraz,x,O(2),O(1),Y);
    split(obraz,O(1),O(2),X,Y);
else
    index=index+1;
    segRes(x:X,y:Y) = index; 
    segMean(x:X,y:Y) = srednia; 
end
end