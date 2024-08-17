image2 = imnoise(image0, 'gaussian', 0.01);

figure(2);

imshow(image2);

image3 = imnoise(image0, 'salt & pepper', 0.09);

figure(3);

imshow(image3);

image4 = medfilt2(rgb2gray(image3));

figure(4);

imshow(image4);