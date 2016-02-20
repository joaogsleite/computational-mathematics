%
% twins4.m
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

beta=4/5;
L=4;

% formulas
% =============================================

%L=beta*T/2;
T=L*2/beta;
gamma=1/sqrt(1-beta^2);
T_prime=T/gamma;
t1=L/beta*(1+beta);
t2=L/beta*(1-beta);
T=t1+t2;
t1_linha=T/(2*gamma);
T_linha=t1_linha+t1_linha;

% codigo
% =============================================

%t
text(-4.75,7.5,'$$t=-x\,+\,t_{1}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% longrightarrow
text(-1.1,7.5,'$$\longrightarrow$$','Color','r');
% -> NE
text(0.1,7.75,'$$\nearrow$$','Color','r');

%T1
text(6,9,['$$t_{1} = \frac{T}{2}+L\,=\frac{L}{\beta}(1+\beta^2) = ',num2str(t1),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%T2
text(6,7,['$$t_{2} = \frac{T}{2}-L\,=\frac{L}{\beta}(1-\beta^2) = ',num2str(t2),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%T
text(7.5,5,['$$T = t_{1}+t_{2} = ',num2str(T),'$$'],'Color','black');
%T
text(7.5,3.5,['$$t_{1}',char(39),'=t_{2}',char(39),' = \frac{T}{2\gamma}=',num2str(t1_linha),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%T
text(7.5,1,['$$T',char(39), '= t_{1}',char(39),'+t_{2}',char(39),' = ',num2str(T_linha),'$$'],'Color','black');


% desenho
% =============================================

plot([0 0],[0 t_max],'black')

plot([0 L],[0 T/2],'black')
plot([L 0],[T/2 T],'black')

plot([L 0],[T/2 L+T/2],'black')
plot([0 L],[T/2 T/2],':b')
plot([L L],[0 T/2],':b')

% pontos
% =============================================


plot(0,0,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(0,T,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(L,T/2,'ok','MarkerFaceColor','r','MarkerSize',8)

plot(0,T/2,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(0,L+T/2,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(L,0,'ok','MarkerFaceColor','r','MarkerSize',8)

% origem
text(-0.3,-0.6,'O');
%T/2
text(-1.1,T/2,'$$\frac{T}{2}$$');
%L
text(L-0.1,-0.6,'L');
% ponto T1
text(-0.8,T-1,'$$t_{1}$$','Color','black');
% ponto T
text(-3.6,T,'$$T = t_{1} + t_{2}$$');

axis equal
axis off