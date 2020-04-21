function signalCorrect = compareSignals(inputSignal, descrambledSignal)
    % Porównanie sygna³u wejsciowego z sygna³em po descramblowaniu
    % Macierz signalCorrect bêdzie posiadaæ 1 tam, gdzie sygna³y s¹ zgodne.
    signalCorrect = inputSignal == descrambledSignal;
end