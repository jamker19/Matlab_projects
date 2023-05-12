function y = myExp3(x)
    tolerance = 1e-6;
    total_sum = 1;
    n = 1;
    last_term = 1;
    factorials = [1];
    
    while last_term > tolerance
        if n > length(factorials)
            factorials(n) = factorials(n-1) * n;
        end
        last_term = x^n / factorials(n);
        total_sum = total_sum + last_term;
        n = n + 1;
    end
    
    y = total_sum;
end