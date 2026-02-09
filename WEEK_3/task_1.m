[sig, fs] = audioread('pluck.wav');
%sound(sig,fs);

h = zeros(3*fs,1);
h(1)=1;
h(round(1*fs)) = 0.5;
h(round(2*fs)) = 0.25;

y = conv(h, sig);
sound(y, fs);
%figure 1,
plot (y);
%hold on
%plot (sig, fs);
%hold off

[h, fs_h] = audioread('Church.wav');
h = sum(h)/2;
