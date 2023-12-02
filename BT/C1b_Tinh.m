clf;
% Define the coefficients
num1 = [1 2 0 1];      num2 = [1 0 -3];
den1 = [1 -0.5 0.25];  den2 = [1 -15/4 0 -3/4];

n = 0:200;
x = 5*cos(0.2*pi*n) + 4*sin(0.6*pi*n);
y1 = filter(num1, den1, x);
y = filter(num2, den2, y1);
% Plot the response
stem(n, y);
xlabel('n');
ylabel('y');
title('Response of Cascade System');


