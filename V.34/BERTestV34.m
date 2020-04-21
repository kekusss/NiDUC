function [P, errors] = BERTestV34(inputSignal,P)
% Przygotowanie danych
if(~exist('P', 'var'))
        P = [0.0001 0.00015 0.0002 0.00025 0.0003 0.00035 0.0004 0.00045 0.0005];
end

scrambledSignal = scramblerV34(inputSignal);
PLength = length(P);
errors = zeros(1,PLength);

%Por�wnanie sygnalu wejsciowego z wyjsciowym
for i=1 : PLength
    %% tutaj mozna dodac zaklocenia do sygnalu scramblowanego - 
    noisySignal = addNoise(scrambledSignal, P(i));
    descrambledSignal = descramblerV34(noisySignal);
    errors(i) = sum(~compareSignals(inputSignal, descrambledSignal(1:length(inputSignal)))); 
end


%Zamiana ilosci bledow na procent blednych bitow
errors = errors / length(inputSignal);
errors = errors *100;

end