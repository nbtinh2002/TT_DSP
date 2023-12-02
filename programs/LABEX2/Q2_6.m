% Program P2_2
% Generate a sinusoidal input signal
clf;
n = 0:200;
x = sin(0.05*pi*n+0.6);

plot(n, x)
xlabel('Time index n');ylabel('Amplitude');
title('Input Signal')
