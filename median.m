% median sayıyı bulan fonksiyon algoritma
function y = median(x)
[rows cols] =size(x)
t=1;
if rows>1
for i=1:rows
    for j=1:cols

       k(t)=x(i,j);
       t=t+1;
    end

   
end
else 
    k=x;
end
for i=1:length(k)
    for j=i+1:length(k)

      if k(i)>k(j)

         temp =k(i);
         k(i)=k(j);
         k(j)=temp;
      end
    end
end
k
 
if mod(length(k),2)~=0
    med=k((length(k)+1)/2)

else
   med=(k(length(k)/2)+k((length(k)/2)+1))/2
end


