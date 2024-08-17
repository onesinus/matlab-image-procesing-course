image0 = imread('grayscale.jpg');

figure(1);

imshow(image0);

threshold = graythresh(image0);

image2 = imbinarize(image0, threshold);

figure(2);

imshowpair(image0,image2,'montage');

% Using K-means
[L,Centers] = imsegkmeans(image0,3);

B = labeloverlay(image0,L);

imshow(B)

title("Labeled Image")