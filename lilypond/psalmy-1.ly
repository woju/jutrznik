\version "2.18.2"
\include "settings.ily"
\language "deutsch"

\new Staff {
    \clef treble
    \key g \major \cadenzaOn

    % ant B
    d'\breve e'8 e' \parenthesize e' g'4 g' \bar "|"
    g'\breve e'8 g' a'4 a' \bar "|"
    a'\breve h'8 g'4 g' \bar "|"
    g'\breve e'8 fis' d'4 d' \bar "||" \break

    \mark "Ps 1A" % B1 bez inicjum
    g'\breve a'8 g'4 \bar "|"
    g'\breve fis'8 g' e' d'4 \bar "||"
    g'\breve e'4^"flexa" \bar "||" \break

    \mark "Ps 1B" % B2 bez inicjum
    g'\breve a'8 g'4 \bar "|"
    g'\breve fis'8 d'[ e'] e'4 \bar "||" \break

    \mark "Ps 1C" % B3
    g'\breve fis'8 g' e'4 d' \bar "|"
    g'\breve a'8 h' a'4 g' \bar "||" \break

    \mark "Ps 1D" % B4
    g'\breve e'8 e'4 d' \bar "|"
    g'\breve a'8 h' a'4 g' \bar "||" \break

    \mark "Ps 1E" % B6
    h'\breve a'8 h' g'4 \bar "|"
    h'\breve h'8 a'[ h'] a'4 g' \bar "||" \break

    \mark "Ps 1F" % B16
    g'\breve a'8 g' fis'[ e'] g' \bar "|"
    g'\breve e'8 g' fis'4 e' \bar "||"
}

% vim: tw=80 ts=4 sts=4 sw=4 et
