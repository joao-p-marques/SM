function [x] = fourier(Ta, f, Np, ak, bk)
  T = 1/f; %periodo do sinal composto
  t = [0 : Ta : T*Np];

  x = zeros(1, length(t));
  K = length(ak);
  for(k=1:K)
  	x += ak(k)*cos(k*2*pi*f*t) + bk(k)*sin(k*2*pi*f*t);
  end
end