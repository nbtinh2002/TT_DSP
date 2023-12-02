clf;
% Define the coefficients
num1 = [1 2 0 1];      num2 = [1 0 -3];
den1 = [1 -0.5 0.25];  den2 = [1 -15/4 0 3/4];

n = 0:50;
impulse = [1, zeros(1, length(n)-1)];
h1 = filter(num1, den1, impulse);
h2 = filter(num2, den2, impulse);
h_cascade = conv(h1, h2);

% Plot the impulse responses
subplot(2, 1, 1);
stem(n, h1);
xlabel('n');
ylabel('h_1(n)');
title('Impulse Response of System 1');
subplot(2, 1, 2);
stem(n, h_cascade(1:length(n)));
xlabel('n');
ylabel('h_{cascade}(n)');
title('Impulse Response of Cascade System');

% Check stability
if all(abs(roots(den1)) < 1)
disp('System 1 is stable.');
else
disp('System 1 is unstable.');
end
if all(abs(roots(conv(den1, den2))) < 1)
disp('Cascade System is stable.');
else
disp('Cascade System is unstable.');
end
