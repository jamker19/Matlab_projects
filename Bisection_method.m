f=inline('x.^3-3*x^2+1')
a=0; b=1; kmax=6; tol=1e-5;
ya=f(a); yb=f(b);

if sign(ya) == sign(yb)
    error('function has same sign at the end points')
end
disp('      step        a       b         m       ym        bound')

 for k=1:kmax;
     m=(a+b)/2;  ym=f(m);  iter=k; bound=(b-a)/2;
     out =[iter, a,b,m,ym,bound]; disp(out)

   if abs(ym)<tol, disp('bisection has converged'); break; end

   if sign(ym) ~= sign(ya)

       b=m; yb=ym;
   else
       a=m; ya=ym;
   end
   if(iter>=kmax), disp('Zero not found to desired tolerance'), end
 end