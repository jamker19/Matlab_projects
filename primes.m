clear all,clc

number=1000;

j=2
k=1;

durum=1
for i=2:20

    while j<i

        if(mod(i,j)==0)
            durum=0
            break
        end
        
        
        
     j=j+1;
    end
   j=2
   
    if(durum==1 )
            x(k)=i
            k=k+1;
            durum=1
            continue
           end
durum=1
    
  
end

