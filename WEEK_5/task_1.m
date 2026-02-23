
N = 61;
n = floor(N/2);
Fs = 10000;
f = 500;
fc = pi * f/Fs;
h_low = fc * sinc(fc * (-n:n));

f_high = 1200;
fc_high = pi*f_high/Fs;
h_high = fc_high*sinc(fc_high*(-n:n));

wind = flattopwin(length(h_low));

h_low = h_low(:);
h_high = h_high(:);
wind = wind(:);

windowed_sinc = wind.*h_low;
windowed_sinc_hp = wind.*h_high;

WS_hp = -windowed_sinc_hp;
WS_hp(n+1)=1;

bandP = conv(WS_hp,windowed_sinc);

fvtool(bandP,1)
