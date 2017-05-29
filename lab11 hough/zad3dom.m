close all, clear all;
I = imread('dom.tif');
I=imsharpen(I);
BWs = medfilt2(I);
BWs = edge(BWs,'Prewitt','nothinning');


figure, imshow(BWs), title('binary gradient mask');



[H, T, R] = hough(BWs);
P = houghpeaks(H, 30,'NHoodSize',[29 29],'threshold',ceil(0.4*max(H(:))))


lines = houghlines(BWs,T,R,P);
figure, imshow(I,[]), hold on
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