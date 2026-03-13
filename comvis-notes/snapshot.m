% Execute this line separately in command window to activate webcam.
cam = webcam(1);

% Save single image.
img = snapshot(cam);
imwrite(img, 'filename.jpg');

% Save multiple images.
for each = 1:1000
    frames{each} = snapshot(cam);
end

for each = 1:1000
    imwrite(frames{each}, sprintf('filename%d.jpg', each));
end
