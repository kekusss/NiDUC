% funkcja generujaca sygnaly testowe
function [randomSignal, onesSignal, zerosSignal, fileSignal] = generateTestSignals(chainLength)
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
    %% Wczytywanie z pliku
    fileID = fopen('file.jpg');
    signal = fread(fileID);
    for i=1:1:length(signal)
        signal(i,1)=mod(signal(i,1),2);
    end
    fileSignal=signal';
end