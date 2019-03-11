function [Simbolos, Frequencia] = Alfabeto2(Texto)
  N = length(Texto);
  n=1;
  Simbolos(n, 1) = Texto(1);
  Frequencia(n, 1) = sum(Texto == Simbolos(n)) / N*100;
  for(i=2:length(Texto))
    if sum(Simbolos == Texto(i)) == 0 %Simbolo nao existe em Simbolos ainda
      n++;
      Simbolos(n, 1) = Texto(i);
      Frequencia(n, 1) = sum(Texto == Simbolos(n)) / N*100;
    end
  end
  
  %Simbolos = unique(Texto);
  %Frequencia = sum(Texto == Simbolos) / N*100;
end