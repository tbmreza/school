peppers = imread('peppers.png');
img = rgb2gray(peppers);
method = 'canny'; % ['canny', 'prewitt', 'sobel', 'roberts']
img_edge = edge(img, method);
figure(1); imshow(peppers); title('Original');
figure(2); imshow(img_edge); title(method);