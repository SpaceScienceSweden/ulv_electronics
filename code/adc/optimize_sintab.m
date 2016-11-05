% the purpose of this file is to figure out what amplitude to use for sintab
% the goal is to maximize the energy ratio between the sine and all harmonics due to truncation to 8 bits
a=(100:0.001:130)';
x=0:255;
sintab=max(-128,min(127,fix(a*sin(2*pi*x/256))))/128;

%amplitudes of the fundamental
ff=abs(fft(sintab,256,2));
as=ff(:,2)/128;

%residual energy
re=sum(ff(:,3:255).^2,2);

%signal-to-residual energy ratio
w=as.^2./re;

figure(1);
plot(a,w)
title('signal-to-residual energy ratio')

%find optimal amplitude
[r,ri]=max(w);
a(ri)

figure(2)
semilogy(x,abs(fft(sintab(ri,:)))/128,'.-');axis([0,255,1e-6,10])
title('spectrum')

figure(3)
plot(x,sintab(ri,:))
title('the function itself')

