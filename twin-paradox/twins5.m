%
% twins5.m
% ===========================================================
% João Leite 77907, Tiago Fernandes 77896, João Tomázio 78039
%

clear all
close all

set(0,'defaultTextInterpreter','Latex');
set(0,'defaultTextFontSize',20);
set(0,'defaultTextColor','black');

% eixos
% ============================================
x_max=4;
t_max=11;

plot([0 x_max+1],[0 0],'black')
text(x_max+1.2,0,'x');
text(-0.1,11.5,'t');

hold on

% dados
% =============================================

%L=4;
T=10;
f=1;
beta=4/5;

% formulas
% =============================================

L=beta*T/2;
%T=2*L/beta;
gamma=1/sqrt(1-beta^2);
T_prime=T/gamma;
kappa=sqrt((1+beta)/(1-beta));
f_prime=f/kappa;
f_double_prime=kappa*f;
t1_prime=L/(beta*gamma);
t2_prime=t1_prime;
N=f*T;
N1_linha = f_prime*t1_prime;
N2_linha = f_double_prime*t2_prime;
N_total=N1_linha+N2_linha;

% codigo
% =============================================

%texto
text(-8,8,'$$Sinais\,enviados\, por\, BOB\,:$$','Color','black');
%t
text(-8,6,'$$t\,=\,x\,+\,n(\frac{T}{N})$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');
%x=0
text(-8,4,'$$x\, =\, 0$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');
%->
text(-5.8,4,'$$\mapsto$$','Color','r');
%t
text(-4.7,4,'$$t\,=(\frac{n}{N})T$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');
%n
text(-6.5,2,'$$n = \left\{1,2,...,N\right\}$$','Color','black');


%BOB
text(5,8,['$$BOB\,enviou\,N=f\,t\,=',num2str(N),'\,sinais$$'],'Color','black');
%ALICE
text(5,6,['$$ALICE\,recebeu\,N=N_{1}',char(39),'\,+\,N_{2}',char(39),'=',num2str(N_total),'\,sinais$$'],'Color','black');

%N1_linha
text(5,4,['$$N_{1}',char(39),'=\,f',char(39),'\,t_{1}',char(39),'=',num2str(f_prime),'\times',num2str(t1_prime),'=',num2str(N1_linha),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');

%N2_linha
text(5,2,['$$N_{2}',char(39),'=\,f',char(39),char(39),'\,t_{2}',char(39),'=',num2str(f_double_prime),'\times',num2str(t2_prime),'=',num2str(N2_linha),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');

% desenho
% =============================================

plot([0 0],[0 t_max],'black')

plot([0 L],[0 T/2],'black')
plot([L 0],[T/2 T],'black')
N1_prime=f_prime*t1_prime;
N2_prime=f_double_prime*t2_prime;

%N1_prime = 1 - Only one point necessary
plot([0 N1_prime*beta/(1-beta)],[N1_prime N1_prime/(1-beta)],'r');
plot(N1_prime*beta/(1-beta),N1_prime/(1-beta),'ok','MarkerFaceColor','r','MarkerSize',8);

N=N1_prime+1;
M=N+N2_prime-1;

for n=N:M
    plot([0 (T-n)*beta/(1+beta)],[n (n+beta*T)/(1+beta)],'r')
    plot((T-n)*beta/(1+beta),(n+beta*T)/(1+beta),'ok','MarkerFaceColor','r','MarkerSize',8)
end

% pontos
% =============================================

axis equal
axis off