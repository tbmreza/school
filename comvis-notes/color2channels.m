%{
Separate RGB image to three channels.
Create single channel images by replacing undesired layers
with black channel.
%}

% Loading and displaying original image.
foto = imread('sample_gambar.jpg');
figure(1);
imshow(foto);
size_foto = size(foto);

red_channel     = foto(:,:,1);
green_channel   = foto(:,:,2);
blue_channel    = foto(:,:,3);
black       = zeros(size_foto(1), size_foto(2));

just_red    = cat(3, red_channel, black, black);
just_green  = cat(3, black, green_channel, black);
just_blue   = cat(3, black, black, blue_channel);

% Displaying results.
figure(2); imshow(just_red);
figure(3); imshow(just_green);
figure(4); imshow(just_blue);
