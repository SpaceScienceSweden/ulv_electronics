% NP0's only come up to 0.47 µF, and then they're expensive and big.
% Kemet's are 2220 (5.6x5.0 mm)
% TODO: Take the capacitor on the first stage amplifier into account
R1=33e3;
C1=0.47e-6;
R2=R1;      % unit gain
C2=100e-12;
R3=1e3;     % also protects ADC input
C3=3.3e-9;

% filter cutoff frequencies
f1=1./(2*pi*R1*C1)
f2=1./(2*pi*R2*C2)
f3=1./(2*pi*R3*C3)

% ADC parameters
fadc=8e6;
fmod=fadc/4
N=256
srate=fmod/N


%f=10.^(0:0.001:log10(fmod));
f=[1:99,100:10:990,1000:100:fmod];
g1 = ((R1 + (2*pi*f*C1).^-1).*(R2^-1 + 2*pi*f*C2)).^-1;
%g2 = g1./((2*pi*f*C3).*(R3+(2*pi*f*C3).^-1));
g2 = g1.*((2*pi*f*C3).^-1)./(R3+(2*pi*f*C3).^-1);
maxg1 = max(g1)
maxg2 = max(g2)
sinc3 = abs(sin(N*pi*f/fmod)./(N*sin(pi*f/fmod))).^3;
final = g2.*sinc3;


subplot(2,2,1:2);
semilogx(f,10*log10(g1),'-',f,10*log10(g2),'-',f,10*log10(sinc3),'-',f,10*log10(final),'-');
legend('At OP','Into ADC','sinc^3','final','location','eastoutside');
ylabel('Amplitude (dB)')
xlabel('frequency (Hz)')
axis([min(f),max(f),-100,0])

subplot(2,2,3);
semilogx(f,10*log10(g1),'-',f,10*log10(g2),'-',f,10*log10(sinc3),'-',f,10*log10(final),'-');
title('Closeup, 10-10000 Hz')
ylabel('Amplitude (dB)')
xlabel('frequency (Hz)')
axis([1e1,1e4,-3,0])
%%%%
%semilogx(f,g1,'-',f,g2,'-',f,sinc3,'-',f,final,'-');
%title('Closeup, 1-10000 Hz')
%ylabel('Amplitude (linear)')
%xlabel('frequency (Hz)')
%axis([1,10000,0.5,1])

subplot(2,2,4);
semilogx(f,10*log10(g1),'-',f,10*log10(g2),'-',f,10*log10(sinc3),'-',f,10*log10(final),'-');
fend=1.8e6;
axis([fend,fmod,-100,0])
title(sprintf('Closeup, %.1f-%.1f MHz', fend/1e6, fmod/1e6))
ylabel('Amplitude (dB)')
xlabel('frequency (Hz)')






