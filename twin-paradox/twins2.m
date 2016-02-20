%
% twins2.m
% ===========================================================
% João Leite 77907, Tiago Fernandes 77896, João Tomázio 78039
%

clear all
close all

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

% formula gama
gamma=1/sqrt(1-beta^2);

% formula T
T=2*(L/beta);

% formula Kappa
K=sqrt((1+beta)/(1-beta));
f=1;

%formula f_linha
f_linha=f/K;

%formula f_linha_linha
f_linha=K*f;


%BOB
text(-13.5,10,'$$BOB$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-11.5,10,'$$\mapsto$$','Color','black');
% S
text(-10.5,10,'$$Gemeo\, que\, fica\, na\, Terra\, : \left\{S\right\}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%beta
text(-13,8,'$$\beta=\frac{4}{5}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%+
text(-11,8,'$$+$$','Color','black');
%beta
text(-10,8,'$$\beta=-\frac{4}{5}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-7.5,8,'$$\mapsto$$','Color','black');
% ->
text(-6.5,8,'$$S \mapsto (x,t) \mapsto (e_{1},e_{0})$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% mudanca
text(-13,6.5,'$$- - - - - - - - - - - - - - - - - - -$$','Color','black');

%ALICE
text(-13.5,5,'$$ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-10.8,5,'$$\mapsto$$','Color','black');
% S
text(-9.8,5,['$$Gemea\, Astronauta: \left\{S_{1}',char(39),',S_{2}',char(39),'\right\}$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%beta
text(-12,3,'$$\beta=\frac{4}{5}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-10,3,'$$\mapsto$$','Color','black');
%S1'
text(-9,3,['$$S_{1}',char(39),' \mapsto \left(x',char(39),',t',char(39),'\right) \mapsto \left(f_{1},f_{0}\right)$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%beta
text(-12,1,'$$\beta=-\frac{4}{5}$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(-9,1,'$$\mapsto$$','Color','black');
% S2'
text(-8,1,['$$S_{2}',char(39),' \mapsto \left(x',char(39),char(39),',t',char(39),char(39),'\right) \mapsto \left(g_{1},g_{0}\right)$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%BOB
text(4,10,'$$BOB$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(6,10,'$$\mapsto$$','Color','black');
%OBC
text(7,10,'$$OBC = OB + BC$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%ALICE
text(4,8.7,'$$ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(6.7,8.7,'$$\mapsto$$','Color','black');
%OBC
text(7.6,8.7,'$$OAC = OA + AC$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%T
text(5,6.5,['$$T = {\gamma}T',char(39),'=',num2str(gamma),'\times 6 = 10$$'],...
	'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');


%BOB
text(5,5,'$$BOB$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(7,5,'$$\mapsto$$','Color','black');
%T
text(8,5,'$$T = 10$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%ALICE
text(5,3.5,'$$ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(7.8,3.5,'$$\mapsto$$','Color','black');
%T'
text(8.7,3.5,['$$T',char(39),'=6$$'],'Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');

%BOB
text(4.5,2.2,'$$BOB$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(6.5,2.2,'$$\mapsto$$','Color','black');
%anos
text(7.5,2.2,'$$20+10 = 30\, anos$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
%ALICE
text(4.5,1,'$$ALICE$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');
% ->
text(7.2,1,'$$\mapsto$$','Color','black');
%anos
text(8.2,1,'$$20+6 = 26\, anos$$','Color','black','LineWidth',1,'LineStyle','-','EdgeColor','black');

% desenho
% =============================================
plot([0 0],[0 t_max],'black')
plot([0 L],[0 T/2],'black')
plot([L 0],[T/2 T],'black')
plot([0 L],[T/2 T/2],'black')
plot([L L],[0 T/2],'black')

% vectores
% =============================================

%Eo
quiver(0,0,1,0, 'r','LineWidth',2.5);
text(0,1.3,'$$e_{0}$$','Color','r');
%E1
quiver(0,0,0,1, 'r','LineWidth',2);
text(1,0.5,'$$e_{1}$$','Color','r');


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
