close all, clear all;
load maskiPP.mat

obraz=imread('kwadraty.tif');


kws1=(conv2(double(obraz),S1,'same'));
kws2=(conv2(double(obraz),S2,'same'));
k2=uint8(abs(kws1)+abs(kws2));
k1=uint8(sqrt((kws1.^2) + (kws2.^2)));

[H, T, R] = hough(k2);
P = houghpeaks(H, 8,'NHoodSize',[29 29])


lines = houghlines(k2,T,R,P);
figure, imshow(obraz), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','blue');