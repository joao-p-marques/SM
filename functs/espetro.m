function [X, f] = espetro(x, Ta)
	N = length(x);
	X = fft(x)/N;
	X = fftshift(X);
	fa = 1/Ta;
	df = 1/(N*Ta);
	f = [0 : (N-1)]' * df - fa/2;
end

