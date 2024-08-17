grayImg = imread('rice.png');

figure;

imshow(grayImg);

binaryImg = imbinarize(grayImg);

[labeledImg, numObjects] = bwlabel(binaryImg);

figure;

subplot(1, 2, 1);

imshow(binaryImg);

title('Binary Image');

subplot(1, 2, 2);

imshow(label2rgb(labeledImg));

title(['Objects Counted: ', num2str(numObjects)]);