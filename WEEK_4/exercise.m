signalAnalyzer
NoiseFs = 22050;

NoiseDur = 2;

Noise = randn(NoiseFs * NoiseDur, 1);

%sound(Noise, NoiseFs);


a = 1;
b = highpass.numerator;

stem(b);

newnoise1 = conv(b, Noise, "full");
newnoise2 = filter(b, a, Noise);

sound(newnoise1, NoiseFs);
sound(newnoise2, NoiseFs);
len = length(newnoise1) - length(newnoise2);