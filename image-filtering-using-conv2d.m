image2 = rgb2gray(image1);

imshow(image2);

kernel = ones(3, 3) / 9;

image3 = conv2(double(image2), kernel, 'same');

figure(2);

imshow(uint8(image3));