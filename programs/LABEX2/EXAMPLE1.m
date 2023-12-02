%impulse response
% Generate the input sequences
clf;
n =-10:40;
x = [zeros(1,10) 1 zeros(1,40)];
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
y = filter(num,den,x); % Compute the output y1[n]
stem(n,y);
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
