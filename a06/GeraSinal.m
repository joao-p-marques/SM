function [x, t] = GeraSinal(N, Ta)
  t = [0 : (N-1)]'*Ta;
  
  phi1 = random('normal', 0, pi, N, 1); % random( ... , Média, Desvio Padrão, Nº Linhas, Nº Colunas)
  phi2 = random('normal', 0, pi, N, 1);
  I_phi1 = zeros(N, 1);
  I_phi2 = zeros(N, 1);
  for(i=2:N) % INtegração dos sinais phi1 e phi2
    I_phi1(i) = I_phi1(i-1) + (phi1(i) + phi1(i-1))*Ta/2;
    I_phi2(i) = I_phi2(i-1) + (phi2(i) + phi2(i-1))*Ta/2;
  end
  
  r = 0.5*sin(20*pi*t + 10*I_phi1) + 0.5*sin(24*pi*t + 10*I_phi2); 
  
  x = sin(2*pi*t) + r;
  plot(t, x);
  xlabel('Tempo(seg)');
  grid;
end