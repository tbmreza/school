img = imread('peppers.png');
img_smooth = imgaussfilt(img, 8);
img_detail = img - img_smooth;
img_sharp = img + img_detail;
figure(1); imshow(img); title('original');
figure(2); imshow(img_sharp); title('sharpened = original + details');