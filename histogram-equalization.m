image3 = histeq(image0);

figure(2);

imshow(image3);

figure(3);

imhist(image0, 64);

figure(4);

imhist(image3, 64);