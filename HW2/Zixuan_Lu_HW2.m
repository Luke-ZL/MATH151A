%4(1)
fplot(@(x) abs(x),[-1,1]);
hold on;

%4(2)
xx = -1 : 0.01 : 1;
for n=2:5
    yy=0;
    for k=0:n
        xnk(k+1)=-1+2*k/n;
        fxnk(k+1)=abs(xnk(k+1));
    end
    Lag =ones(n+1,size(xx,2));
    for i=1 : n+1
        for j =1:n+1
         if (i~=j)
            Lag(i,:)=Lag(i,:).*(xx-xnk(j))/(xnk(i)-xnk(j));
         end
        end      
    end
    for i=1:n+1
      yy=yy+fxnk(i)*Lag(i,:);
    end
    plot(xx,yy);
    hold on;
end
legend({'f','g_2', 'g_3', 'g_4', 'g_5'},'Location','southwest');
xlabel('x');
ylabel('f(x)/g_n(x)'); 
title('Plot of f, g_2, g_3, g_4, g_5, 4(a)/4(b)');    
figure;

%4(3)
gn3=[];
for n=1:20
    yy3=0;
    for k=0:n
        xnk(k+1)=-1+2*k/n;
        fxnk(k+1)=abs(xnk(k+1));
    end
    Lag =ones(n+1);
    for i=1 : n+1
        for j =1:n+1
         if (i~=j)
            Lag(i)=Lag(i)*(0.3-xnk(j))/(xnk(i)-xnk(j));
         end
        end      
    end
    for i=1:n+1
      yy3=yy3+fxnk(i)*Lag(i);
    end
    gn3(n) = yy3;
end
x=linspace(1,20,20);
plot(x,gn3);
xlabel('n');
ylabel('g_n(0.3)'); 
title('Plot of g_n(0.3), 1 \leq n \leq 20, 4(c)');    