function Image = DecodeImage_RLE(N, M, Stream)
  Image = zeros(N, M);
  n=0;
  m=0;

  k = 1; % apontador para a posição do stream onde estamos
  for(j=1:size(Stream))
    car = Stream(k, 1); % ler 1o caracter
    k = k + 1;
    count = Stream(k, 1); % ler count do 1o caracter
    k = k + 1;
    for(i=1:count)
      if(n == N)
        n = 0;
        m = m + 1;
      end
      Image(n, m) = car;
      n += 1;
    end
  end
