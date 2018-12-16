[Image, color_map] = imread('Parede_8bit.bmp');
% figure(1); imshow(Image, color_map);
[N, M] = size(Image);

Save8bitImage('Parede_8bit_2.bmp', Image);

Image2 = Load8bitImage('Parede_8bit_2.bmp');
% figure(2); imshow(Image2, color_map);

Stream = EncodeImage_RLE(Image);
Save8bitStream('Parede_compressed.str', N, M, Stream);

[N, M, Stream_2] = Load8bitStream('Parede_compressed.str');
% disp(sum(Stream != Stream_2));
Image2 = DecodeImage_RLE(N, M, Stream_2);
imshow(Image2, color_map);

