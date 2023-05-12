clear,clc;
f=inline('e^(-2x)-x-sinx+2')
x(1)=0.5;x1=1;

for i=2:intmax

    xi=xi-1-(f(xi-1)*(xi-2-(xi-1))/(f(xi-2)-f(xi-1)))
end
        