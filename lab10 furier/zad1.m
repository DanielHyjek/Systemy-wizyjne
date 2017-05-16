close all, clear all;
%%%%%%%%
obraz=imread('dwieFale.bmp');
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

%%%%%%%%
obraz=imread('kolo.bmp');
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

%%%%%%%%%%%
obraz=imread('kwadrat.bmp');
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

%%%%%%%%%%%%
obraz=imread('kwadrat45.bmp');
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

%%%%%%%%%%%%%%%%
obraz=imread('trojkat.bmp');
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




%%%%%%%%%%%%% Porównanie 1 wymiarowej i 2 wymiarowej
Y=fft2(obraz);
A=log10(abs(Y)+1);
F = angle(Y.*(A>0.0001));
F1= fft(obraz,[],1);
F2= fft(F1,[],2);
A1=log10(abs(F2)+1);
F1 = angle(F2.*(A1>0.0001));


figure
subplot(1,3,1)
imshow(A,[])
title('Amplituda fft2')
subplot(1,3,2)
imshow(A1,[])
title('Amplituda fft')
subplot(1,3,3)
imshow(A1-A,[])
title('Różnica')

figure
subplot(1,3,1)
imshow(F,[])
title('Faza fft2')
subplot(1,3,2)
imshow(F1,[])
title('Faza fft')
subplot(1,3,3)
imshow(F1-F,[])
title('Różnica')