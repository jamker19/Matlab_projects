clear,clc;
k=0,t=1;
for i=1:intmax
    for j=1:20
            if mod(i,j)~=0
                k=1;
                break
            end
    end
    if k==0
        fprintf("Evenly multiple smallest number is %d",i)
       
        break
    end
    k=0;
end
