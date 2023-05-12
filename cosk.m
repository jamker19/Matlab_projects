function y = cosk(x)
% Bu fonksiyon, cos(x) değerini Taylor serisi genişlemesini kullanarak yaklaştırır
tol=1e-6; % yaklaşım için tolerans
n=1; % serideki terim sayısı için sayaç
total_sum=1; % toplam değeri başlatılır
last_term=(-1)^(n)*x^(2*n)/factorial(2*n); % ilk terim hesaplanır
while abs(last_term)>tol % son terim toleranstan büyük olduğu sürece döngü devam eder
   total_sum=total_sum+last_term; % toplama son terim eklenir
   n=n+1; % sayaç arttırılır
   last_term=(-1)^(n)*x^(2*n)/factorial(2*n); % yeni terim hesaplanır
end

    function z=factorial(k) % faktöriyel hesaplayan iç fonksiyon
    t=1;fact=1;
        while t<=k
            fact=fact*t;
            t=t+1;
        end
        z=fact;
    end
    
y=total_sum; % sonuç döndürülür
end