function [y, time] = generateHalfDutySignal(ami, duration, step)
    len = length(ami);
    time = 0:step*duration:len*duration;
    m = length(time) / len;
    y = zeros(1, length(time));

    for i = 1:length(ami)
        s1 = round((i-1) * m + 1);
        s2 = round(i * m);
        half_m = floor(m/2);
        y(s1:s1+half_m) = ami(i);
        y(s1+half_m+1:s2) = 0;
    end
end
