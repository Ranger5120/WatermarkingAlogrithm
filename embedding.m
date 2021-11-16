I = imread('lena.png');
I = im2double(I);
I = rgb2gray(I);
figure(1);imshow(I);
title('host image');

[ca1,ch1,cv1,cd1]=dwt2(I,'haar');
[ca2,ch2,cv2,cd2]=dwt2(ca1,'haar');
figure(2);imshow(ca2);title('ca2 image');

W = imread('watermark.png');
W = im2double(W);
W = 255*W;

figure(3); imshow(W);
title('watermark image');


