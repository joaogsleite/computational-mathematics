B1=0.1;
B2=0.21;
B3=0.5;
B4=2;
B5=2.21;
B6=2.5;

x=[0,0,ones(1,59)];


a1=sqrt(1.1^2-B1);
a2=sqrt(1.1^2-B2);
a3=sqrt(1.1^2-B3);
a4=sqrt(1.1^2-B4);
a5=sqrt(1.1^2-B5);
a6=sqrt(1.1^2-B6);

n=0:60;

y01=0;
y02=0;




subplot(3,2,1), stem(n,equacao_diferencas(x,a1,B1,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=1.1 e k=0.1'),  grid on;
subplot(3,2,2), stem(n,equacao_diferencas(x,a2,B2,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=1.1 e k=0.21'),  grid on;
subplot(3,2,3), stem(n,equacao_diferencas(x,a3,B3,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=1.1 e k=0.5'),  grid on;
subplot(3,2,4), stem(n,equacao_diferencas(x,a4,B4,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=1.1 e k=2'),  grid on;
subplot(3,2,5), stem(n,equacao_diferencas(x,a5,B5,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=1.1 e k=2.21'),  grid on;
subplot(3,2,6), stem(n,equacao_diferencas(x,a6,B6,y01,y02)), xlabel('n'), ylabel('y(n)'), title('equacao as diferencas y(n) para alfa=1.1 e k=2.5'),  grid on;