clc;
clear;

seq = [1,1,0,1,0,1,1,1,0,1];
len = length(seq);
ami = zeros(1, len);
counter = 0;

for i = 1:len
    if seq(i) == 1 
        if mod(counter, 2) == 0
            ami(i) = seq(i);
        else
            ami(i) = -seq(i);
        end
        counter = counter + 1;
    end
end

duration = 2;
step = 0.01;
time = 0:step*duration:len*duration;
y = zeros(1, length(time));
m = length(time) / len;

for i = 1:length(ami)
    s1 = round((i-1) * m + 1);
    s2 = round(i * m);
    half_m = floor(m/2);
    y(s1:s1+half_m) = ami(i);
    y(s1+half_m+1:s2) = 0;
end

plot(time, y);
xlabel('Time');
ylabel('AMI Signal');
title('AMI Encoding');
axis([0, 14, -1.1, 1.1]);
grid on;
