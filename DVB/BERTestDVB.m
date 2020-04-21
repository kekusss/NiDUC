function [P, errors] = BERTestDVB(inputSignal, P)

%Przygotowanie danych
  scrambledSignal = DVBScramble(inputSignal);
  
  PLength = length(P);
  errors = zeros(1,PLength);
  
  %Porownanie sygnalu wejsciowego z wyjsciowym
    for i = 1 : PLength
        noisySignal = addNoise(scrambledSignal, P(i));
        descrambledSignal = DVBDescramble(noisySignal);
        errors(i) = sum(~compareSignals(inputSignal, descrambledSignal(1:length(inputSignal)))); % Konieczna negacja.
    end

%% Zamiana iloilosci bledow na procent blednych bitow
    errors = errors / length(inputSignal);
    errors = errors * 100;

end