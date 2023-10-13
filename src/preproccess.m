function img_out = preproccess(img_in)
%   检测魔方有效区域，变换为正方形
clc;
img = imread(img_in);

%subplot(2,3,1);
%imshow(img),title('输入图');

img = imresize(img,[500 500]);  %统一尺寸
img = imgaussfilt(img,1);       %高斯滤波
gi = rgb2gray(img);             %灰度化

%subplot(2,3,2);
%imshow(gi),title('高斯滤波，灰度图');

ei = edge(gi,0.01);             %边缘检测二值化

%subplot(2,3,3);
%imshow(ei),title('边缘检测');

[H,Theta,Rho] = hough(ei,'RhoResolution',10,'Theta',-90:1:89);  %霍夫变换
peaks = houghpeaks(H,200,'NHoodSize',[1 11],'Threshold',200);
lines = houghlines(ei,Theta,Rho,peaks,'FillGap',5);

%subplot(2,3,4);
%imshow(ei),title('霍夫变换求线段');
%hold on

x = zeros(2*length(lines),1);
y = zeros(2*length(lines),1);
for k = 1 : length(lines)
   xy = [lines(k).point1; lines(k).point2]; 
   %plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
   x(2*k-1) = lines(k).point1(1);
   x(2*k) = lines(k).point2(1);
   y(2*k-1) = lines(k).point1(2);
   y(2*k) = lines(k).point2(2);
end
b = boundary(x,y,0);        %求所有线段端点的最外围点

%subplot(2,3,5);
%imshow(img),title('外围轮廓');
%hold on
%plot(x,y, '.', x(b), y(b), '-r');

%求四个角点
[~,i] = max(x(b)+y(b));
topright = [x(b(i)),y(b(i))]; 
[~,i] = max(x(b)-y(b));
bottomright = [x(b(i)),y(b(i))]; 
[~,i] = max(-x(b)+y(b));
topleft = [x(b(i)),y(b(i))]; 
[~,i] = max(-x(b)-y(b));
bottomleft = [x(b(i)),y(b(i))]; 
%由角点构造变换矩阵，并变换
tform = fitgeotrans([topleft;topright;bottomleft;bottomright],[0 500;500 500;0 0;500 0],'affine'); 
img = imwarp(img,tform,'OutputView',imref2d(size(img)));

%subplot(2,3,6);
%imshow(img),title('仿射变换');

img_out = img;
end

