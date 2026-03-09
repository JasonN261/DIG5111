%signalAnalyzer
Fs=10000;
A=0.8;
Ts=1/Fs;
dur=1.5;
t=0:Ts:dur;
Theta=2*pi*(100+200*t+500*t.*t);
chirpsig=A*sin(Theta);
sound(chirpsig,Fs)
%audiowrite('mychirp1.wav',chirpsig,Fs);

len = length(chirpsig);
SSC = fft(chirpsig);
SSR = abs(SSC)./len;
L=round(len/2);
Mag = mag2db(SSR);
f = (Fs/2)*(0:L)/L;
plot(f,Mag(1:L+1));
xlabel('Frequency')
ylabel('dB')

%spectrogram()