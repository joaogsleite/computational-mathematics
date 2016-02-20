function y = resposta_escalao(h)
% y = resposta_escalao(h)
% 
% Determina, para 0<=n<=N-1, a resposta ao escalão unitário de um SLIT 
% discreto com resposta impulsional h(n)
%
% Variável de entrada:
% h - vector com a resposta impulsional definida nos instantes
% 0<=n<=N-1 
%
% Variável de saída:
% y - vector com a resposta ao escalão unitário definida nos instantes
% 0<=n<=N-1 
%
% Autor: Isabel Lourtie
% Março 2014
%
N=length(h);
x=ones(1,N);
w=conv(x,h);
y=w(1:N);
end