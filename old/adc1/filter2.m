% ADC parameters
fadc=8e6;
fmod=fadc/4
N=256
srate=fmod/N


%f=10.^(0:0.001:log10(fmod));
f=[1:99,100:10:990,1000:100:fmod];

% 2nd order hi-pass followed by 3rd order lo-pass
% 2x Sallen-Key topology followed by passive last stage
R1=0.47e6;
C1=1e-6;
R2=100e3;
C2=100e-12;
R3=1e3;
C3=10e-9;

% filter cutoff frequencies
f1=1./(2*pi*R1*C1)
f2=1./(2*pi*R2*C2)
f3=1./(2*pi*R3*C3)

Z1 = -j./(2*pi*f*C1);
Z2 = -j./(2*pi*f*C2);
Z3 = -j./(2*pi*f*C3);

function g = allen_key (Z1, Z2, Z3, Z4)
  g = Z3.*Z4 ./ ( Z1.*Z2 + Z3.*(Z1 + Z2) + Z3.*Z4 );
endfunction

g1 =     allen_key(Z1, Z1, R1, R1);
g2 = g1.*allen_key(R2, R2, Z2, Z2);
g3 = g2.*Z3./(R3 + Z3);
maxg1 = max(g1)
maxg2 = max(g2)
maxg3 = max(g3)
sinc3 = abs(sin(N*pi*f/fmod)./(N*sin(pi*f/fmod))).^3;
final = g3.*sinc3;

subplot(2,1,1);
semilogx(f,10*log10(abs(g3)),f,10*log10(abs(final)))
axis([min(f),max(f),-100,0])

subplot(2,1,2);
semilogx(f,180/pi*angle(final))

axis([1e1,1e4,-10,10])


