
fs = 10e5;          % “fs” is sampling frequency
f0 = 440;           % “f0” is the frequency (in Hz) of the sinusoid
A = 1;              % “A” is the amplitude of the sinusoid, 1.0 Volts
t = 1/fs;          % “Ts” is the time between samples
dur = 1/f0 * 1e1;   % “dur”ation for 1000 periods of f0
N = fs*dur;         % “N” is the number of samples of the sinusoid for duration
t = 0:t:(N-1)*t;  % “t” is the time vector (StartTime:StepSize:StopTime)
s1 = A.*sin(2*pi*f0*t); 
subplot(2,1,1);
plot(t,s1,"m-","linewidth",2)

subplot(2,1,2);
[freq, amp] = getSpectrum(s1, fs);
plot(s1,fs,'-m','linewidth',2)
axis([0 1.5 0 1])
xlabel("Time (seconds)") % All figures should have meaningful titles
ylabel("Amplitude") % and axes labels.
title("Signal 1: Chirp")
grid on;

%%Chirp
figure()
subplot(2,3,1);

load chirp;
Fs_chirp= 8192;
s1_chirp=y;
soundsc(s1_chirp,Fs_chirp);

sizechirp = length(s1_chirp);
xc = linspace(0,1.5,sizechirp);
plot(xc,s1_chirp,"m-","linewidth",1)
axis([0 1.5 -1 1]);
xlabel("Time (seconds)");
ylabel("Amplitude");
title("Signal 1: Chirp");
grid off;

%%Chirp Spectrum
subplot(2,3,4);
[freq, amp] = getSpectrum(s1_chirp, Fs_chirp);
plot(s1_chirp,Fs_chirp, "m-", "linewidth",1);
axis([0 4000 0 0.02]);
xlabel("Frequency (Hz)");
ylabel("Amplitude");
title("Spectrum");

%%GONG
subplot(2,3,2);
load gong;
Fs_gong= 8192;
s1_gong=y;
soundsc(s1_gong,Fs_gong);

sizegong = length(s1_gong);
xg = linspace(0,5,sizegong);
plot(xg,s1_gong,"m-","linewidth",1)
axis([0 5 -1 1]);
xlabel("Time (seconds)");
ylabel("Amplitude");
title("Signal 1: Gong");
grid off;


%%splat
subplot(2,3,3);
load splat;
Fs_splat= 8192;
s1_splat=y;
soundsc(s1_splat,Fs_splat);

sizesplat = length(s1_splat);
xs = linspace(0,1.2,sizesplat);
plot(xs,s1_splat,"m-","linewidth",1)
axis([0 1.2 -1 1]);
xlabel("Time (seconds)");
ylabel("Amplitude");
title("Signal 1: Splat");
grid off;

