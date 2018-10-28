\version "2.18.2"
\include "settings.ily"
\language "deutsch"

\layout{
    ragged-right = ##t
    ragged-last = ##f
}

<<
    \new Staff {
        \clef treble
        \key a \minor \cadenzaOn

        a'\breve a'4 \bar "||" \break
        a'\breve g'8 a' h' a' \bar "|"
        a'\breve g'8 a' g'4 e' \bar "||"
    }
    \new Lyrics \lyricmode {
        Ojcze\breve nasz,4
        któ\breve -- ryś8 jest w_nie -- bie,
        święć_się\breve i8 -- mię Two4 -- je,
    }
    \new Lyrics \lyricmode {
        \skip4*19
        przyjdź_kró\breve le8 -- stwo Two4 -- je,
    }
    \new Lyrics \lyricmode {
        \skip4*9
        bądź\breve wo8 -- la Two -- ja,
        jako_w_niebie,_tak\breve i8 na Zie4 -- mi.
    }
    \new Lyrics \lyricmode {
        \skip4*9
        Chleba_naszego\breve po8 -- wsze -- dnie -- go
        \skip\breve daj8 nam dzi4 -- siaj
    }

    \new Lyrics \lyricmode {
        \skip4*9
        i_odpuść_nam\breve na8 -- sze wi -- ny,
        jako_i_my_odpuszczamy\breve  8  % NOTE before 8 is non-breaking space
    }
    \new Lyrics \lyricmode {
        \skip4*19
        naszym\breve wi8 -- no -- waj4 -- com,
    }

%   \new Lyrics \lyricmode {
%       \skip4*9
%       i_odpuść_nam\breve na8 -- sze wi -- ny,
%       jako_i_my_odpuszczamy_naszym\breve wi8 -- no -- waj4 -- com,
%   }

    \new Lyrics \lyricmode {
        \skip4*9
        i_nie_wódź_nas_na\breve po8 -- ku -- sze -- nie,
        ale_nas_zbaw\breve o8 -- de złe4 -- go.
    }
>>

% vim: tw=80 ts=4 sts=4 sw=4 et
