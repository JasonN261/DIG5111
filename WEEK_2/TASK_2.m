[sig, fs] = audioread("test_wav.wav");

gain_constant = 6.5;
sig = sig*gain_constant;

dims = size(sig);
n_samples = dims(1);
n_channels = dims(2);

ts = 1/fs;

t = (0:(n_samples - 1)) * ts;
%sig = my_normalisation(sig);
figure(1);
plot(t, sig);
grid on
ylim([-1.5, 1.5]);
time_label = "Time (s)";
xlabel(time_label);
amp_label = "Amplitude";
ylabel(amp_label);

figure(2);

for i = 1:n_channels
    chan = sig(:, i);

    subplot(n_channels, 1, i);
    plot(t, chan);
    ylim([-1.5, 1.5]);
    ylabel(sprintf("Channel %d", i));
    xlabel(time_label);
end