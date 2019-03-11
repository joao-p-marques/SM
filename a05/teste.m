T = imread('Parede.jpg');
[N, M, b] = size(T);
Q = zeros(N, M, b);

T(1, 1);

for(i=1:N)
  for(j=1:M)
    Q(i, j) = T(i, j) > [0 1/2 1];
  end
end

image(Q);