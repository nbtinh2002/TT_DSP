clf;
N=10;
num2 = [1 0 -4];
den2 = [1 -13/4 0 3/4];
y = impz(num2, den2, N);
stem(y);
xlabel('Time index n');
ylabel('Amplititude');
title('Impulse Response');