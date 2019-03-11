I = imread("Parede.jpg");
delta = 4;
T = I(1:delta:end, 1:delta:end, :);
image(T);