function [x1, x2, flag] = quad(a, b, c)
    % Eğer a ve b her ikisi de 0 ise
    if a == 0 && b == 0
        % Çözüm yoktur
        flag = 0;
        x1 = NaN;
        x2 = NaN;
    % Eğer sadece a 0 ise
    elseif a == 0
        % Bir gerçek kök vardır
        flag = 1;
        x1 = -c/b;
        x2 = NaN;
    else
        % Diskriminantı hesapla
        discriminant = b^2 - 4*a*c;
        % İki gerçek veya karmaşık kök vardır
        flag = 2;
        x1 = (-b + sqrt(discriminant)) / (2*a);
        x2 = (-b - sqrt(discriminant)) / (2*a);
    end
    % Eğer a ve c her ikisi de 0 ise
    if a == 0 && c == 0
        % Herhangi bir değer çözümdür
        flag = 99;
    end
end