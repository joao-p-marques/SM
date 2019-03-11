function p = potencia(x)
  p = 0;  x;
  N = length(x) #Nº de amostras
  for(n=1:N)
    x(n-1);
    p = p + x(n-1)^2;
  end
  p = p / N;
end