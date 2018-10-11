Ta = 0.001;
t1 = [0:Ta:5]';
t2 = [0:Ta:5]';

N = length(t1); #dimensao de t1 (e t2)
q = zeros(N, N); #matriz n por n so com zeros
for n=1 : N
  q(:, n) = 2*sin(2*pi*(2*t1 + t2(n)));
end
mesh(t1, t2, q);