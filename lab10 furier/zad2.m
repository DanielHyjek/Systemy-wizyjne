close all, clear all;

%%%%%%%%%%%% TRANSLACJA  %%%%%%%%%%%%
obraz=imread('kwadrat.bmp');
obraz2=imread('kwadratT.bmp');
Y=fft2(obraz);
Y2=fft2(obraz2);
A=log10(abs(Y)+1);
A2=log10(abs(Y2)+1);
F = angle(Y.*(A>0.0001));
F2 = angle(Y2.*(A2>0.0001));

figure
subplot(3,2,1)
imshow(obraz)
title('oryginal')
subplot(3,2,2)
imshow(obraz2)
title('Translacja')
subplot(3,2,3)
imshow(A,[])
title('Amplituda oryginal')
subplot(3,2,4)
imshow(A2,[])
title('Amplituda translacji')
subplot(3,2,5)
imshow(F,[])
title('Faza oryginal')
subplot(3,2,6)
imshow(F2,[])
title('Faza translacji')


%%%%%%%%%% ROTACJA %%%%%%%%%
obraz=imread('kwadrat.bmp');
obraz2=imread('kwadrat45.bmp');
Y=fft2(obraz);
Y2=fft2(obraz2);
A=log10(abs(Y)+1);
A2=log10(abs(Y2)+1);
F = angle(Y.*(A>0.0001));
F2 = angle(Y2.*(A2>0.0001));

figure
subplot(3,2,1)
imshow(obraz)
title('oryginal')
subplot(3,2,2)
imshow(obraz2)
title('Rotacja')
subplot(3,2,3)
imshow(A,[])
title('Amplituda oryginal')
subplot(3,2,4)
imshow(A2,[])
title('Amplituda rotowanego')
subplot(3,2,5)
imshow(F,[])
title('Faza oryginal')
subplot(3,2,6)
imshow(F2,[])
title('Faza rotowanego')


%%%%%%%%%%%%% ZMIANA ROZMIARU %%%%%%%%%%
obraz=imread('kwadrat.bmp');
obraz2=imread('kwadratS.bmp');
Y=fft2(obraz);
Y2=fft2(obraz2);
A=log10(abs(Y)+1);
A2=log10(abs(Y2)+1);
F = angle(Y.*(A>0.0001));
F2 = angle(Y2.*(A2>0.0001));

figure
subplot(3,2,1)
imshow(obraz)
title('oryginal')
subplot(3,2,2)
imshow(obraz2)
title('powiększony')
subplot(3,2,3)
imshow(A,[])
title('Amplituda oryginal')
subplot(3,2,4)
imshow(A2,[])
title('Amplituda powiększonego')
subplot(3,2,5)
imshow(F,[])
title('Faza oryginal')
subplot(3,2,6)
imshow(F2,[])
title('Faza powiększonego')


%%%%%%%% KOMBINACJA %%%%%%%%%%
obraz=imread('kwadrat.bmp');
obraz2=imread('kwadrat45.bmp');
obraz3=imread('kwadratKL.bmp');
Y=fft2(obraz);
Y2=fft2(obraz2);
Y3=fft2(obraz3);
A=log10(abs(Y)+1);
A2=log10(abs(Y2)+1);
A3=log10(abs(Y3)+1);
F = angle(Y.*(A>0.0001));
F2 = angle(Y2.*(A2>0.0001));
F3 = angle(Y3.*(A3>0.0001));

figure
subplot(3,3,1)
imshow(obraz)
title('oryginal')
subplot(3,3,2)
imshow(obraz2)
title('45 stopni')
subplot(3,3,3)
imshow(obraz3)
title('Kombinacja')
subplot(3,3,4)
imshow(A,[])
title('Amplituda oryginal')
subplot(3,3,5)
imshow(A2,[])
title('Amplituda 45')
subplot(3,3,6)
imshow(A3,[])
title('Amplituda kombinacji')
subplot(3,3,7)
imshow(F,[])
title('Faza oryginal')
subplot(3,3,8)
imshow(F2,[])
title('Faza 45')
subplot(3,3,9)
imshow(F3,[])
title('Faza kombinacji')