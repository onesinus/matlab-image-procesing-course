% applyGaussianBlur.m

function blurredImage = applyGaussianBlur(image_path, sigma)

 img = imread(image_path);

if size(img, 3) == 3

 grayImg = rgb2gray(img);

else

 grayImg = img;

end

 blurredImage = imgaussfilt(grayImg, sigma);

 figure;

 subplot(1, 2, 1);

 imshow(grayImg);

 title('Grayscale Image');

 subplot(1, 2, 2);

 imshow(blurredImage);

 title('Blurred Image');

end

%Call the function

%applyGaussianBlur('grayscale.jpg', 2);