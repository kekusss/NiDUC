% Descrambler mulitplikatywny V34

function descrambledV34 = descramblerV34 (scrambledSignal)
    register = zeros(1, 23);
    descrambledV34 = zeros(1, length(scrambledSignal));
    
    % k=1;
    for i=1 : length(scrambledSignal)
        xor1 = xor(register(18), register(23));
        descrambledV34(i) = xor( scrambledSignal(i), xor1);
        
        for j = 23 : -1 : 2
            register(j) = register(j-1);
        end
        register(1) = scrambledSignal(i);
    end

end