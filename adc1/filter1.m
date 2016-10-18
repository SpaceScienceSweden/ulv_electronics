% NP0's only come up to 0.47 µF, and then they're expensive and big.
% Kemet's are 2220 (5.6x5.0 mm)
% TODO: Take the capacitor on the first stage amplifier into account
R1=18e3;
C1=220e-9;
R2=R1;      % unit gain
C2=1e-9;
R3=1e3;     % also protects ADC input
C3=18e-9;

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

I1 = 1  ./ (R1   + 1./(-2i*pi*f*C1));
g1 = I1 ./ (1/R2 +     -2i*pi*f*C2);
Z3 = 1  ./ (-2i*pi*f*C3);
g2 = g1 .* Z3 ./ (R3 + Z3);

sinc3 = abs(sin(N*pi*f/fmod)./(N*sin(pi*f/fmod))).^3;
final = g2.*sinc3;

g1p = 180/pi*angle(g1);
g1 = abs(g1);
g2p = 180/pi*angle(g2);
g2 = abs(g2);
finalp = 180/pi*angle(final);
final = abs(final);

alias_max_dB = 10*log10(max(final(find(f==100*ceil(srate/100)):end)))

subplot(2,2,1:2);
semilogx(f,10*log10(g1),'-',f,10*log10(g2),'-',f,10*log10(sinc3),'-',f,10*log10(final),'-');
legend('At OP','Into ADC','sinc^3','final','location','eastoutside');
ylabel('Amplitude (dB)')
xlabel('frequency (Hz)')
axis([min(f),max(f),-100,0])

subplot(2,2,3);
ax = plotyy(f,10*log10(final),f,finalp);
fmin = 100;
fmax = srate/2;
axis(ax(1), [fmin,fmax,-10,0]);
axis(ax(2), [fmin,fmax,-50,50]);
title(sprintf('Closeup, %.0f-%.0f Hz', fmin, fmax))
xlabel('frequency (Hz)')
ylabel(ax(1), "Amplitude (dB)");
ylabel(ax(2), "Phase (degrees)");
%axis([1e1,1e4,-3,0])

subplot(2,2,4);
semilogx(f,10*log10(g1),'-',f,10*log10(g2),'-',f,10*log10(sinc3),'-',f,10*log10(final),'-');
fend=1.8e6;
axis([fend,fmod,-100,0])
title(sprintf('Closeup, %.1f-%.1f MHz', fend/1e6, fmod/1e6))
ylabel('Amplitude (dB)')
xlabel('frequency (Hz)')






