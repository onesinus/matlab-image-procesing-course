% customProcessImage.m

function binaryImage = customProcessImage(image_path, threshold)

 img = imread(image_path);

if size(img, 3) == 3

 grayImg = rgb2gray(img);

else

 grayImg = img;

end

 binaryImage = grayImg > threshold;

 figure;

 subplot(1, 2, 1);

 imshow(grayImg);

 title('Grayscale Image');

 subplot(1, 2, 2);

 imshow(binaryImage);

 title('Binary Image');

 imwrite(binaryImage, 'binary_image_result.png');

end

%To call the function
%customProcessImage('grayscale.jpg', 128);