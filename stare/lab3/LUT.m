function LUT(obraz,przekodowanie) 
wynik=intlut(obraz,przekodowanie);
subplot(2,2,1:2)
plot(przekodowanie);
title('funkcja');
subplot(2,2,3)
imshow(obraz);
title('oryginal');
subplot(2,2,4);
imshow(wynik);
title('obraz przeksztalcony')

end