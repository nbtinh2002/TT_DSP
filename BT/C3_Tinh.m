clf;
% Define the zeros, poles, and gain
z = [-1+0.3j -1-0.3j]';
p = [1/5 3/4]';
k = 10;
% find numerator and denominator polynomial coefficients
zplane(z,p);
[num den] = zp2tf(z,p,k);
h= tf(num,den)


