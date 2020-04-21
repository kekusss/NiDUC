    % Porównanie sygna³u wejsciowego z sygna³em po descramblowaniu
    % Macierz signalCorrect bêdzie posiadaæ 1 tam, gdzie sygna³y s¹ zgodne.
function signalCorrect = compareSignals(inputSignal, descrambledSignal)

    signalCorrect = inputSignal == descrambledSignal;
    
end