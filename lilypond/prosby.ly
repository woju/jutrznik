\version "2.18.2"
\include "settings.ily"
\language "deutsch"

\new Staff {
    \clef treble
    \key f \major \cadenzaOn

    \mark "Aklamacja"
    a'\breve a'8[ g'] f'4 \bar "|" d'\breve f'4 f' \bar "||" \break

    \mark "Werset"
    c''\breve c''4 a' \bar "|"
    f'\breve g'8 f' g'4 a' \bar "|"
    a'\breve b'8 b' \parenthesize b' c''4 g' \bar "|"
    b'\breve g'8 g'[ b'] a'4 \bar "||"
}

% vim: tw=80 ts=4 sts=4 sw=4 et
