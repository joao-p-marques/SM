function Espetro(Q, passo)
  [M, N] = size(Q);
  Qfreq = fftshift(fft2(Q))/M/N;
  QMag = abs(Qfreq);
  T1 = passo*N;
  T2 = passo*M;
  f1 = [0 : (N-1)]' * (1/T1) - 1/(2*passo);
  f2 = [0 : (M-1)]' * (1/T2) - 1/(2*passo);
  mesh(f1, f2, QMag);
  view(2);
  axis equal;