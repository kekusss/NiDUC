% funkcja odpowiadajaca za Scrambler multiplikatywny V34

function outputSignal = scramblerV34 (inputSignal)
    %slowo znajdujace sie w rejestrze przesuwnym scramblera
    sync = [ 1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 1 1 1 0 0 1 ]';

    for i = 1 : 1 : length(inputSignal)
        xor1 = xor ( sync(18), sync(23));
        sync = circshift(sync,1);
    
        xor2 = xor(xor1, inputSignal(i));
        sync(1) = xor2;
        outputSignal(i) = xor2;
    end
end
