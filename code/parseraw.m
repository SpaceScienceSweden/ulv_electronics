function [discard, num_tachs, nq, iq, minmax, mean_, mean_abs, temps, volts, stat_1pns] = parseraw (filename)
 % Some limitations with this code:
 % * it assumes exactly 4 temperature sensors
 % * it assumes exactly 5 voltage channels
 % * it assumes only one FM active

 datta = fread(fopen(filename,'rb'));
 datta = cast(datta, 'uint8');

 soffsets = findstr(datta, 'SQUARE');
 % lop off the last one since it might be truncated
 soffsets = soffsets(1:end-1);

 % parse all headers
 num_temps = cast(datta(soffsets+8+3), 'double');
 toffsets = soffsets(find(num_temps)) + 8 + 6;


 offsets = findstr(datta, 'FMIQ');
 offsets = offsets(1:end-1);
 voffsets = findstr(datta, 'VOLT');
 voffsets = voffsets(1:end-1);
 %toffsets = findstr(datta, 'TEMP');
 %toffsets = toffsets(1:end-1);

 sn = size(soffsets,2);
 n = size(offsets,2);
 vn = size(voffsets,2);
 tn = size(toffsets,2);

 discard = cast(typecast(datta(offsets+(4+[0:1])'),'int16'),'double');
 num_tachs = cast(datta(offsets+4+2), 'double');
 nq = cast(reshape(typecast(datta(offsets+(4+[3:10])'),'uint16'),4,n)', 'double');
 iq = transpose([1,i,0,0,0,0,0,0;0,0,1,i,0,0,0,0;0,0,0,0,1,i,0,0;0,0,0,0,0,0,1,i]*cast(reshape(typecast(datta(offsets+(4+[11:26])'),'int16'),8,n),'double'));
 stat_1pns = datta(offsets+(4+[27:30])')';

 minmax = cast(reshape(typecast(datta(offsets+(4+[31:46])'),'int16'),8,n)','double');
 mean_ = cast(reshape(typecast(datta(offsets+(4+[47:54])'),'int16'),4,n)','double');
 mean_abs = cast(reshape(typecast(datta(offsets+(4+[55:60])'),'uint16'),3,n)','double');

 %temps = datta(toffsets+(0:23)');

 %depends on how many temperature sensors we have connected
 %temps = (cast(reshape(typecast(datta(toffsets+(4+[2,3,6,7,10,11,14,15])'),'int16'),4,tn),'double'))'/16;
 temps = (cast(reshape(typecast(datta(toffsets+(4+[2,3,6,7,10,11])'),'int16'),3,tn),'double'))'/16;

 volts = cast(reshape(typecast(datta(voffsets+(4+[0:9])'),'uint16'),5,n)', 'double');

 % from the code
 k = [
     (18.0+18.0)/18.0 * 2.56 / 1024,
    (150.0+10.0)/10.0 * 2.56 / 1024,
    (150.0+10.0)/10.0 * 2.56 / 1024,
     (18.0+10.0)/10.0 * 2.56 / 1024,
 ];

 volts(:,1:4) = volts(:,1:4)*diag(k);
 volts(:,5)   = volts(:,5) * 2.56/1024 * (10.0+22.0)/10.0 - volts(:,1) * 22.0/10.0;
endfunction
