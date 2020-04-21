clear
clc

addpath DVB
addpath V.34

%długość ciągów
chainLength = 1000;

%% Przygotowanie sygnałów testowych
[randomSignal,onesSignal,zerosSignal] = generateTestSignals(chainLength);
%% DVB
%DVBTest(randomSignal, 1);
%DVBTest(onesSignal, 0);
%DVBTest(zerosSignal, 0);

%% V.34
%V34Test(randomSignal, 1);
%V34Test(onesSignal, 0);
V34Test(zerosSignal, 0);

%% BER Test
%BERTests(randomSignal, zerosSignal, onesSignal, 0);
%BERTests(randomSignal, zerosSignal, onesSignal, 1);