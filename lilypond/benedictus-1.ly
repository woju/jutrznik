\version "2.18.2"
\include "settings.ily"
\language "deutsch"

\new Staff {
    \clef treble
    \key g \major \cadenzaOn

    % ant B
    \mark "Antyfona (por. Antyfona 1)"
    d'\breve e'8 e' \parenthesize e' g'4 g' \bar "|"
    g'\breve e'8 g' a'4 a' \bar "|"
    a'\breve h'8 g'4 g' \bar "|"
    g'\breve e'8 fis' d'4 d' \bar "||" \break

    \mark "Wersety nieparzyste"
    d'8 e' g'\breve a'8 g'4 \bar "|"
    g'\breve fis'8 g' e' d'4 \bar "||"

    \mark "Wersety parzyste"
    h'\breve a'8 h' c''4 h' \bar "|"
    a'\breve g'8 a' h'4 h' \bar "||"
}

% vim: tw=80 ts=4 sts=4 sw=4 et
