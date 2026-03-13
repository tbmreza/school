%{
Convert RGB color formatted image to black and white.
Converting to single layer matrix (grayscale) first, then to black white.
%}

% Loading image.
foto = imread('sample_gambar.jpg');
figure(1);
imshow(foto);

foto_gs = rgb2gray(foto);

% Create zeros. Fill positions at which the corresponding grayscale image
% have value greater than threshold.
threshold = 80;
size_foto = size(foto);
foto_bw = zeros(size_foto(1), size_foto(2));
for baris = 1:size_foto(1)
    for kolom = 1:size_foto(2)
        if (foto_gs(baris, kolom) > threshold)
            foto_bw(baris, kolom) = 1;
        end
    end
end

% Displaying result.
figure(2);
imshow(foto_bw);
title('Black White');