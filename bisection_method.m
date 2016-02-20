function bisection_method()

    

    function res=derivar(f,a)
        h=0.00000001;
        res=((f(a+h)-f(a))/h);
    end

    function res=simetrico(num)
        res=-num;
    end

    %maximo da segunda derivada numa funcao
    function res=max_funcao_derivada2(f)
        function res=segunda_derivada(a)
            h=0.00000001;
            res=-((f(a+2*h)-2*f(a+h)+f(a))/h^2);
        end
        res=fminbnd(@segunda_derivada,-999999999999999,999999999999999);
    end

    function res=min_funcao_derivada1(f)
        function res=primeira_derivada(a)
            h=0.00000001;
            res=((f(a+h)-f(a))/h);
        end
        res=fminbnd(@primeira_derivada,-999999999999999,999999999999999);
    end
    

    %------------------------------------
    %exercicio a) 
    %------------------------------------

    fprintf('a) \n');
    fprintf('\t r = 2.5 => c = 3\n\n');

    
    
    %------------------------------------
    %exercicio b) 
    %------------------------------------

    fprintf('b)\t (Figura 1: 2log(1 + x^2) - 2x^2 + 3 )\n');

    %extremos
    extremo_min=1.55;
    extremo_max=1.75;
    



    %------------------------------------
    %exercicio c) 
    %------------------------------------
    fprintf('c) \n');
    
    %erro metodo bisseccao
    iter_b = ceil(log((b-a)/erro)/(log(2)));
    fprintf('\t Iterações minimas (met. bisseccao) para uma precisão de 10^-6: %f\n', iter_b);
    
    
    %metodo da bisseccao
    for k=(1:iter_b)
       c=(a+b)/2;
       erros_bisseccao(k)=(extremo_max-extremo_min)/(2^(k));
       if f(c)*f(a)<0
           b=c;
       else
           a=c;
       end
       aproximacoes_bisseccao(k)=c;
    end
    fprintf('\t O zero da funcao calculado através do metodo da bisseccao é: %d\n\n',c);
    



    %------------------------------------
    %exercicio d) 
    %------------------------------------

    fprintf('d) \n');
    
    %metodo newton
    a=extremo_min;
    b=extremo_max;
    erro_actual=modulo(b-a);
    iter_n=0;


    %erro metodo newton
    k = max_funcao_derivada2(@f)/(2 * min_funcao_derivada1(@f));    
    while erro_actual>erro
        iter_n=iter_n+1;
        erro_actual=modulo( k*((erro_actual)^2) );
        erros_newton(iter_n)=erro_actual;    
    end
    fprintf('\t Iterações minimas (met. newton) para uma precisão de 10^-6: %f\n', iter_n);


    %calcular o metodo newton
    x=modulo(b+a)/2;
    fprintf('\t Valor inicial de x=modulo(b-a)/2 :   %d\n',x);
    for k=(1:iter_n)
        x=x-f(x)/derivar(@f,x);
        aproximacoes_newton(k)=x;
    end
    fprintf('\t O zero da funcao calculado através do metodo da newton é: %d\n\n',x);



    %------------------------------------
    %exercicio e) 
    %------------------------------------

    fprintf('e) \n');

    %imprimir tabelas
    fprintf('\t Metodo da bisseccao (erro em funcao das iteracoes: Figura 2)\n');
    fprintf('\t Iteracoes\t Aproximacoes\t Erros\n');
    for k=(1:iter_b)
        fprintf('\t\t%2d\t\t %2.4d\t\t %2.7d\n',k,aproximacoes_bisseccao(k),erros_bisseccao(k));
        x_bisseccao(k)=k;
    end




end
