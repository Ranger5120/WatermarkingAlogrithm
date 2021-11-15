colorPicture = imread('lena.png');
colorPicture=im2double(colorPicture);
imshow(colorPicture);

I = rgb2gray(colorPicture);
figure;
imshow(I);
imwrite(I,'lenaGray.jpg');