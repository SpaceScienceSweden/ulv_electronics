%fmod=2e6;
osr=512;
%fdata=fmod/osr;
sinccore=ones(1,osr)/osr;
order=3;
insz=(osr*(order+1)-order+1);
%f=(0:100:ceil(fdata*5))/fdata;
f=0:0.01:5;
t=(1:insz)'/osr;
A=exp(2*pi*i*t*f);

for o=1:order
 B=[];
 for n=1:size(f,2)
  B(:,size(B,2)+1)=conv(A(:,n),ones(1,osr)/osr,'full')((osr):end-(osr-1));
 endfor
 A=B;
endfor

hold off;
semilogy(f,abs(A(1,:)),f,abs(0.5*(A(1,:)+A(osr+1,:))));
axis([0,max(f),1e-6,1]);
legend(sprintf('sinc^%i',order),sprintf('averaged sinc^%i',order))
title("horizontal scale doesn't seem right blah blah");
hold on;
semilogy(f,abs(sinc(f).^3.*sinc(2*f)),'kx');
semilogy(f,abs(sinc(f).^3),'k+');
semilogy(f,abs(sinc(f).^2.*sinc(2*f)),'rx'); %it matches!

