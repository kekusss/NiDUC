clear
clc

addpath DVB
addpath V.34

%długość ciągów
chainLength = 100000;

%% Przygotowanie sygnałów testowych
[randomSingal,onesSignal,zerosSignal] = generateTestSignals(chainLength);
%% DVB
DVBTest(randomSingal, 1);
DVBTest(onesSignal, 0);
DVBTest(zerosSignal, 0);

%% V.34
V34Test(randomSingal, 1);
V34Test(onesSignal, 0);
V34Test(zerosSignal, 0);