% Q.41
clf;            % Clear old graph
n = 0:50;   
f = 0.05;            
phase = 0.5*pi;          
A = 1;            
arg = 2*pi*f*n - phase; 
x1 = A*square(arg);
x2 = A*square(arg,60);
subplot(2,1,1);
stem(n,x1);      % Plot the generated sequence

grid; 
title('Sinusoidal Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;
subplot(2,1,2);
stem(n,x2);      % Plot the generated sequence

grid; 
title('Sinusoidal Sequence');
xlabel('Time index n');
ylabel('Amplitude');
axis;
