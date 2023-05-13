clc;
clear;

seq = input("enter a stream of bits");
ami = generateAMI(seq);

duration = 2;
step = 0.01;
[y,time] = generateHalfDutySignal(ami, duration, step);


plot(time, y);
xlabel('Time');
ylabel('AMI Signal');
title('AMI Encoding');
axis([0, length(seq)*duration, -1.1, 1.1]);
grid on;
