function ami = generateAMI(seq)
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
end
