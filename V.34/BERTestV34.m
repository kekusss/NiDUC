%funkcja sprawdzajaca dzialanie scramblera V34 z badaniem BER

function [P, errors] = BERTestV34(inputSignal, P, isScrambled)
% Przygotowanie danych
scrambledSignal = scramblerV34(inputSignal);
PLength = length(P);
errors = zeros(1,PLength);

%Porownanie sygnalu wejsciowego z wyjsciowym
for i=1 : PLength
    % dodanie zaklocen do sygnalu scramblowanego 
    if isScrambled == 1
        noisySignal = addNoiseToSignal(scrambledSignal, P(i));
        descrambledSignal = descramblerV34(noisySignal);
        errors(i) = sum(~compareSignals(inputSignal, descrambledSignal(1:length(inputSignal))));
    else
        noisySignal = addNoiseToSignal(inputSignal, P(i)); % sygnal zaszumiony
        errors(i) = sum(~compareSignals(inputSignal, noisySignal(1:length(inputSignal)))); % Konieczna negacja.
    end
end


%Zamiana ilosci bledow na procent blednych bitow
errors = errors / length(inputSignal);
errors = errors *100;

end