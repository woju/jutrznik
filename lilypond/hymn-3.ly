\version "2.18.2"
\include "settings.ily"
\language "deutsch"

<<
    \new Staff \with {\consists "Time_signature_engraver"} {
        \clef treble
        \key f \major
        \compoundMeter #'((6 8) (2 4))

        % melodia 1
        \repeat unfold 2 {
           f'8 c' f' g' f' g' a'[ b'] g'4 |
        }
        a'8 g' a' b' a' b' c''4 a' |
        g'8 a' b' a' g' f' g'4 f' | \bar "||" \cadenzaOn e' f' \bar "||"
    }
    \new Lyrics \lyricmode {
        \skip4*20 A4 -- men.
    }
>>

% vim: tw=80 ts=4 sts=4 sw=4 et
