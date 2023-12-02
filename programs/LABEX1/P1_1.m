% Program P1_1
% Generation of a Unit Sample Sequence 
clf;
% Generate a vector from -10 to 20
n = -10:20;
% Generate the unit sample sequence
sd = [zeros(1,17) 1 ones(1,13)];
% Plot the unit sample sequence
stem(n,sd);
xlabel('Time index n');ylabel('Amplitude');
title('Unit Sample Sequence');
axis([-10 20 0 1.2]);
