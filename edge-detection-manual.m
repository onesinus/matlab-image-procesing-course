% edgeDetection.m

function edgeImage = edgeDetection(image_path)

 img = imread(image_path);

if size(img, 3) == 3

 grayImg = rgb2gray(img);

else

 grayImg = img;

end

% Logics

 sobelX = [-1 0 -1; -2 0 2; -1 0 1];

 sobelY = [-1 2 -1; 0 0 0; 1 2 1];

 [rows, cols] = size(grayImg);

 edgeImage = zeros(rows, cols);

for i = 2: rows - 1

for j = 2: cols - 1

 neighborhood = double(grayImg(i-1:i+1, j-1:j+1));

 Gx = sum(sum(neighborhood .* sobelX));

 Gy = sum(sum(neighborhood .* sobelY));

 edgeImage(i, j) = sqrt(Gx^2 + Gy^2);

end

end

 edgeImage = uint8(255 * mat2gray(edgeImage));

% Display

 figure;

 subplot(1, 2, 1);

 imshow(grayImg);

 title('Grayscale Image');

 subplot(1, 2, 2);

 imshow(edgeImage);

 title('Edge Detected Image');

end

% Using the function

%edgeDetection('grayscale.jpg');
 
% edgeDetection('diabetic-retinopaty.jpg');

% edgeDetection('ct-scan-abdominal.jpg');