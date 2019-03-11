function X2 = filtrar(X, f, ff)
  filt = zeros(length(X), 1);
  filt(f>=(-ff-1)) = 1;
  filt(f>(ff+1));
  plot(f, filt);
  X2 = X .* filt;
end