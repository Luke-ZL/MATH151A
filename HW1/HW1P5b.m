tol = 10^-5;
p = [ pi/4 3*pi/8 ];
i = 2;

while abs(p(i) - p(i-1)) > tol
    p(i+1) = p(i) - (sin(p(i)) - p(i))/(cos(p(i)) - 1);
    i = i + 1;
end

fprintf('p(%i) = %d\n', i-1, p(i));

x = linspace(0,i-1,i);
plot(x,p);
xlabel('n');
ylabel('p_{n}'); 
title('Plot of p_{n}');    
