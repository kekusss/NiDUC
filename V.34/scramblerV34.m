% Scrambler multiplikatywny V34

function scrambledV34 = scramblerV34 (inputSignal)

register = zeros(1,23);
scrambledV34 = zeros(1, length(inputSignal));

    for i = 1 : length(inputSignal)
        xor1 = xor(register(18), register(23));
        scrambledV34(i) = xor(inputSignal(i), xor1);
        for j = 23 : -1 : 2
            register(j) = register(j-1);
        end
        register(1) = scrambledV34(i);
    end
 end