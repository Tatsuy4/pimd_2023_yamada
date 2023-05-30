I = imread('cameraman.tif');
figure(1)
imshow(I)

Iblur = imgaussfilt(I,16);
figure(2)
imshow(Iblur)