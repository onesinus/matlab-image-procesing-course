img = imread('grayscale.jpg');

imgGray = rgb2gray(img);

img1 = edge(imgGray, 'canny');

figure;

subplot(1, 2, 1);

imshow(img);

title('Original Image');

subplot(1, 2, 2);

imshow(img1);

title('Edge Detection Image');