\version "2.18.2"
\include "settings.ily"
\language "deutsch"

<<
    \new Staff {
        \clef treble
        \key f \major \cadenzaOn

        % melodia 2
        f'\breve g'8 g'4 \bar "|"
        a'\breve b'8 b'4 \bar "|" \break
        c''\breve b'8 a' d'' c''4 \bar "|"
        b'\breve a'8 g' f'[ e'] f'4 \bar "||"
        e'4 f' \bar "||"
    }
    \new Lyrics \lyricmode {
        \skip8*81 A4 -- men.
    }
>>

% vim: tw=80 ts=4 sts=4 sw=4 et
