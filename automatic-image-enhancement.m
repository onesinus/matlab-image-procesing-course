img = imread('ct-scan-abdominal.jpg');

img_gray = rgb2gray(img);

img_enh = histeq(img_gray);

figure;

subplot(1, 2, 1);

imshow(img_gray);

title('Original Image');

subplot(1, 2, 2);

imshow(img_enh);

title('Enhanced Image');