clear all
close all

N=10;  % Agregado uniforme com N = 10 elementos
directividade_i = 8;
alpha = [0 0 0 0 pi/2 -pi/2 pi/2 (8*pi)/5];
space = [0.0000 .25 0.5 1 0.25 0.25 0.5 0.8];

for i=1:directividade_i
	sum = 0;
	k=2*pi*space(i);
	for m=1:N
		sum = sum + (N-m)*(((1/(m*k*space(i)))-(1/(m*k*space(i))^3))*sin(m*k*space(i))+(cos(m*k*space(i))/(m*k*space(i))^2))*cos(m*alpha(i));
	end
	D(i)=(N^2)/(2*N/3+2*sum);
end
disp('Lista directividades')
disp(D);