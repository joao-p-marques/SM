function [Symb, Freq] = ImageSymbols(Image)
  [N, M] = size(Image);
  k = 1; % pointer to element of array
  Symb(k, 1) = Image(1, 1);
  Freq(k, 1) = 1;
  k = k + 1;
  for(n=2:N)
    for(m=2:M)
      if(sum(Symb == Image) == 0) % if symbol has not been find yet
        Symb(k, 1);
        k = k + 1;
      else
        i = find(Symb == Image);
        Freq(i, 1) = Freq(i, 1) + 1;
      end
    end
  end
end
