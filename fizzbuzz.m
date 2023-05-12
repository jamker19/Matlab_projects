function y= fizzbuzz(n)
    
 for i=1:n

    if (mod(i,15)==0)
        fprintf("%d FizzBuzz\n",i)
    elseif(mod(i,3)==0)
        fprintf("%d Fizz\n",i)
    elseif(mod(i,5)==0)
        fprintf("%d Buzz\n",i)
    else
        fprintf("%d\n",i)
    end
 end