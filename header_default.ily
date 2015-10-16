%{
    Header formatting for tunes. Customize to get your name in the tag line.
%}

\version "2.16.0"

today = #(strftime "%B %e, %Y" (localtime (current-time)))

\paper {
    raggedbottom = ##t
    tagline = \markup {
        \line {
			"Cpl ET de Boone, Seaforths of Holland,"
            \concat { "(rev. " \today ")" }
        }
    }
    scoreTitleMarkup = \markup {
        \override #'(baseline-skip . 3)
        \column {
            \fill-line {
                \column {
                    \large \bold \fromproperty #'header:title
                    \bold \fromproperty #'header:subtitle
                }
                \fromproperty #'header:meter
                \line { \fromproperty #'header:composer " " \italic \fromproperty #'header:arranger }
            }
            $(if (not (ly:get-option 'without-comment))
                 (markup #:justify-field 'header:comment)
                 (markup))
        }
    }
}
