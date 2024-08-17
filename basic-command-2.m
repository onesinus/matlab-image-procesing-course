% Load an image

img = imread('image.jpg');  

% Display the image

imshow(img);

% Convert the image to grayscale

grayImg = rgb2gray(img);

% Display the grayscale image

imshow(grayImg);

% Resize the image to half its original size

resizedImg = imresize(img, 0.5);

% Display the resized image

imshow(resizedImg);

% Crop a portion of the image

croppedImg = imcrop(img, [50 50 200 200]); % [x, y, width, height]

% Display the cropped image

imshow(croppedImg);

% Show the histogram of a grayscale image

imhist(grayImg);

img1=img1(:,:,1);

% Convert grayscale image to binary using a threshold

binaryImg = imbinarize(grayImg, 0.5); % Threshold of 0.5

% Display the binary image

imshow(binaryImg);

% Apply Canny edge detection

edges = edge(img1, 'Canny');

% Display the edges

imshow(edges);

% Apply Gaussian filter for smoothing

smoothedImg = imgaussfilt(img, 2); % Sigma = 2

% Display the smoothed image

imshow(smoothedImg);

% Rotate the image by 45 degrees

rotatedImg = imrotate(img, 45);

% Display the rotated image

imshow(rotatedImg);

% Save the processed image

imwrite(grayImg, 'gray_image.jpg');