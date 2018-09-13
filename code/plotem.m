% Plot 'em all
[discard, num_tachs, nq, iq, minmax, mean_, mean_abs, temps, volts, stat_1pns] = parseraw('raw4.dat');

figure(1);
plot3(iq);
title('IQ');
legend('ch1','ch2','ch3','tach');

figure(2);
plot3(nq./num_tachs+[0,i,2i,3i]);
title('NQ');
legend('q1','q2','q3','q4');

figure(3);
plot(minmax(:,1:2:end),'b');
hold on;
plot(minmax(:,2:2:end),'r');
plot(mean_,'g');
plot(mean_abs,'k');
plot(abs(iq), 'm');
title('min(b), max(r), mean(g), mean_abs(k), |iq|(m)');
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

