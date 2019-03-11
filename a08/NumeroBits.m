function NumBits = NumeroBits(Texto)
  [Simbolos, Frequencia] = Alfabeto2(Texto);
  [SortedFreq, I] = sort(Frequencia, 'descend');
  SortedSymb = Simbolos(I);
  N = length(SortedFreq);
  
  NumBits=0;
  for(i=1:N)
    NumBits = NumBits + sum(Texto==SortedSymb(i)) * i;
  end
  
%  NumBitsA = zeros(N, 1);
%  NumBits = 0;
%  for(i=1:N)
%    NumBitsA(i) = i;
%    %NumBits = NumBits + SortedFreq(i) * i;
%  end
%  for(i=1:length(Texto))
%    k = SortedSymb==Texto(i);
%    NumBits = NumBits + NumBitsA(k);
%  end
end