%wetdry mix= a*dry +b*wet,  where a+b = 1

Mix_val = 0.5;

dry_val = 1 - Mix_val;



m = length(sig);
n = length(wet_sig); 
diff = abs(n-m);
pad = zeros(diff,1);
sig_pad = [sig;pad];

mix = dry_val * sig + Mix_val * wet_sig