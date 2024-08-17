img = imread('ct-scan-abdominal.jpg');

img1 = rgb2gray(img);

gaussianFilter = fspecial("gaussian", [5,5], 2);

img2 = imfilter(img1, gaussianFilter, 'symmetric');

figure;

subplot(1,2,1);

imshow(img1);

title('Original Image');

subplot(1,2,2);

imshow(img2);

title('Blurred Image');