% Diagrama de radiação de um agregado de N = 10 antenas isotrópicas
% no plano equatorial theta = pi/2: psi = phi - Método de Schelkunoff
% Método de Schelkunoff

clear all;
close all;

n_max = 1000; nr_nulos = 9;
theta_min=0;
theta_max=2*pi;

phi_nulos = [0 pi/8 pi/4 3*pi/8 pi/2 5*pi/8 3*pi/4 7*pi/8 pi];

for n=1:nr_nulos
	u=(pi/2)*cos(phi_nulos(n));
	zeta_zeros(n)=exp(-i*u);
end

for n=1:n_max
	theta(n)=(theta_max-theta_min)*(n-1)/(n_max-1)+theta_min;
	u=(pi/2)*cos(theta(n));
	zeta=exp(-i*u);
	F=((zeta-zeta_zeros(1))*(zeta-zeta_zeros(2))*(zeta-zeta_zeros(3))*(zeta-zeta_zeros(4))*(zeta-zeta_zeros(5))*(zeta-zeta_zeros(6))*(zeta-zeta_zeros(7))*(zeta-zeta_zeros(8))*(zeta-zeta_zeros(9)));
	rho(n)=abs(F);
end

polar(theta,rho);
t = findall(gcf,'type','text');
delete(t);