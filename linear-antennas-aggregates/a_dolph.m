%
% Diagrama de radiação de um agregado de Dolph_Chebyshev de N = 10
% antenas isotrópicas no plano equatorial theta = pi/2: psi = phi

clear all
close all

n_max=1000;
phi_min=0;   phi_max=2*pi;

N=10;  % Agregado de Dolph-Chebyshev com N = 10 elementos

R=10;
b=cosh((1/(N-1))*acosh(R));

% Fig. 1  -----------------------------------------------

alpha = 0; space = 0.25;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    xis=b*cos(u/2);
    rho(n)=abs(256*xis^9 - 576*xis^7 + 432*xis^5 -120*xis^3 + 9*xis);
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);


% Fig. 2  -----------------------------------------------

alpha = 0; space = 0.5;
K=2*pi*space;
t = findall(gcf,'type','text');
delete(t);

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    xis=b*cos(u/2);
    rho(n)=abs(256*xis^9 - 576*xis^7 + 432*xis^5 -120*xis^3 + 9*xis);
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);


% Fig. 3  -----------------------------------------------

alpha = 0; space = 0.75;
K=2*pi*space;
t = findall(gcf,'type','text');
delete(t);

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    xis=b*cos(u/2);
    rho(n)=abs(256*xis^9 - 576*xis^7 + 432*xis^5 -120*xis^3 + 9*xis);
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 4  -----------------------------------------------

alpha = 0; space = 1;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    xis=b*cos(u/2);
    rho(n)=abs(256*xis^9 - 576*xis^7 + 432*xis^5 -120*xis^3 + 9*xis);
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 5  -----------------------------------------------

alpha = -(pi)/2; space = 0.25;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    xis=b*cos(u/2);
    rho(n)=abs(256*xis^9 - 576*xis^7 + 432*xis^5 -120*xis^3 + 9*xis);
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 6  -----------------------------------------------

alpha = pi/2; space = 0.25;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    xis=b*cos(u/2);
    rho(n)=abs(256*xis^9 - 576*xis^7 + 432*xis^5 -120*xis^3 + 9*xis);
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 7  -----------------------------------------------

alpha = pi; space = 1;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    xis=b*cos(u/2);
    rho(n)=abs(256*xis^9 - 576*xis^7 + 432*xis^5 -120*xis^3 + 9*xis);
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);