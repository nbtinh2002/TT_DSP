%Q1.26
clf;
n=0:99;
x = -2 +4*rand(1,100);
stem(n,x);
axis([0,99,-2,2]);
title('Random signal');
xlabel('time index n');
ylabel('Amplitude');
grid;