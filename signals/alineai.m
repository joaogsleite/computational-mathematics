x=[0,0,ones(1,59)];
B=1;
a1=0.9;
a2=1.1;
n=0:60;
y01=0;
y02=0;


subplot(2,1,1), stem(n,equacao_diferencas(x,a1,B,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=0.9'),  grid on;
subplot(2,1,2), stem(n,equacao_diferencas(x,a2,B,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=1.1'),  grid on;


 