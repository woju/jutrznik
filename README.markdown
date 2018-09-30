# Jutrznik na ONŻ2

W&nbsp;trakcie roboty. Będzie skończony jeszcze w&nbsp;tym roku. PR-y od osób
niezwiązanych z&nbsp;projektem raczej nie będą rozpatrywane.

# Instalacja

```sh
apt install texlive-context texlive-fonts-extra make
```
(cała reszta jest w repo)

Żeby zbudować wystarczy napisać `make` w&nbsp;głównym katalogu.

# Elementy ruchome

## tytuły i śródtytuły

TBD, tymczasem popatrz sobie do `t-breviarium.tex`, sekcja „nagłówki”.

## gwiazdki, krzyżyki, ukośniki

Służą do tego makra:

- **ogólnego przeznaczenia:**
    - `\flxs`: czerwona fleksa (†) i&nbsp;łamliwa spacja za nią
    - `\meds`: czerwona mediata (\*) i&nbsp;spacja
- **niskopoziomowe:** `\flx` i&nbsp;`\med` jw. bez spacji i&nbsp;pamiętaj, że
  TeX zjada białe znaki po `\tokenach` (dlatego `\flxs` to `\flx\space`,
  analogicznie `\meds`) &mdash;&nbsp;jak nie rozumiesz, nie używaj
- **tylko do psalmów:** `\pflx`, `\pmed`, `\pfin` robią czarne znaki, dodatkowo
  manipulują wcięciami, dlatego nie używa się ich gdzie indziej
- **w antyfonach:** normalnie używa się `*` i `/`, na czerwono koloruje się samo
  (tak jest z&nbsp;powodu maszynki do powtarzania, patrz niżej)

Jeśli chodzi o niełamliwe spacje (`~`): odwrotnie niż przy jednoliterowych
słowach, niełamliwe spacje wstawia się *przed czerwoną interpunkcją*
(`Lorem~\flxs ipsum~\meds dolor.`). W&nbsp;katalogu `contrib/` są skrypciki,
które przerabiają teksty skopiowane skądinąd i&nbsp;automatycznie dostawiają te
spacje we właściwych miejscach.

## różne dialogi

```tex
\startdialog
\sym{K.} Boże, wejrzyj ku wspomożeniu memu.
\sym{W.} Panie, pośpiesz ku ratunkowi memu.
\stopdialog
```

## antyfony

```tex
% normalna antyfona, na czerwono będzie "Ant."
\ant Antyfona~* antyfona~/ antyfona.

% powtórzenie ostatniej antyfony, * jest zamieniane na /
\antr

% Na czerwono jest "2 ant.".
% Na końcu jest krzyżyk, który oznacza pominięcie fragmentu przy recytacji,
% potem trzeba napisać \cont na początku któregoś stychu w psalmie.
\ant[n=2] Antyfona~* antyfona.~\cont

% Antyfona z czymś dowolnym na czerwono.
% Makro \antr wyrzuci gwiazdkę, a nie zamieni na ukośnik.
\ant[title={Rok A}][join] Antyfona~* antyfona.
```

## psalmy

W&nbsp;psalmach nie należy używać `\quotation{}`, bo się rozwala.

```tex
\startpsalmus[title={Psalm 123}]
Werset werset 1.1\pmed
Werset werset 1.2\pfin
Werset werset 2.1\pflx
Werset werset 2.2\pmed
Werset werset 2.3\pfin
Werset werset 3.1\pmed
Werset werset 3.2\stoppsalmus
```

*Chwała* samo się doda na końcu.

Jeśli nie *chwała*, nadal można sobie pomagać przy pomocy `\pfin`, jeśli damy na
początek magiczny idiom `\psalmusverse=0\relax`. *UWAGA:* Liczba `\pfin` musi
być parzysta! Jeśli ostatni werset nie jest wcięty, nie dajemy po nim `\pfin`.

```tex
\startlines\psalmusverse=0\relax
Werset werset 1.1
Werset werset 1.2\pfin
Werset werset 2.1
Werset werset 2.2\pfin\stoplines
```

Zawsze można też ręcznie robić `\startnarrower[5mm]`.

## hymny

Ponieważ TeX to jest TeX, to jest tak:
- komentarz (`%`) pomiędzy zwrotkami jest obowiązkowy;
- `\stophymnus` jest w tej samej linijce.

```tex
\starthymnus
% http://brewiarz.pl/indeksy/pokaz.php3?id=...
% [dzien liturgiczny]
% LG tom [...], wydanie [...] (Pallottinum [YYYY]), s. [...]
% Skrócona LG (Pallottinum 1991), s. [...]
\item Werset 1.1
Werset 1.2
Werset 1.3
Werset 1.4
%
\item Werset 2.1
Werset 2.2
Werset 2.3
Werset 2.4\stophymnus
```

## prośby

Aklamacje wstawiają się same. Zarówno zachęta przewodniczącego, jak „Ojcze
nasz.” to normalne akapity.

```tex
Zachęta przewodniczącego:

\aklamacja Tekst aklamacji.

\prosba Pierwsza połowa prośby
--- druga połowa prośby.

\prosba Pierwsza połowa prośby
--- druga połowa prośby.

Ojcze nasz.
```

## rubryki

```tex
\startrubrica
Ten tekst będzie w~osobnym akapicie, trochę mniejszy niż reszta.
\stoprubrica

\rubrum{Ta sama wielkość, może być w~ciągu innego tekstu}
```

<!-- vim: set tw=80 ts=4 sts=4 sw=4 et : -->
