function [stringsBefore, stringsAfter] = alignMatrices(stringsBefore, stringsAfter, isRandom)

    % Wyrownanie macierzy
    % jezeli dlugosci strumieni wejsciowego oraz wyjsciowego sie roznia
    % nalezy ten krotszy wydluzyc uzupelniajac zerami
    
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