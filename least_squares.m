function least_squares()

    fprintf('\nEXERCICIO 1\n\n')

    x = [1.0000 1.0500 1.1000 1.1500 1.2000 1.2500 1.3000 1.4000 1.5000 1.6000 1.7000 1.8000 1.9000 2.0000]';
    y = [26.0000 19.6880 32.6642 22.9469 41.5549 28.5068 45.8218 46.6170 69.0938 74.4054 98.7041 102.6395 131.8577 149.0000]'; 
    V = [x, ones(size(x))];
    coef = V \ y;
    
    x
    
    y
    
    fprintf('\t Matriz de Vandermonde: ');
    V
    
    erro = 0;
    for indice = 1:1:14
        soma = ((y(indice)-(coef(1) * x(indice)+coef(2)))^2);
        erro = erro + soma; 
    end
    
    a=coef(1);
    b=coef(2);
    
    fprintf('\t Coeficiente a: %f\n',coef(1));
    fprintf('\t Coeficiente b: %f\n',coef(2));
    fprintf('\t Erro: %f\n',erro);
    
    fprintf('\n');
  
    
    fprintf('\t Figura 1: Os pontos experimentais\n');
    figure(1); scatter(x,y);
    
    funcao_aproximadora=strcat(num2str(a),'*x ',num2str(b));
    
    fprintf('\t Figura 2: y=%s (funcao aproximadora)\n\n',funcao_aproximadora);
    
    figure(2)
    hold on
    fplot(funcao_aproximadora, [1,2], 'g');
    fplot('0', [1,2] , 'r');
    hold off
    
    fprintf('\t A funcao aproximadora é do tipo y=ax+b .\n');
    fprintf('\t Contruimos a matriz de Vandermonde e resolvemos a equacao V/y para descobrir os coeficientes. \n');
    fprintf('\t a=%d e b=%d => funcao geradora: y=%s\n',a,b,funcao_aproximadora);
    fprintf('\t Estimativa do erro de aproximação: %d',erro);

    
    fprintf('\n\n\n\n');
    
end

    
    
