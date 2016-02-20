% Diagrama de radiação de um agregado uniforme de N = 10 antenas isotrópicas
% no plano equatorial theta = pi/2: psi = phi

clear all
close all

n_max=1000;
phi_min=0;   phi_max=2*pi;

N=10;  % Agregado uniforme com N = 10 elementos

% Fig. 1  -----------------------------------------------

alpha = 0; space = 0.25;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    rho(n)=(1/N)*abs(sin(N*u/2)/sin(u/2));
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 2  -----------------------------------------------

alpha = 0; space = 0.5;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    rho(n)=(1/N)*abs(sin(N*u/2)/sin(u/2));
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 3  -----------------------------------------------

alpha = 0; space = 1;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    rho(n)=(1/N)*abs(sin(N*u/2)/sin(u/2));
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 4  -----------------------------------------------

alpha = pi/2; space = 0.25;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    rho(n)=(1/N)*abs(sin(N*u/2)/sin(u/2));
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
    rho(n)=(1/N)*abs(sin(N*u/2)/sin(u/2));
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 6  -----------------------------------------------

alpha = pi/2; space = 0.5;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    rho(n)=(1/N)*abs(sin(N*u/2)/sin(u/2));
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);

% Fig. 7  -----------------------------------------------

alpha = 8*pi/5; space = 0.8;
K=2*pi*space;

for n=1:n_max
    phi(n)=(n-1)*(phi_max - phi_min)/(n_max - 1) + phi_min;
    u=K*cos(phi(n))-alpha;
    rho(n)=(1/N)*abs(sin(N*u/2)/sin(u/2));
end

figure
polar(phi,rho);
t = findall(gcf,'type','text');
delete(t);