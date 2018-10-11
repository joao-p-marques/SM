function p = potencia(x, T)
  p = 0;
  N = length(x); #Nº de amostras
  for n=1:N
    p = p + x(n)^2;
  end
  p = p / N;
end