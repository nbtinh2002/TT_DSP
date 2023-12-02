clf;
n=-10:40
num2 = [1 0 -4];
den2 = [1 -13/4 0 3/4];
x = -4 + 8*rand(1,51);
y = filter(num, den, x);
stem(n, y);
xlabel('n');
ylabel('y');
title('Output ');