img = imread('peppers.png');
img_noised = imnoise(img, 'gaussian');
for i = 1:3
    img_noised_medfilt(:,:,i) = medfilt2(img_noised(:,:,i), [3 3]);
    % Median filter every layer.
end
figure(1); imshow(img_noised); title('Noised');
figure(2); imshow(img_noised_medfilt); title('Median Filtered');