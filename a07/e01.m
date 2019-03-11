load Guitar01.mat;

%sound(x, fa);

% e02

Ta = 1/fa;
[X, f] = espetro(x, Ta);

%figure(1);
%plot(f, abs(X));

% e03

Hf = zeros(size(f)); %filtro
Hf(f > -500) = 1;
Hf(f > -100) = 0;
Hf(f > 100) = 1;
Hf(f > 500) = 0;
% plot(Hf);

W = Hf .* X;

%figure(2);
%plot(f, abs(W));

%w = reconstroi(W, f);
%plot(w);
%x = reconstroi(X, f);
%plot(x);

%sound(w, fa);

Hf = zeros(size(f)); %filtro
Hf(f > -1000) = 1;
Hf(f > -500) = 0;
Hf(f > 500) = 1;
Hf(f > 1000) = 0;
% plot(Hf);

W = Hf .* X;

%figure(2);
%plot(f, abs(W));

w = reconstroi(W, f);

%sound(w, fa);

Hf = zeros(size(f)); %filtro
Hf(f > -2000) = 1;
Hf(f > -1000) = 0;
Hf(f > 1000) = 1;
Hf(f > 2000) = 0;
% plot(Hf);

W = Hf .* X;

%figure(2);
%plot(f, abs(W));

w = reconstroi(W, f);

%sound(w, fa);

% e04

Na = 0.2/Ta;

plot(x);
y = x + 0.5*[zeros(Na, 1); x(1:(end-Na))]; %...
%sound(y, fa);