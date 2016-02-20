function newton_method()

    function res=modulo(num)
        if(num<0)
            res=num*(-1);
        else
            res=num;
        end
    end

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

    fprintf('\t A existência e unicidade de solução deste intervalo [%d , %d] é comprovada por:\n',extremo_min,extremo_max);
    fprintf('\t\t -A função é continua no intervalo\n');
    fprintf('\t\t -A derivada da função é sempre negativa (diferente de zero) no intervalo, ou seja, a função é sempre decrescente (unicidade do zero)\n');
    fprintf('\t\t -O valor da função num dos extremos do intervalo é positivo e noutro extremo é negativo\n');
  
    erro = 10^(-6);
    
    %funcao do enunciado
    function resultado=f(x)
        resultado=2*log(1+x^2)-2*x^2+3;
    end
    



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

    fprintf('\n\t Metodo da newton (erro em funcao das iteracoes: Figura 3)\n');
    fprintf('\t Iteracoes\t Aproximacoes\t Erros\n')
    for k=(1:iter_n)
        fprintf('\t\t%2d\t\t %2.4d\t\t %7.7d\n',k,aproximacoes_newton(k),erros_newton(k));
        x_newton(k)=k;
    end
    fprintf('\n\n');

    %imprimir graficos
    figure
    hold on
    axis([0 19 -0.005 0.11]);
    scatter(x_bisseccao,erros_bisseccao);
    fplot('0', [0,19] , 'r');
    hold off

    figure
    hold on
    axis([0 4 0 0.021]);
    scatter(x_newton,erros_newton);
    hold off


    %------------------------------------
    %exercicio f) 
    %------------------------------------
    fprintf('f)\n');
    fprintf('\t Com base no estudado nas aulas teóricas, existem diferentes métodos para achar as raízes de uma função. \n\t Pela nossa experiência, verificámos que o método de Newton foi bem mais eficiente, \n\t no sentido de apenas precisar de 3 iterações para atingir a precisão pedida, enquanto que o método da bisseção precisou de 18 iterações.\n\n');



    %------------------------------------
    %exercicio g) 
    %------------------------------------

    prov=extremo_max-extremo_min;
    prov1=modulo(f(extremo_min))/modulo(derivar(@f,extremo_min));
    prov2=modulo(f(extremo_max))/modulo(derivar(@f,extremo_max));
    existezero=f(extremo_min)*f(extremo_max);

    fprintf('g)\n\t Metodo de newton converge no intervalo [%d ; %d] porque:\n',extremo_min,extremo_max);

    fprintf('\t 1:');
    fprintf('\t Existe pelo menos um zero no intervalo escolhido.\n');
    fprintf('\t\t f(a)f(b)<0 \t<=>\t %d < 0\n',existezero);
    
    fprintf('\t 2:');
    fprintf('\t Existe apenas um zero no intervalo escolhido.\n');
    fprintf('\t\t f´(x) diferente de 0 em [%d ; %d ]\n',extremo_min,extremo_max);

    fprintf('\t 3:');
    fprintf('\t f´´(x) > 0   OU   f´´(x) < 0  no intervalo [%d ; %d]\n',extremo_min,extremo_max);

    fprintf('\t 4:')
    fprintf('\t modulo(f(a))/modulo(f´(a)) < b-a  \t <=>\t %d < %d\n',prov1,prov);
    fprintf('\t\t modulo(f(b))/modulo(f´(b)) < b-a  \t <=>\t %d < %d\n',prov2,prov);






end
