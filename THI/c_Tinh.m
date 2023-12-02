clf;
num2 = [1 0 -4];
den2 = [1 -13/4 0 3/4];
w = -2*pi:8*pi/511:2*pi;

H = freqz(num2, den2, w);

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