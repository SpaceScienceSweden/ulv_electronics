% Plot 'em all
[discard, num_tachs, nq, iq, minmax, mean_, mean_abs, vgnd, temps, volts, stat_1pns] = parseraw('raw7.dat');

% VGND alters between 512 and 712 every output,
% So we can "calibrate" the system by dividing
% by the average different between even and odd outputs.
nn = floor(size(iq,1)/2)*2;

% distance between rotor and sensor
d = 3.6e-3 - 1e-3;
% 2 mV per code
dvgnd = (vgnd(2)-vgnd(1)) * 2e-3;
dd = iq(2:2:nn,:)-iq(1:2:nn,:);
mdd = mean(dd) / (dvgnd / d);

figure(1);
plot3(iq);
title('IQ');
legend('ch1','ch2','ch3');

figure(2);
plot3(nq./num_tachs+[0,i,2i,3i]);
title('NQ');
legend('q1','q2','q3','q4');

figure(3);
hold off;
plot3(minmax(1:2:end,1:2:end)+[0,i,2i,3i],'b');
hold on;
plot3(minmax(1:2:end,2:2:end)+[0,i,2i,3i],'r');
plot3(mean_(1:2:end,:)+[0,i,2i,3i],'g');
plot3(mean_abs(1:2:end,:)+[0,i,2i],'k');
plot3(abs(iq(1:2:end,:))+[0,i,2i], 'm');
title('min(b), max(r), mean(g), mean\_abs(k), abs(iq)(m)');
#legend('min','max');

figure(4);
plot(temps);
title('Temperature sensors');
ylabel('Temperature (degC)');

figure(5);
plot(volts);
title('System voltages');
legend('+3.3V','+24V','VBUS','+5V','-5V');
ylabel('Voltage (V)');

figure(6);
plot(real(iq(1:2:end,:) ./ mdd))
title('Field strength via VGND');
ylabel('Field strength (V/m)');
legend('ch1','ch2','ch3');

