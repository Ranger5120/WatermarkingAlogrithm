I = imread('gh1.pgm');
I = im2double(I);
figure(1);imshow(I);
title('host image');

[ca1,ch1,cv1,cd1]=dwt2(I,'haar');
[ca2,ch2,cv2,cd2]=dwt2(ca1,'haar');
[ca3,ch3,cv3,cd3]=dwt2(ca2,'haar');
figure(2);imshow(ca3);title('ca3 image');
whos ca3;

W = imread('blk1.pgm');
W = im2double(W);
% W = 255*W;
% W = imcomplement(W);
% W = imresize(W, [576 704]);
[Wca1, Wch1, Wcv1, Wcd1] = dwt2(W,'haar');
[Wca2, Wch2, Wcv2, Wcd2] = dwt2(Wca1, 'haar');
[Wca3, Wch3, Wcv3, Wcd3] = dwt2(Wca2, 'haar');
figure(3); imshow(Wca3);
title('watermark image');

ca3new=ca3+Wca3;

ca2new = idwt2(ca3new, ch3, cv3, cd3,'haar');
ca1new = idwt2(ca2new, ch2, cv2, cd2, 'haar');
Inew=idwt2(ca1new, ch1, cv1, cd1, 'haar');
figure(4); imshow(Inew);
title('watermarked-image');




