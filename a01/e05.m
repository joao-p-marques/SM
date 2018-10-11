Ta = 1/25;
t = [0 : Ta : 5];
x1 = [-5 : Ta + 5];
x2 = [-5 : Ta + 5];

for n=1 : N
  tic;
  for i=1 : N
    r(i, :) = ...;
  end
  mesh(x1, x2, r);
  view(2);
  drawnow();
  pause(Ta-toc);
end