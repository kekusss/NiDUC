%Funkcja sprawdzajaca scramblowanie multiplikatywne wraz z rysowaniem
%wykresu 

function outputSignal = V34Test(inputSignal, isRandom)

    % Scramblowanie sygnalu wejsciowego
    outputSignal = scramblerV34(inputSignal);
    
    % Porownanie ilosci ciagow o danej dlugosci
    [stringsBefore] = getStrings(inputSignal, isRandom);
    [stringsAfter] = getStrings(outputSignal, isRandom);
    
    % Wyrownywanie macierzy
    [stringsBefore, stringsAfter] = alignMatrices(stringsBefore, stringsAfter, isRandom);
    
    % Tworzenie wykresu
    y = [stringsBefore', stringsAfter'];
    
    figure;
    subplot(1, 1, 1);
    bar(y);
    hold on;
        text(1 : length(stringsBefore), stringsBefore, num2str(stringsBefore'), 'vert', 'bottom', 'horiz', 'right');
        text(1 : length(stringsAfter), stringsAfter, num2str(stringsAfter'), 'vert', 'bottom', 'horiz', 'left');
        legend('Sygnal przed scramblingiem', 'Sygnal po scramblingu');
        title('Dlugosci ciagow');
    hold off;
end