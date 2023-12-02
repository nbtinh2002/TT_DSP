% Program P2_3
% Generate the input sequences
clf;
n = 0:40;
a = 2;b = -3;
x = cos(2*pi*0.1*n);
x11 =[x 0];
x12 =[0 x];
xx = x11 .*x12;
num = [2.2403 2.4908 2.2403];
den = [1 -0.4 0.75];
ic = [0 0]; % Set zero initial conditions
y1 = filter(num,den,x11,ic); % Compute the output y1[n]
y2 = filter(num,den,x12,ic); % Compute the output y2[n]
y = filter(num,den,xx,ic); % Compute the output y[n]
yt = y1.*y2; 
d = y - yt; % Compute the difference output d[n]
% Plot the outputs and the difference signal
subplot(3,1,1)
stem(n,y(1:41));
ylabel('Amplitude');
title('Output Due to Weighted Input: a \cdot x_{1}[n] + b \cdot x_{2}[n]');
subplot(3,1,2)
stem(n,yt(1:41));
ylabel('Amplitude');
title('Weighted Output: a \cdot y_{1}[n] + b \cdot y_{2}[n]');
subplot(3,1,3)
stem(n,d(1:41));
xlabel('Time index n');ylabel('Amplitude');
title('Difference Signal');
