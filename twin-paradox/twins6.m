%
% twins6.m
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

L=4;
f=1;
beta=4/5;

%T=10;
%f=1;
%beta=3/5;

% formulas
% =============================================

%L=beta*T/2;
T=2*L/beta;
gamma=1/sqrt(1-beta^2);
T_prime=T/gamma;
kappa=sqrt((1+beta)/(1-beta));
f_prime=f/kappa;
f_double_prime=kappa*f;
t1=(L/beta)*(1+beta);
t2=(L/beta)*(1-beta);
N_prime=f*T_prime;
N1=f_prime*t1;
N2=f_double_prime*t2;
N_total=N1+N2;

% codigo
% =============================================

%texto
text(-10,9,'$$Sinais\,enviados\, por\, ALICE\,:$$','Color','black');
%t1
text(-8,7,'$$t\,=\,-x\,+\,n(\frac{t_{1}}{N_{1}})$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');
%n
text(-8,5,'$$n = \left\{1,2,...,N_{1}\right\}$$','Color','black');
%t2
text(-8,3,'$$t\,=\,-x\,+\,n(\frac{t_{2}}{N_{2}})$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');
%n
text(-8,1,'$$n = \left\{1,2,...,N_{2}\right\}$$','Color','black');


%BOB
text(5,10,['$$ALICE\,enviou\,N',char(39),'=f\,t\,=',num2str(N_prime),'\,sinais$$'],'Color','black');
%ALICE
text(5,8,['$$BOB\,recebeu\,N',char(39),'=N_{1}\,+\,N_{2}=',num2str(N_total),'\,sinais$$'],'Color','black');

%N1_linha
text(5,5.5,['$$N_{1}=\,f',char(39),'\,t_{1}=',num2str(f_prime),'\times',num2str(t1),'=',num2str(N1),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');

%N2_linha
text(5,4,['$$N_{2}=\,f',char(39),char(39),'\,t_{2}=',num2str(f_double_prime),'\times',num2str(t2),'=',num2str(N2),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');

%N1=N2
text(5,2,['$$N_{1}=N_{2}=\frac{N',char(39),'}{2}=\frac{N}{2\gamma}$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','r');

% desenho
% =============================================

plot([0 0],[0 t_max],'black')

plot([0 L],[0 T/2],'black')
plot([L 0],[T/2 T],'black')

N1=f_prime*t1;
N2=f_double_prime*t2;

for alpha = t1/N1 : t1/N1 : t1
    plot([0 alpha*beta/(1+beta)],[alpha alpha/(1+beta)],'r')
    plot(0,alpha,'ok','MarkerFaceColor','r','MarkerSize',8)
end
    
N=N1+1;
M=N+N2-1;

for alpha = t1+t2/N2 : t2/N2 : T
    plot([0 (T-alpha)*beta/(1-beta)],[alpha (alpha-beta*T)/(1-beta)],'r')
    plot(0,alpha,'ok','MarkerFaceColor','r','MarkerSize',8)
end

axis equal
axis off