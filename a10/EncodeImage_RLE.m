function Stream = EncodeImage_RLE(Image)
  [N, M] = size(Image);
  
  k = 1; %apontador para posição da variável stream onde estamos
  Stream(k, 1) = Image(1, 1);
  count = uint8(0);
  
  for(n=1:N)
    for(m=1:M)
      if Image(n, m) == Stream(k, 1)
        count = count + 1;
        if count == 255 %valores guardados em uint8
           k = k + 1;
           Stream(k, 1) = count;
           k = k + 1;
           Stream(k, 1) = Image(n, m);
           count = 1;
        end
      else
        k = k + 1;
        Stream(k, 1) = count;
        k = k + 1;
        Stream(k, 1) = Image(n, m);
        count = 1;
      end
    end
  end
  k = k + 1;
  Stream(k, 1) = count;
end