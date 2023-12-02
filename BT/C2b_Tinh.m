clf;
num = [1 -2 -3 0 2]; 
den = [1 0 0.2 0.7 -0.8]; 
w = -2*pi:8*pi/511:2*pi;
H = freqz(num, den, w);
subplot(2,1,1)
plot(w/pi,abs(H));grid
title('Magnitude Spectrum |H(e^{j\omega})|')
xlabel('\omega /\pi');
ylabel('Amplitude');
subplot(2,1,2)
plot(w/pi,angle(H));grid
title('Phase Spectrum arg[H(e^{j\omega})]')
xlabel('\omega /\pi');
ylabel('Phase, radians');