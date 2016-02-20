function jacobi()

	fprintf(' EXERCICIO 3\n\n');



	% M diagonal
	% N resto
	% C = -M^-1 * N

	A=[	[ 2,-1, 0, 0, 0, 0],
		[-1, 2,-1, 0, 0, 0],
		[ 0,-1, 2,-1, 0, 0],
		[ 0, 0,-1, 2,-1, 0],
		[ 0, 0, 0,-1, 2,-1],
		[ 0, 0, 0, 0,-1, 2] ];

	b=[3; 3; 3; 3; 3; 3];



	%------------------------------------
	%exercicio a) 
	%------------------------------------

	fprintf('a) \n');

	M=diag(diag(A)); %matriz com diagonal de A e o resto a zero
	N=A-M; %matriz com diagonal a zero e o resto de A

	C=-inv(M)*N;

	fprintf('Matriz C^3 :');
	
	C^3
	normaC=norm(C);

	fprintf('\t Consideramos C = -inv(M)*N, sendo M uma matriz diagonal, com os elementos da matriz do problema, e N, com a diagonal com zeros, e os outros elementos vindos da matriz inicial.\n');
	fprintf('\t Temos A = M + N. Pela teorema de Neumann, I (matriz identidade) - C = inv(M) * A, com M invertivel e A invertivel. Concluimos por este teorema que, se a norma de C for menor que 1,\n');
	fprintf('\t o processo iterativo converge para qualquer vetor inicial. Temos tambem os requisitos do proprio metodo de Jacobi, que impoe que os elementos da diagonal principal sejam diferentes de 0 e que a matriz seja quadrada, o que se verifica.\n');

	fprintf('\t norma(C)<1 \t<=>\t %d < 1\n\n',normaC);



	%------------------------------------
	%exercicio b)
	%------------------------------------

	fprintf('b)\n');



	x=[0; 0; 0; 0; 0; 0];

	erro = 1;
	margem_erro = 10^(-3);
	iteracoes = 0;

	fprintf('\t Iteracoes do metodo Jacobi ate erro < 10^-3 :\n');
	fprintf('\t Iteracoes\t Aproximacoes\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Erros\n')
	while erro > margem_erro
		iteracoes = iteracoes + 1;
		x_actual = inv(M)*(b - N*x);
		erro = ( norm(C)/(1-norm(C)) ) * norm(x_actual - x);
		x = x_actual;
		y_erros(iteracoes)=erro;
		x_jacobi(iteracoes)=iteracoes;
		fprintf('\t\t%2d\t\t %2.4d\t\t %2.7d', iteracoes, x_actual, erro);
		fprintf('\n')
        
	end

	erro
	x
	iteracoes

	fprintf('\n\n');



	%------------------------------------
	%exercicio c) 
	%------------------------------------

	fprintf('c)\n\t (Figura 1: erro em funcao da iterada) \n');
    
    fprintf('\t Analisando o grafico, chegamos a conclusao que o erro diminui de forma exponencial ao longo das iteracoes,\n\t sendo precisas %d para entrar na grandeza da precisao pedida.\n\n',iteracoes);

	%imprimir grafico
    figure
    hold on
    scatter(x_jacobi,y_erros);
    hold off


	%------------------------------------
	%exercicio d) 
	%------------------------------------

	fprintf('d)\n');

	x1=[0; 0; 0; 0; 0; 0]; 
	x2=[0; 0; 0; 0; 0; 0];
	x3=[0; 0; 0; 0; 0; 0];
	x4=[0; 0; 0; 0; 0; 0];  

	
	
	fprintf('\t Iteracoes do metodo Jacobi para obter um majorante do erro da iterada obtida ao fim de 50 iteracoes :\n');
	fprintf('\t Iteracoes\t Aproximacoes\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Erros\n')
	for k=(1:50)
		x4 = x3;
		x3 = x2;
		x2 = x1;

		x1 = inv(M)*(b - N*x2);
		erro = ( norm(C^3)/(1-norm(C^3)) ) * norm(x1 - x4);

		fprintf('\t\t%2d\t\t %2.4d\t\t %2.7d', k, x1, erro);
		fprintf('\n');
	end

	erro




	%------------------------------------
	%exercicio e) 
	%------------------------------------
    fprintf('e)\n');
    
    erro_final=10^-5;
    
    x0=[0; 0; 0; 0; 0; 0];
    x1=inv(M)*(b-N*x0);
    erro_inicial=norm(x1-x0);
    
    fprintf('\t Erro inicial calculado através de uma iteracao: %d\n',erro_inicial);
    fprintf('\t Erro pretendido: %d\n',10^-4);
    
    k=(log(erro_final)-log(erro_inicial))/log(norm(C));
    k=ceil(k);
    
    fprintf('\t k = (log(erro_final)-log(erro_inicial)) / log(norm(C)) \t =>\t k= %d\n',k);
    
    fprintf('\t Prevemos ser preciso efectuar %d iteracoes para ter uma aproximacao com erro inferior a 10^-4',k);

	fprintf('\n\n\n');

end


