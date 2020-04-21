
   % Funkcja zaklocajaca nasz sygnal wejsciowy 
   % z danym prawdopodobienstwem przklamania bitu
   % Imitacja kana³u transmisyjnego
   
function signalWithNoise = addNoiseToSignal(inputSignal, probability)
   
    signalWithNoise = zeros(1, length(inputSignal)); 
    
    for i = 1 : length(inputSignal)
        if rand(1) < probability
            signalWithNoise(i) = ~inputSignal(i);
        else
            signalWithNoise(i) = inputSignal(i);
        end
    end
end