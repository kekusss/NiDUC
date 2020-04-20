function [stringsBefore, stringsAfter] = alignMatrices(stringsBefore, stringsAfter, isRandom)
    %% Wyrównanie macierzy
    if length(stringsBefore) < length(stringsAfter)
        for i = length(stringsBefore) + 1 : 1 :  length(stringsAfter)
            stringsBefore(i)=0;
        end
    end
    
    if isRandom == 1 && length(stringsAfter) < length(stringsBefore)
        for i = length(stringsAfter) + 1 : 1 : length(stringsBefore)
            stringsAfter(i) = 0;
        end
    end
end