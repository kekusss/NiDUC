% Descrambler mulitplikatywny V34

function outputSignal = descramblerV34 (inputSignal)
    sync = [ 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 1 0 0 1 ]';

    for i = 1 : 1 : length(inputSignal)
        
        xor1 = xor ( sync(18), sync(23));
        sync = circshift(sync,1);
        sync(1) = inputSignal(i);
        
        outputSignal(i) = xor (xor1, inputSignal(i));
    end
end