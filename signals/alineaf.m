B=1;
a1=0.9;
a2=1.1;
n=0:60

u=[0,ones(1,60)]

h1=(B/2*a1)*(a1.^(n-1)-(-a1).^(n-1)).*u;
h2=(B/2*a2)*(a2.^(n-1)-(-a2).^(n-1)).*u;



subplot(2,1,1), stem(n,resposta_escalao(h1)), xlabel('n'), ylabel('h(n)'), title('h(n) para alfa=0.9'),  grid on;
subplot(2,1,2), stem(n,resposta_escalao(h2)), xlabel('n'), ylabel('h(n)'), title('h(n) para alfa=1.1'), grid on;




