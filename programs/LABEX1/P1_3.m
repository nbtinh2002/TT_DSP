% Program P1_3
% Generation of a real exponential sequence
clf;
n = 0:35; 
a = 2; K = 0.2;
%a = 0.9; K = 20;
x = K*a.^+n;
stem(n,x);
xlabel('Time index n');ylabel('Amplitude');

E = sum(x.^2);
    