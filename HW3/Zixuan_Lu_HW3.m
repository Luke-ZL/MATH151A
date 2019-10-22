n  = input('n=');
for i = 1:n
    fprintf("Point %d:\n",i);
    xnk(i)=input('x=');
    fxnk(i)=input('f(x)=');
end
a=input('a=');
Lag =ones(n);
yy3=0;
for i=1 : n
    for j =1:n
        if (i~=j)
            Lag(i)=Lag(i)*(a-xnk(j))/(xnk(i)-xnk(j));
        end
    end
end
for i=1:n
    yy3=yy3+fxnk(i)*Lag(i);
end
out = yy3;
fprintf("P(a)=%f\n",out);
