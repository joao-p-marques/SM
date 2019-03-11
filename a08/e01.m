load Mensagem.mat;
%disp(Mensagem);

%disp(Alfabeto1(Mensagem));

[Simbolos, Frequencia] = Alfabeto2(Mensagem);
%for(i=1:length(Simbolos))
%  fprintf("%s: %d\n", Simbolos(i), Frequencia(i));
%end

NumBits = NumeroBits(Mensagem)