function [x] = reconstroi(X, f)
	N = length(X);
	X = ifftshift(X);
	%X = [X(end) : X(1:(end-1))];
	x = ifft(X)*N;
	fa = f(end)*2;
	Ta = 1/fa;
	t = [0 : N-1]' * Ta;
%	plot(t, x);
%	xlabel('Tempo (seg)');
%	ylabel('Sinal x(t)');
end

