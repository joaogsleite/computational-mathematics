function y=equacao_diferencias(x,alfa,beta,y01,y02)
    for n=1:61
        if(n==1)
            y(1)=y02;
        end
        if(n==2)
            y(2)=y01;
        end
        y(n)=beta*x(n-2) + (alfa^2) * y(n-2)
    end
end