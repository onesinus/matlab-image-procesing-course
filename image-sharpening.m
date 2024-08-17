img = imread('grayscale.jpg');

img1 = rgb2gray(img);

lapcianFilter = [0, -1, 0; -1 5 -1; 0 -1 0];

img2 = imfilter(img1, lapcianFilter);

figure;

subplot(1, 2, 1);

imshow(img1);

title('Gray Image');

subplot(1, 2, 2);

imshow(img2);

title('Sharpened Image');