fs = 1000;
f0= 0.5;
Ts= 1/fs;
dur = 1/f0 *1e3;
N= fs*dur;
t=0:Ts:(N-1)*Ts;
s1=0;
n=5;
for n = 1:1:n
    Aa=((1-(-1)^n)/((pi*n).^2));
    Ab=((((-1)^n)-2)/(pi*n));
    an= Aa.*cos(pi.*t*n);
    bn= Ab.*sin(pi.*t*n);
    s1=s1+an+bn;
end
a0 = -0.25;
s1=s1+a0;
xmin = 0;
xmax = 4;
ymin = -2;
ymax = 2;
figure
subplot(2,4,1);
plot(t,s1,'b-','linewidth',2)
axis([xmin xmax ymin ymax])
xlabel("Time(Ms)")
ylabel('Voltage (V)')
title("Time Domain Representation of Recreated Wave with n = 5")
grid on;
[freq, amp] = getSpectrum(s1,fs);
xmin = 0;
xmax = 7;
ymin = 0;
ymax = 1.5;
subplot(2,4,5);
plot(freq, amp,'b-','linewidth',2)
axis([xmin xmax ymin ymax])
xlabel("Frequency (kHz)")
ylabel("Voltage (V)")
title("Frequency Domain Representation of Recreated wave with n = 5")
grid on;
s1 = 0;
%subplot(2,4,2);
%plot(t,s1,'b-','linewidth',2);
