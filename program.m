clear
clc

addpath DVB     
addpath V.34

%dlugosc ciagow wejsciowych sygnalow
chainLength = 1000;

% Przygotowanie sygnalow do przeprowadzenia testow
[randomSignal,onesSignal,zerosSignal] = generateTestSignals(chainLength);

% Testowanie scramblera addytywnego DVB dla sygnalu losowego, samych zer, samych jedynek
%DVBTest(randomSignal, 1);
%DVBTest(onesSignal, 0);
%DVBTest(zerosSignal, 0);

% Testowanie scramblera multiplikatywnego V34 dla sygnalu losowego, samych zer, samych jedynek
%V34Test(randomSignal, 1);
%V34Test(onesSignal, 0);
%V34Test(zerosSignal, 0);

% Przeprowadzenie testow dla roznych sygnalow wyznaczajac wspolczynnik BER 
BERTests(randomSignal, zerosSignal, onesSignal, 0);
BERTests(randomSignal, zerosSignal, onesSignal, 1);