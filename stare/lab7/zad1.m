close all; clear all;

kne=imread('knee.png');
subplot(1,2,1)
imshow(kne);
[y x]=ginput;
pkt=round([x y]);
kne=double(kne);

visited=zeros(780,695);
segmented=zeros(780,695);
stos=zeros(1000,2);
stoss=1;
stos(1,:)=pkt;
visited(pkt(1,1),pkt(1,2))=1;
segmented(pkt(1,1),pkt(1,2))=1;

lit=0;

while stoss~=0
    punkt=stos(stoss,:);
    stoss=stoss-1;
    lit=lit+1
    if (punkt(1,2)>0 && punkt(1,2)<693 && punkt(1,1)>0 && punkt(1,1)<779)
    for x=punkt(1,1)-1:punkt(1,1)+1
        for y=punkt(1,2)-1:punkt(1,2)+1
            if (visited(x,y)==0 && x~=punkt(1,1) && y~=punkt(1,2))
                miara=abs(kne(punkt(1,1),punkt(1,2))-kne(x,y));
                if (miara<10)
                    segmented(x,y)=1;
                    stoss=stoss+1;
                    stos(stoss,1)=x;
                    stos(stoss,2)=y;                   
                end
                visited(x,y)=1;
                
            end
        end
    end
  end
        
end


subplot(1,2,2)
imshow(segmented);
    
                    
                
    