\version "2.18.2"
\include "settings.ily"
\language "deutsch"

<<
    \new Staff {
        \clef treble
        \key f \major \cadenzaOn

        % melodia 4
        a'\breve g'8 f' g'4 g' \bar "|"
        b'\breve a'8 g' a'4 a' \bar "|" \break
        c''\breve b'8 a' b'4 b' \bar "|"
        a'\breve g'8 f' g'4 f' \bar "||"
        e'4 f' \bar "||"
    }
    \new Lyrics \lyricmode {
        \skip4*44 A4 -- men.
    }
>>

% vim: tw=80 ts=4 sts=4 sw=4 et
