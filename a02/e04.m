Ta = 1/1000;
t = [0 : 1 : 5]';
n_exp = 5;

f = [1.1 1.2 1.2]';
x = zeros(length(t), 1);

for(i=1:n_exp)
  fi = rand(3, 1);
  for(n=1:3)
    x += 1 * sin(2 * pi * f(n) * t + fi(n));
  end
  x
  potencia(x)
  pause;
end