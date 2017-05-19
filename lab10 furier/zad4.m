close all, clear all;


obraz=imread('lena.bmp');
Y=fft2(obraz);
Y=fftshift(Y);
A=log10(abs(Y)+1);
F = angle(Y.*(A>0.0001));

figure
subplot(1,3,1)
imshow(obraz)
title('oryginal')
subplot(1,3,2)
imshow(A,[])
title('Amplituda')
subplot(1,3,3)
imshow(F,[])
title('Faza')

%%%%%%%%%%%%% FILTR DOLNOPRZEPUSTOWY %%%%%%%%%%%%%%%%%%%%%%%
[f1,f2] = freqspace(512,'meshgrid'); %wygeneruje wektory opisujące przestrzeń w dziedzinie częstotliwości (512 - rozmiar obrazka)
Hd = ones(512);             % początkowo filtr inicjujemy samymi wartościami '1' 512 - rozmiar obrazka
r = sqrt(f1.^2 + f2.^2); %- wektor r promień koła w dziedzinie częstotliwości
Hd((r>0.2)) = 0; %- wybieramy interesujący nas zakres - tu można zdefiniować typ filtru (dolno, górno, pasmowoprzepustowy)
figure
colormap(jet(64)); mesh(f1,f2,Hd);  %filtr można zwizualizować
title('Wizualizacja filtru dolnoprzepustowego')

Y=Y.*Hd;        %filtracja
Y=ifftshift(Y);
Y=ifft2(Y);

figure
subplot(1,2,1)
imshow(obraz)
title('oryginal')
subplot(1,2,2)
imshow(Y,[])
title('obraz po filtracji dolnoprzepustowej')



%%%%%%%%%%%%%%%%%%%% FILTR GORNOPRZEPUSTOWY %%%%%%%%%%%%%%%%%%%
obraz=imread('lena.bmp');
Y=fft2(obraz);
Y=fftshift(Y);
A=log10(abs(Y)+1);
F = angle(Y.*(A>0.0001));


[f1,f2] = freqspace(512,'meshgrid'); %wygeneruje wektory opisujące przestrzeń w dziedzinie częstotliwości (512 - rozmiar obrazka)
Hd = ones(512);             % początkowo filtr inicjujemy samymi wartościami '1' 512 - rozmiar obrazka
r = sqrt(f1.^2 + f2.^2); %- wektor r promień koła w dziedzinie częstotliwości
Hd((r<0.05)) = 0; %- wybieramy interesujący nas zakres - tu można zdefiniować typ filtru (dolno, górno, pasmowoprzepustowy)
figure
colormap(jet(64)); mesh(f1,f2,Hd);  %filtr można zwizualizować
title('Wizualizacja filtru górnoprzepustowego')

Y=Y.*Hd;        %filtracja
Y=ifftshift(Y);
Y=ifft2(Y);

figure
subplot(1,2,1)
imshow(obraz)
title('oryginal')
subplot(1,2,2)
imshow(Y,[])
title('obraz po filtracji górnoprzepustowej')


%%%%%%%%%%%%%%%%%%%% FILTR PASMOWY %%%%%%%%%%%%%%%%%%%
obraz=imread('lena.bmp');
Y=fft2(obraz);
Y=fftshift(Y);
A=log10(abs(Y)+1);
F = angle(Y.*(A>0.0001));


[f1,f2] = freqspace(512,'meshgrid'); %wygeneruje wektory opisujące przestrzeń w dziedzinie częstotliwości (512 - rozmiar obrazka)
Hd = ones(512);             % początkowo filtr inicjujemy samymi wartościami '1' 512 - rozmiar obrazka
r = sqrt(f1.^2 + f2.^2); %- wektor r promień koła w dziedzinie częstotliwości
Hd((r<0.07 & r>0.02)) = 0; %- wybieramy interesujący nas zakres - tu można zdefiniować typ filtru (dolno, górno, pasmowoprzepustowy)
figure
colormap(jet(64)); mesh(f1,f2,Hd);  %filtr można zwizualizować
title('Wizualizacja filtru pasmowego')

Y=Y.*Hd;        %filtracja
Y=ifftshift(Y);
Y=ifft2(Y);

figure
subplot(1,2,1)
imshow(obraz)
title('oryginal')
subplot(1,2,2)
imshow(Y,[])
title('obraz po filtracji górnoprzepustowej')


%%%%%%%%%%%%%%% HAMING %%%%%%%%%%%%%
obraz=imread('lena.bmp');
Y=fft2(obraz);
Y=fftshift(Y);
A=log10(abs(Y)+1);
F = angle(Y.*(A>0.0001));


h = fwind1(Hd,chebwin(250)); %- tworzenie filtra 2D
[H, f1, f2] = freqz2(h,512,512); %- wyznaczanie odpowiedzi filtra



Y=Y.*H;        %filtracja
Y=ifftshift(Y);
Y=ifft2(Y);

figure
subplot(1,2,1)
imshow(obraz)
title('oryginal')
subplot(1,2,2)
imshow(Y,[])
title('obraz po wyostrzeniu')
