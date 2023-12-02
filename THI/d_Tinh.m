clf;
num1 = [1 0 0 3];           num2 = [1 0 -4];
den1 = [1 -5/3 2/3];        den2 = [1 -13/4 0 3/4];
[z,p] = tf2zpk(num2, den2)
zplane(num2,den2)
pause 
num=conv(num1,num2);
den=conv(den1,den2);
zplane(num,den)

