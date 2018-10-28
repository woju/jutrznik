\version "2.18.2"
\include "settings.ily"
\language "deutsch"

\new Staff {
    \clef treble
    \key f \major \cadenzaOn

    \mark "Antyfona"
    f'8 g' a' a'\breve b'8 a' \parenthesize a' g' a' \bar "|"
    a'\breve g'8 f' g'4 f' \bar "||" \break

    \mark "Werset"
    f'8 g' a'\breve g'8 f' d'4 c' \bar "|"
    f'8 g' a'\breve b'8 a' \parenthesize a' g' a' \bar "|"
    f'8 g' a'\breve g'8 f' d'4 c' \bar "|"
    f'8 g' a'\breve b'8 a' \parenthesize a' g' f' \bar "||"

    a'\breve g'4^"flexa" \bar "||"
}

% vim: tw=80 ts=4 sts=4 sw=4 et
