Ta = 0.001;
f0 = 1;
Np = 6;

K=1000;
ak = zeros(1, K);
bk = zeros(1, K);
for(k=1:K)
	if(mod(k, 2)==0)
		bk(k) = 0;
	else
		bk(k) = 4 / (k*pi);
	end
end

x = fourier(Ta, f0, Np, ak, bk);

plot(x);