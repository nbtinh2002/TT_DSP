%Q1.27
clf;
n=0:74;
x = sqrt(3) +4*randn(1,75);
stem(n,x);
title('Random signal');
xlabel('time index n');
ylabel('Amplitude');
grid;