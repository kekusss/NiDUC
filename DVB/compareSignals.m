    % Por�wnanie sygna�u wejsciowego z sygna�em po descramblowaniu
    % Macierz signalCorrect b�dzie posiada� 1 tam, gdzie sygna�y s� zgodne.
function signalCorrect = compareSignals(inputSignal, descrambledSignal)
    signalCorrect = inputSignal == descrambledSignal;
end