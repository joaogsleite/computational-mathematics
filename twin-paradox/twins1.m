%
% twins1.m
% ===========================================================
% João Leite 77907, Tiago Fernandes 77896, João Tomázio 78039
%

clear all
close all

% interpretador latex para as expressões nos diagramas
% =============================================
set(0,'defaultTextInterpreter','Latex');
set(0,'defaultTextFontSize',20);
set(0,'defaultTextColor','black');


% eixos
% =============================================
x_max=4;
t_max=11;
plot([0 x_max+1],[0 0],'black');
text(x_max+1.2,0,'x');
text(-0.1,11.5,'t');
hold on


% dados
% =============================================
beta = 4/5;		
L = 4;

% formulas
% =============================================

% formula T
T=2*(L/beta);

% formula gama
gamma=1/sqrt(1-beta^2);

% formula Kappa
K=sqrt((1+beta)/(1-beta));

% formula f1
f=1;

%formula f_linha 
f_linha=f/K;

%formula f_linha_linha
f_linha_linha=K*f;






%beta
text(-12,10,'$$\beta=\frac{4}{5}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-10,10,'$$\mapsto$$','Color','black');
%gamma
text(-9,10,['$$\gamma=\frac{1}{\sqrt{1-\beta^{2}}}=',num2str(gamma),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%L
text(-11,8,'$$L=4$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-9,8,'$$\mapsto$$','Color','black');
%T
text(-8,8,'$$T=2\frac{L}{\beta} \,\, donde \,\, T=10$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%K
text(-11,5.5,['$$\kappa=\sqrt{\frac{1+\beta}{1-\beta}} = ',num2str(K),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%F
text(-13,2,'f\,=\,1','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-11.55,2,'$$\mapsto$$','Color','black');
% efeito doppler
text(-10.7,2,'$$efeito Doppler$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% NE ->
text(-6.4,2.5,'$$\nearrow$$','Color','black');
% SE ->
text(-6.4,1.5,'$$\searrow$$','Color','black');


%F'
text(-5.4,3,['$$f',char(39),'=\frac{f}{\kappa}=',num2str(f_linha),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%F''
text(-5.4,1,['$$f',char(39),char(39),'={\kappa}\,f=',num2str(f_linha_linha),'$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');

%BOB
text(4,10,'$$BOB$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(6,10,'$$\mapsto$$','Color','black');
%OBC
text(7,10,'$$OBC = OB + BC$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%ALICE
text(4,8.7,'$$ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(6.5,8.7,'$$\mapsto$$','Color','black');
%OBC
text(7.4,8.7,'$$OAC = OA + AC$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%T
text(5,6.5,['$$T = {\gamma}T',char(39),'=',num2str(gamma),'\times 6 = 10$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%BOB
text(5,4,'$$BOB$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(7,4,'$$\mapsto$$','Color','black');
%T
text(8,4,'$$T = 10$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%ALICE
text(5,2.5,'$$ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(7.5,2.5,'$$\mapsto$$','Color','black');
%T'
text(8.4,2.5,['$$T',char(39),'=6$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');

% desenho
% =============================================
plot([0 0],[0 t_max],'black')
plot([0 L],[0 T/2],'black')
plot([L 0],[T/2 T],'black')
plot([0 L],[T/2 T/2],':black')
plot([L L],[0 T/2],':black')


% pontos
% =============================================
plot(0,0,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(0,T,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(L,T/2,'ok','MarkerFaceColor','r','MarkerSize',8)
plot(0,T/2,'ok','MarkerFaceColor','r','MarkerSize',8)

% origem
text(-0.3,-0.6,'O');

% ponto B
text(-1.1,T/2,'$$\frac{T}{2}$$');
text(0.3,T/2+0.3,'$$B$$');

% ponto C
text(-1.1,T,'$$T$$');
text(0.3,T+0.3,'$$C$$');

% ponto A
text(L-0.1,-0.6,'L');
text(L+0.2,T/2+0.3,'A');


axis equal
axis off
