function ReconstroiSinal(x, Ta)
  N = length(x);
  fa = 1/Ta;
  y = zeros(100*N, 1); %Sinal reconstruído
  fs = 100*fa; %Freq. de amostragem do sinal y
  Ts = 1/fs;
  t = [0 : (length(y)-1)]' * Ts; %Vetor de instantes no tempo na nova discretizaçao
  
  for(n=1:N)
    y += x(n)*sinc(fa*(t-(n-1)*Ta));
  end
  
  plot(t, y, [0:(N-1)]'*Ta, x, '.');
  xlabel('Tempo(seg)');
  ylabel('Sinal');
  grid;
end