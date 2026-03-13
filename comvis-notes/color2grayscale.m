%{
Convert RGB color formatted image to grayscale.
Using hand coded formula (function: rgb2gray).
%}

% Loading and displaying original image.
foto = imread('sample_gambar.jpg');
figure(1);
imshow(foto);

% For readability.
red     = foto(:,:,1);
green   = foto(:,:,2);
blue    = foto(:,:,3);

foto_gs = 0.3*red+0.5*green+0.2*blue;        

% Displaying result.
figure(2); 
imshow(foto_gs);
title('Grayscale');