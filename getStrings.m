function [strings] = getStrings(signal,isRandom)
    % algorytm znajdowania najdluzszego ciagu 0 lub 1
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
    
    % rozpatrzenie przypadku w ktorym najdluzszy ciag wystepuje na koncu sygnalu
    if isRandom == 1
        if maxLength < len
            maxLength = len;
        end
    end
    
    % algorytm zliczania ilosci ciagow o danej dlugosci
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
    
    %gdy dany ciag konczy sie na ostatnim elemencie
    if isRandom == 1
        if signal(i) == signal (i-1)
            strings(len) = strings(len) + 1;
        end
    end
end

