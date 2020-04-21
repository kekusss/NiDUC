function outputSignal = DVBTest(inputSignal, isRandom)
    %% Scrambling
    outputSignal = DVBScramble(inputSignal);
    
    %% Porównanie ilości ciągów o danej długości
    [stringsBefore] = getStrings(inputSignal, isRandom);
    [stringsAfter] = getStrings(outputSignal, isRandom);
    
    %% Wyrównanie macierzy
    [stringsBefore, stringsAfter] = alignMatrices(stringsBefore, stringsAfter, isRandom);
    
    %% Tworzenie wykresu
    
    y = [stringsBefore', stringsAfter'];
    
    figure;
    subplot(1, 1, 1);
    bar(y);
    hold on;
        text(1 : length(stringsBefore), stringsBefore, num2str(stringsBefore'));
        text(1 : length(stringsAfter), stringsAfter, num2str(stringsAfter'));
        legend('Sygnal przed scramblingiem', 'Sygnal po scramblingu');
        title('Dlugosci ciagow');
    hold off;
end