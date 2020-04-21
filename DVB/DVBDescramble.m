function descrambledSignal = DVBDescramble(inputSignal)
    % przygotowanie macierzy
    descrambledSignal = zeros(1, length(inputSignal));
    
    % slowo synchronizujace
    sync = syncString();
    
    % descramblowanie
    j=1;
    for i=1 : length(inputSignal)
        l = xor(sync(14), sync(15));
        sync = registerShift(sync, l);
        descrambledSignal(j) = xor(inputSignal(i), l);
        
        if mod(i, 32) == 0
            sync = syncString();
        end
        
        j = j + 1;
    end
end

