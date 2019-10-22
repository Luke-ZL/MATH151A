%5(a)
tol = 10^-5;
p = [ pi/4 3*pi/8 ];
i = 2;
while abs(p(i) - p(i-1)) > tol
    p(i+1) = p(i) - ((sin(p(i)) - p(i))*(p(i)-p(i-1)))/((sin(p(i)) - p(i))-(sin(p(i-1)) - p(i-1)));
    i = i + 1;
end
fprintf('p(%i) = %d\n', i-1, p(i));

x = linspace(0,i-1,i); 
plot(x,p);
xlabel('n');
ylabel('p_{n}'); 
title('Plot of p_{n}, 5(a)'); figure;



%5(b)
tol2 = 10^-5;
p2 = [ pi/4 3*pi/8 ];
i = 2;

while abs(p2(i) - p2(i-1)) > tol2
    p2(i+1) = p2(i) - (sin(p2(i)) - p2(i))/(cos(p2(i)) - 1);
    i = i + 1;
end

fprintf('p2(%i) = %d\n', i-1, p2(i));

x = linspace(0,i-1,i);
plot(x,p2);
xlabel('n');
ylabel('p_{n}'); 
title('Plot of p_{n}, 5(b)');    

      