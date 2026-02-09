
[dry, Fs] = audioread('pluck.wav');   
dry = mean(dry, 2);

%[ir, Fs_ir] = audioread('LargeHall.wav');
[ir, Fs_ir] = audioread('Church.wav');

ir = mean(ir, 2);                


% if Fs ~= Fs_ir
%     error('Sampling rates do not match!');
% end


reverb = conv(dry, ir);

reverb = reverb / max(abs(reverb));

soundsc(reverb, Fs);


