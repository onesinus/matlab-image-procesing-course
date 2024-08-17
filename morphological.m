SE = strel('disk', 5);

image2 = imdilate(image1, SE);

figure(2);

imshow(image2);