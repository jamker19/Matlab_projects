function y = standartSapmaHesapla(x )

 sum=0;counter=0;
 [rows col] = size(x)
for i=1:rows

  for j=1:col
      counter=counter+1;
      sum=sum+x(i,j);

  end
end

  ort=sum/counter;
  sum1=0;counter=0;
  
 for i=1:rows

  for j=1:col
      counter=counter+1;
      sum1=sum1+(ort-x(i,j))^2;

  end
 end
 var=floor(sum1/(counter-1))
 std=var^(1/2)
