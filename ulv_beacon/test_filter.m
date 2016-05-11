% Octave test script for ngspice output
d=load('temp.txt');

% OK, first of all: remove duplicate values in data
%d2 = d(1,:);
%i2 = 2
printf("Deleting duplicate rows\n");
i = 2;
while i <= size(d,1)
    if mod(i,1000) == 0
        printf("\r%.2f%%   ", 100*i/size(d,1));
        fflush(1);
    end

    if d(i-1,2) == d(i,2)
        d(i,:) = []; %delete row
    else
        i += 1;
    end
end
printf("\n");

% ngspice uses variable timestep, so resample data to make it more sensible
% Filter out interval [1µs,2µs) while we're at it
t  = 1e-6:1e-11:1.99999e-6;
d = interp1(d(:,2),d(:,[3,4]),t);

dBm_balun = 10*log10(1000*mean((d(:,2)-mean(d(:,2))).^2/50))
dBm_bpf   = 10*log10(1000*mean((d(:,1).^2*50)))

if dBm_bpf < 3
    fprintf(2, 'BPF output too weak!\n');
    exit(1);
end

% Check how much power is in 432 MHz compared to the rest of the signal
p = abs(fft(d(:,1))).^2;
p=p(2:(size(p,1)/2)/2);

% Main signal power, and 3rd and 5th overtones
sig = sum(p(431:433));
sig3 = sum(p(1295:1297));
sig5 = sum(p(2159:2161));

third_harmonic_dB = 10*log10(sig3/sig)
fifth_harmonic_dB = 10*log10(sig5/sig)

% Sanity check total power that isn't the signal we want
relative_noise_power_dB = 10*log10((sum(p)-sig)/sig)
if relative_noise_power_dB > -40
    fprintf(2, 'Noise power too high!\n');
    exit(1);
end

