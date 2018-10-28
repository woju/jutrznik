\version "2.18.2"
\include "settings.ily"
\language "deutsch"

<<
    \new Staff {
        \clef treble
        \key f \major \time 8/4

        % melodia 3
        \repeat unfold 2 {
            f'4 a'8 a' g'4 b' a'8 b' c'' a' a'4 g' |
        }
        c''4 a'8 a' a'4 g' c''8 c'' a' a' a'4 g' |
        a'8 b' c'' f' f'4 f' \bar "||" e' f' \bar "||"
    }
    \new Lyrics \lyricmode {
        \skip1*7 A4 -- men.
    }
>>

% vim: tw=80 ts=4 sts=4 sw=4 et
