imshow(image1);

r_image1 = image1(:,:,1);

g_image1 = image1(:,:,2);

b_image1 = image1(:,:,3);

figure(2);

subplot(1, 3, 1), imshow(r_image1), title('Red Channel');

subplot(1, 3, 2), imshow(g_image1), title('Green Channel');

subplot(1, 3, 3), imshow(b_image1), title('Blue Channel');