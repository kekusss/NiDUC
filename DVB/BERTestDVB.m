function [P, errors] = BERTestDVB(inputSignal, P, isScrambled)

%Przygotowanie danych
  scrambledSignal = DVBScramble(inputSignal);
  
  PLength = length(P);
  errors = zeros(1,PLength);
  
  %Porownanie sygnalu wejsciowego z wyjsciowym
    for i = 1 : PLength
        if isScrambled == 1
            noisySignal = addNoise(scrambledSignal, P(i)); % sygnal zaszumiony
            descrambledSignal = DVBDescramble(noisySignal);
            errors(i) = sum(~compareSignals(inputSignal, descrambledSignal(1:length(inputSignal)))); % Konieczna negacja.
        else
            noisySignal = addNoise(inputSignal, P(i)); % sygnal zaszumiony
            errors(i) = sum(~compareSignals(inputSignal, noisySignal(1:length(inputSignal)))); % Konieczna negacja.
        end
    end

%% Zamiana iloilosci bledow na procent blednych bitow
    errors = errors / length(inputSignal);
    errors = errors * 100;

end