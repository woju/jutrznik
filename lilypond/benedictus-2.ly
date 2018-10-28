\version "2.18.2"
\include "settings.ily"
\language "deutsch"

\new Staff {
    \clef treble
    \key f \major \cadenzaOn

    % ant A
    \mark "Antyfona (por. Antyfona 2)"
    a'\breve g'8 a' f'4 f' \bar "|"
    f'\breve g'8 f' a'4 a' \bar "|"
    c''\breve d''8 c'' a' g' f'4 \bar "|"
    g'\breve a'8 g' f' d'4 d' \bar "||" \break

    \mark "Wersety nieparzyste"
    a'\breve c''8 c'' \parenthesize c'' f'4 f' \bar "|"
    b'\breve a'8 a' g'4 g' \bar "||"

    \mark "Wersety parzyste"
    a'\breve c''8 c'' \parenthesize c'' g'4 g' \bar "|"
    g'\breve a'8 a' \parenthesize a' f'4 f' \bar "||"
}

% vim: tw=80 ts=4 sts=4 sw=4 et
