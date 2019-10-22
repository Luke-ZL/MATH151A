%3(a)
N  = input('N=');
h = pi / N;
x = h : h : pi - h;
fxj = 0;

for i = 1:N-1
    fxj = cos(x(i))+fxj;
end

out = h * fxj;

fprintf("Results for composite trapezoidal=%f\n",out);

%3(b)
N  = input('N=');
if mod(N,2)==1
    error('Error. Input must be even, %d is odd',N);
end

h = pi / N;
x = h : h : pi - h;
f2j = 0;
f2j1 = 0;
for j = 1:N/2-1
    f2j = cos(x(2*j))+f2j;
end
for j = 1:N/2
    f2j1 = cos(x(2*j-1))+f2j1;
end

out = (h/3)*(2*f2j+4*f2j1); 

fprintf("Results for composite Simpson=%f\n",out);


