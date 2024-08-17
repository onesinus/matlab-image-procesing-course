image2 = flip(image0, 2);

image3 = flip(image0, 1);

figure(2);

subplot(1, 3, 1), imshow(image0), title('Original Image');

subplot(1, 3, 2), imshow(image2), title('Image Flipper horizontally');

subplot(1, 3, 3), imshow(image3), title('Image Flipper vertically');