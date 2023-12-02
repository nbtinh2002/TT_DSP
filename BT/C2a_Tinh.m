clf;
num = [1 -2 -3 0 2]; 
den = [1 0 0.2 0.7 -0.8]; 
% compute poles and zeros and display 
[z p k] = tf2zpk(num,den); 
disp('Zeros:'); 
disp(z); 
disp('Poles:'); 
disp(p);  
% generate pole-zero plot 
zplane(z,p);
% Check the stability
if all(abs(p) < 1)
    disp('The system is stable.');
else
    disp('The system is unstable.');
end
