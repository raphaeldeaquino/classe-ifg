x = linspace(0,2 * pi, 100); % Criou-se 100 amostras entre 0 e 2 * pi.
for n = 1:100
  if x(n) <= pi
    f(n) = 1; % Faz f(t) = 1 para 0 < t <= pi
  else
    f(n)= -1; % Faz f(t)= -1 para pi < t <= 2 * pi
  end 
end
plot(x,f,'r.'); % plota o gráfico, r=cor:vermelha e .:estilo do ponto: ponto 
grid on; % adiciona linhas de grade no desenho do gráfico
title('Função retangular'); % Coloca um título ao gráfico
xlabel('t em radianos'); % nomeia o eixo x
ylabel('f(t)'); % nomeia o eixo y