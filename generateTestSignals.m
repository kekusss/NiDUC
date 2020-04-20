%% generuje sygnal pseudolosowy
function [randomSignal, onesSignal, zerosSignal] = generateTestSignals(chainLength)
    random = rand(1, chainLength);
    randomSignal = round(random);
    onesSignal = ones(1, chainLength);
    zerosSignal = zeros (1, chainLength);
end