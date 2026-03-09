function signal = MyChirp( f1, f2, dur, fs )
%MYCHIRP generate a linear-FM chirp signal
%
% usage: xx = mychirp( f1, f2, dur, fsamp )
%
% f1 = starting frequency
% f2 = ending frequency
% dur = total time duration
% fsamp = sampling frequency (OPTIONAL: default is 8000)
%
if( nargin < 4 ) %-- Allow optional input argument
fs = 8000;
end
ts = 1/fs;
t = 0:ts:dur;
a = f2 - f1/2 * dur; % slope = 2u => u = slope/2 
b = f1;
theta = 2*pi*(100 + b*t + a*t.*t);
signal = real(exp(j*theta));
sound(signal,fs);






end