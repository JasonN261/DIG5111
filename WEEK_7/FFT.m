function spectrum(x,fs)
N = length(x);
X = fft(x);

f = (0:N-1) * (fs/N);
mag = abs(X)/N;

plot(f,mag);
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('signal Spectrum')



end