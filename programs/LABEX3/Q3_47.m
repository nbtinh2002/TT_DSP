% Program Q3_47 
clf;
num = [2  5 9 5 3]; 
den = [5 45 2 1 1]; 
% compute poles and zeros and display 
[z p k] = tf2zpk(num,den); 
disp('Zeros:'); 
disp(z); 
disp('Poles:'); 
disp(p); 
% compute and display factored form of G(z) 
[sos k] = zp2sos(z,p,k) 
% generate pole-zero plot 
zplane(z,p);