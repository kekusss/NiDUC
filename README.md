
# Symulator przesyłu danych zrandomizowanych
Program pozwala na symulowania przesyłania danych binarnych poddanych randomizacji przy pomocy różnych algorytmów.

## Uruchomienie
Aby uruchomić projekt należy mieć zainstalowane środowisko [MATLAB](https://www.mathworks.com/products/matlab.html). Następnie należy zaimportować folder z plikami z repozytorium. Można to zrobić za pomocą polecenia:
> \>git clone https://github.com/kekusss/NiDUC.git
 
Aby uruchomić symulator wystarczy wpisać w lini komend programu MATLAB:
> \>program 

## Dane wejściowe

Program domyślnie wykonuje testy na czterech rodzajach sygnalow wejściowych :

* sygnał pseudolosowy ze zwiększoną ilością ciągów binarnych
* sygnał samych jedynek
* sygnał samych zer
* sygnal którego źródłem jest plik, na przykład w formacie .jpg

## Konfiguracja

Zmiana długości ciągów generowanych w programie jest możliwa za pomocą zmiennej `chainLength` znajdującej się w `program.m`, domyślnie przyjmuje ona wartość 10000.

![](https://i.imgur.com/31Q5iNF.png)

W przypadku pobierania danych z pliku jego nazwę możemy zmienić w pliku `generateTestSignals.m` w funkcji `fopen(filename)`, domyślnie jest to `file.jpg`:

![](https://i.imgur.com/r69saed.png)

Porównanie ilości i długości ciągów binarnych jest możliwe za pomocą funkcji: 

* `DVBTest(sygnał, wyrownanie)`
* `V34Test(sygnał, wyrownanie)`

gdzie w miejsce parametru `sygnał` przekazujemy sygnał który chcemy poddać randomizacji i testom, a w miejsce parametru `wyrownanie` wstawiamy 0 (tylko dla ciagow zer i jedynek) lub 1 (w pozostałych przypadkach).

![](https://i.imgur.com/qTS0rxK.png)

Możliwe jest również wyznaczenie współczynnika **Bit Error Rate** za pomocą funkcji `BERTests(sygnał1, sygnał2, sygnał3, sygnał4, czy randomizacja)`, która porównuje 4 sygnały wejściowe i wartość 0 lub 1, która informuje czy poddajemy testowany sygnał scramblowaniu.

![](https://i.imgur.com/I4YDaS3.png)


## Autorzy

* Kewin Warzecha
* Artur Sołtys
