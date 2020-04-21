% funkcja generujaca sygnaly testowe
function [randomSignal, onesSignal, zerosSignal] = generateTestSignals(chainLength)
    %% pseudolosowy ze zwiekszonym prawdopodobienstwem wystepowania dlugich ciagow
    randomSignal = zeros(1, chainLength*10);
    random = rand(1, chainLength);
    preSignal = round(random);
    for i=1 : chainLength
        tmp = preSignal(i);
        for j=1:10
            randomSignal(j+10*(i-1))=tmp;
        end
    end
    %% same 1
    onesSignal = ones(1, chainLength);
    %% same 0
    zerosSignal = zeros (1, chainLength);
end