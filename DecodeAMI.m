function x = DecodeAMI(w, NoOfSamples)
    x = zeros(1, length(w));
    for i = 1:length(w) - NoOfSamples/2
        if w(i) == 1 && all(w(i:i+NoOfSamples/2) == 1)
            x(i:i+NoOfSamples) = 1;  % Set the first half to 1
            x(i+NoOfSamples:i+NoOfSamples/2) = 1;  % Set the second half to 1
        end
    end
end
