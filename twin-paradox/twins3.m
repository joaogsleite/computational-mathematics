%
% twins3.m
% ===========================================================
% João Leite 77907, Tiago Fernandes 77896, João Tomázio 78039
%

clear all
close all

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

T=10;
beta=4/5;

% formulas
% =============================================

L=beta*T/2;
gamma=1/sqrt(1-beta^2);

%formula B^2 * T
beta_2 = beta^2 * T;

%equitemp
text(-8,8.5,'$$equitemp\,\,de\,\,ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%downarrow
text(-5.5,7.5,'$$\downarrow$$','Color','r');
%t pequeno
text(-8,6.3,'$$t = \beta (L - x) + \frac{T}{2}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% longrightarrow
text(-0.4,6.3,'$$\longrightarrow$$','Color','r');
% longrightarrow
text(-1.6,6.3,'$$\longrightarrow$$','Color','r');
% longrightarrow
text(-2.8,6.3,'$$\longrightarrow$$','Color','r');
% -> NE
text(0.7,6.6,'$$\nearrow$$','Color','r');
%t pequeno
text(-8,3.8,'$$t = \beta (x - L) + \frac{T}{2}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% longrightarrow
text(-0.4,3.8,'$$\longrightarrow$$','Color','r');
% longrightarrow
text(-1.6,3.8,'$$\longrightarrow$$','Color','r');
% longrightarrow
text(-2.8,3.8,'$$\longrightarrow$$','Color','r');
% -> SE
text(0.7,3.4,'$$\searrow$$','Color','r');
%uparrow
text(-5.5,2.5,'$$\uparrow$$','Color','r');
%equitemp Alice
text(-8,1.5,'$$equitemp\,\,de\,\,ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%expressao equiloc Alice
text(1,10,'$$t = -\frac{x}{\beta} + T = -\frac{1}{\beta}(x-2L)$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%->
text(9.2,10,'$$\mapsto$$','Color','r');
%->SW
text(1.8,8.6,'$$\swarrow$$','Color','r');
%equiloc alice
text(10.1,10,'$$equiloc\,\,de\,\,ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%T1
text(6,8,'$$T_{1} = (1-\beta^2)\frac{T}{2}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%T2
text(6,6.25,'$$T_{2} = (1+\beta^2)\frac{T}{2}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%deltaT
text(5.5,4.5,['$$\Delta T = T_{2} - T_{1} = \beta^{2}T =',num2str(beta_2),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%expressao equiloc alice
text(2.5,2,'$$t = \frac{x}{\beta}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%-> NO
text(3,3.2,'$$\nwarrow$$','Color','r');
%->
text(4.5,2,'$$\mapsto$$','Color','r');
%equiloc alice
text(5.5,2,'$$equiloc\,\,de\,\,ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');



% desenho
% =============================================
plot([0 0],[0 t_max],'black')

plot([0 L],[0 T/2],'black')
plot([L 0],[T/2 T],'black')

plot([0 L],[beta*L+T/2 T/2],'black')
plot([0 L],[-beta*L+T/2 T/2],'black')

% vectores
% =============================================

%Eo
quiver(0,0,1,0, 'black','LineWidth',2.5);
text(0,1.3,'$$e_{0}$$','Color','black');
%E1
quiver(0,0,0,1, 'black','LineWidth',2);
text(1,0.5,'$$e_{1}$$','Color','black');
%G1
%GO
%F1
%F0

% pontos
% =============================================

plot(0,0,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(0,T,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(L,T/2,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(0,beta*L+T/2,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(0,-beta*L+T/2,'ok','MarkerFaceColor','r','MarkerSize',8)

% origem
text(-0.3,-0.6,'O');

% ponto T
text(-1.1,T,'$$T$$');

% ponto T1
text(-1,1.9,'$$T_{1}$$');

% ponto T2
text(-1,8,'$$T_{2}$$');

axis equal
axis off