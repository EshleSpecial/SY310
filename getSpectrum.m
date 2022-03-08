function [freq, amp] = getSpectrum(amplitude, f_sampling)
% 
% Generates the frequency spectrum of a time-domain signal
% Input to the function are the waveform samples and sampling frequency.
% Outputs are amplitude (in Volts) and Frequency (in Hz).
%
a = length(amplitude);
amp = fftshift(fft(amplitude,a))/a;
amp = abs(amp) * 2; %to show magnitude only and scale for half of signal power in negative frequencies
freq = (-(a/2 - 1):((a/2))) * ((f_sampling)/a);
end