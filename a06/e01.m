N = 10000;
Ta = 1/1000;

[x, t] = GeraSinal(N, Ta);

[X, f] = espetro(x, Ta);
plot(f, abs(X));

ff = 0;
for(i=1:length(X))
  if(abs(X(i))==max(abs(X)))
    ff = f(i);
  end
end

X2 = filtrar(X, f, ff);
%plot(f, abs(X2));

reconstroi(X2, f);

XR = filtrar_ruido(X, f, ff);
reconstroi(XR, f);