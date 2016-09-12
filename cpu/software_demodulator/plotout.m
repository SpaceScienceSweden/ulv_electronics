% data sampled by arduino
d=load('out.csv');

% this plot demonstrates the need to measure the rotation
% period after/before each period
subplot(3,1,1);
plot(d');

% demodulate
n=size(d,2);
t=0:(n-1);
I=sin(2*pi*t/4);
Q=cos(2*pi*t/4);
D=d*[I',Q'];

% show demodulated values over time
subplot(3,1,2);
plot(D);

% plot energy not accounted for in the demodulated values
m=mean(d,2);
e=D*[I;Q]/n*2;
r=d-e-m;
subplot(3,1,3);
plot(sum(r.*r,2))

