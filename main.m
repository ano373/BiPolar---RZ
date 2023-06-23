clc;
clear;

seq = input("enter a stream of bits");
ami = generateAMI(seq);

duration = 2;
step = 0.01;
[y,time] = generateHalfDutySignal(ami, duration, step);

tiledlayout(2,1)
nexttile
plot(time, y);
xlabel('Time');
ylabel('AMI Signal');
title('AMI Encoding');
axis([0, length(seq)*duration, -1.1, 1.1]);
grid on;

NoOfSamples = 1/step;
disp(NoOfSamples)
w = abs(y);

InputSequnce = DecodeAMI(w, NoOfSamples)



% Display the decoded sequence
nexttile
time = 0:length(InputSequnce)-1;  
plot(time, InputSequnce);
xlabel('Time');
ylabel('Amplitude');
title('Decoded Signal');
ylim([-1.5, 1.5])
grid on
