\version "2.18.2"
\include "settings.ily"
\language "deutsch"

\new Staff {
    \clef treble
    \key f \major \cadenzaOn

    % ant A
    a'\breve g'8 a' f'4 f' \bar "|"
    f'\breve g'8 f' a'4 a' \bar "|"
    c''\breve d''8 c'' a' g' f'4 \bar "|"
    g'\breve a'8 g' f' d'4 d' \bar "||" \break

    \mark "Ps 2A" % A1
    a'\breve b'8 a' \parenthesize a' g' a' \bar "|"
    a'\breve g'8 f' g'[ a'] g'4 \bar "||"
    a'\breve g'4^"flexa" \bar "||" \break

    \mark "Ps 2B" % A2
    a'\breve g'8 a' f'4 \bar "|"
    a'\breve f'8 g' a' g'4 f' \bar "||" \break

    \mark "Ps 2C" % A4
    a'\breve g'8 b' a' g'4 f' \bar "|"
    g'\breve d'8 f' e'4 f' \bar "||" \break

    \mark "Ps 2D" % A5
    a'\breve g'8 a' b'4 b' \bar "|"
    a'\breve b'8 a' g'4 f' \bar "||" \break

    \mark "Ps 2E" % A8
    a'\breve b'8 a' g' a'4 \bar "|"
    g'\breve a'8 g' f' b' a' g'4 \bar "||" \break

    \mark "Ps 2F" % A10
    a'\breve b'8 a' c'' b' a'4 \bar "|"
    g'\breve f'8 g' a'8 d' \bar "||"
}

% vim: tw=80 ts=4 sts=4 sw=4 et
