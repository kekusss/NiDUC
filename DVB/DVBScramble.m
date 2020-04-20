function outputSignal = DVBScramble(inputSignal)
    %% Scrambling
    outputSignal = inputSignal;
    sync = syncString();
    for i = 1 : length(outputSignal)
        xorOutput = xor (sync(14),sync(15));
        sync = registerShift(sync, xorOutput);
        outputSignal(i) = xor(outputSignal(i), xorOutput);
        
        if mod(i, 32) == 0
            sync = syncString();
        end
    end
end

