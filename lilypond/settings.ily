\version "2.18.2"

% most of this is stolen from https://wiki.contextgarden.net/LilyPond

#(set-global-staff-size 14)

#(define default-toplevel-book-handler
    print-book-with-defaults-as-systems)

#(define toplevel-book-handler
    (lambda ( . rest)
        (set! output-empty-score-list #f)
        (apply print-book-with-defaults rest)))

#(define toplevel-music-handler
    (lambda ( . rest)
        (apply collect-music-for-book rest)))

#(define toplevel-score-handler
    (lambda ( . rest)
        (apply collect-scores-for-book rest)))

#(define toplevel-text-handler
    (lambda ( . rest)
        (apply collect-scores-for-book rest)))

#(set! output-empty-score-list #t)

\paper {
    #(define fonts (make-pango-font-tree
        "Linux Libertine"
        "Linux Biolinum"
        "monospace"
        (/ staff-height pt 20)))

    #(define dump-extents #t)
    indent = 0
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    print-page-number = ##f
    line-width = 110
    oddFooterMarkup  = ##f
    oddHeaderMarkup  = ##f
    bookTitleMarkup  = ##f
    scoreTitleMarkup = ##f

}

\layout {
    \override Staff.NoteHead.style = #'altdefault
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \set Staff.autoBeaming = ##f

    \context {
        \Score
        \remove "Bar_number_engraver"
    }

    \context {
        \Staff
        \remove "Time_signature_engraver"
    }
}

% vim: tw=80 ts=4 sts=4 sw=4 et
