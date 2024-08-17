image1 = imread('diabetic-retinopaty.jpg');

figure(1);

imshow(image1);

figure(2);

image2 = rgb2gray(image1);

imshow(image2);

figure(3);

image3 = rgb2hsv(image1);

imshow(image3);