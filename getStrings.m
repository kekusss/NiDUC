function [strings] = getStrings(signal,isRandom)
    %% znalezienie najdluzszego ciagu
    maxLength = 0;
    len = 1;
    for i = 2 : length(signal)
        if signal(i) == signal(i-1)
            len = len + 1;
        else
            if maxLength < len
                maxLength = len;
            end
            len = 1;
        end
    end
    
    %jeśli najdłuzszy ciag na koncu
    if isRandom == 1
        if maxLength < len
            maxLength = len;
        end
    end
    
    %% znalezienie ilosci ciagow o danej dlugosci
    len = 1;
    strings = zeros(1, maxLength);
    
    for i = 2 : length(signal)
        if signal(i) == signal (i-1)
            len = len + 1;
        else
            strings(len) = strings(len) + 1;
            len = 1;
        end
    end
    
    %jeśli ciąg konczy sie na ostatnim elemencie
    if isRandom == 1
        if signal(i) == signal (i-1)
            strings(len) = strings(len) + 1;
        end
    end
end

