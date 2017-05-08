close all; clear all;
%wczytanie obrazu i zamiana na wartosc double
kne=imread('knee.png');
kne=double(kne);
size=size(kne);

%Wyswietlenie i pobranie punktu
subplot(1,2,1)
imshow(kne,[]);
[y x]=ginput(1);
pkt=round([x y]);

%Utworzenie tablic
visited=zeros(size);
segmented=zeros(size);
stos=zeros(1000,2);

stoss=1; %ilosc elementow na stosie
%pkt startowy na stos i do tablic
stos(1,:)=pkt;
visited(pkt)=1;
segmented(pkt)=1;

lit=0;  %licznik iteracji

while stoss~=0  
    punkt=stos(stoss,:);    %pobranie pkt ze stosu
    stoss=stoss-1;          %zmniejszenie ilosi elementow na stosie
    lit=lit+1;
    %warunek ograniczajacy aby nie wyjsc za obraz
    if (punkt(1,2)>1 && punkt(1,2)<size(1,2)-1 && punkt(1,1)>1 && punkt(1,1)<size(1,1)-1)
    for x=(punkt(1,1)-1):(punkt(1,1)+1)
        for y=(punkt(1,2)-1):(punkt(1,2)+1) %2 petle do sprawdzania 8 somsiadow badanego pkt
            if (visited(x,y)==0 )   %sprawdze tylko nieodwiedzanego pkt
                miara=abs(kne(punkt(1,1),punkt(1,2))-kne(x,y));
                if (miara<4)                    
                    segmented(x,y)=1;
                    stoss=stoss+1;  %zwiekszenie stosu i wrzucenie na niego badanego pkt
                    stos(stoss,1)=x;
                    stos(stoss,2)=y;                   
                end
                visited(x,y)=1;   %dodanie pkt do odwiedzonych                  
            end
        end
    end
    end   
end

subplot(1,2,2)
imshow(segmented,[]);