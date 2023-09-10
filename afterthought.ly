#(define (tie::tab-clear-tied-fret-numbers grob)
   (let* ((tied-fret-nr (ly:spanner-bound grob RIGHT)))
      (ly:grob-set-property! tied-fret-nr 'transparent #t)))

\version "2.14.0"
\paper {
   indent = #0
   print-all-headers = ##t
   ragged-right = ##f
   ragged-bottom = ##t
}
\layout {
   \context { \Score
      \override MetronomeMark #'padding = #'5
   }
   \context { \Staff
      \override TimeSignature #'style = #'numbered
      \override StringNumber #'transparent = ##t
   }
   \context { \TabStaff
      \override TimeSignature #'style = #'numbered
      \override Stem #'transparent = ##t
      \override Beam #'transparent = ##t
      \override Tie  #'after-line-breaking = #tie::tab-clear-tied-fret-numbers
   }
   \context { \TabVoice
      \override Tie #'stencil = ##f
   }
   \context { \StaffGroup
      \consists "Instrument_name_engraver"
   }
}
TrackAVoiceAMusic = #(define-music-function (parser location inTab) (boolean?)
#{
   \tempo 4=112
   \clef #(if $inTab "tab" "treble_8")
   \key aes \major
   \time 4/4
   \oneVoice
   <des\4>8 <f'\2>8 <ees'\2>8 <f'\2>8 <des'\2>8 <f'\2>8 <ees'\2>8 <f'\2>8 
   <ees'\2 aes,\5 >8 <des'\2>8 <c'~\2>2 <c'\2>4 
   <ees\4>8 <g'\1>8 <f'\1>8 <g'\1>8 <bes'\1>4 <g'\1>4 
   <f'\1 bes,\5 >1 
   <f\4>8 <a'\1>8 <g'\1>8 <a'\1>8 <bes'~\1>4 <bes'\1>8 <a'\1>8 
   <g'~\1 ees\4 >8 <g'\1>4 <f'\2>8 <d'\2 bes,\5 >2 
   <c'\2 aes,\5 >2. <c'\2>4 
   <bes\3 bes,\5 >1 
   <ges\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <bes,\5>8 <bes\3>8 <des'\2>8 <bes\3>8 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <f'\1>8 <ees'\1>8 
   <ges\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <bes,\5>8 <bes\3>8 <des'\2>8 <bes\3>8 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <f'\1>8 <ees'\1>8 
   <ges\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <bes,\5>8 <bes\3>8 <des'\2>8 <bes\3>8 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <f'\1>8 <ees'\1>8 
   <ges\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <bes,\5>8 <bes\3>8 <des'\2>8 <bes\3>8 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <f'\1>8 <ees'\1>8 
   <des\4>8 <f'\2>8 <ees'\2>8 <f'\2>8 <des'\2>8 <f'\2>8 <ees'\2>8 <f'\2>8 
   <ees'\2 aes,\5 >8 <des'\2>8 <c'~\2>2 <c'\2>4 
   <ees\4>8 <g'\1>8 <f'\1>8 <g'\1>8 <bes'\1>4 <g'\1>4 
   <f'\1 bes,\5 >1 
   <f\4>8 <a'\1>8 <g'\1>8 <a'\1>8 <bes'~\1>4 <bes'\1>8 <a'\1>8 
   <g'~\1 ees\4 >8 <g'\1>4 <f'\2>8 <d'\2 bes,\5 >2 
   <c'\2 aes,\5 >2 <ees'\2>4 <c'\2>4 
   <bes,~\5 aes\3 >8_"H" <bes~\3 bes,~\5 >2. <bes\3 bes,\5 >8 
   <ges\4>8\staccato <bes\3>8\staccato <des'\2>8\staccato <bes\3>8\staccato <bes,\5>8\staccato <bes\3>8\staccato <des'\2>8\staccato <bes\3>8\staccato 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <f'\1>8 <ees'\1>8 
   <ges\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <bes,\5>8 <bes\3>8 <des'\2>8 <bes\3>8 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <f'\1>8 <ees'\1>8 
   <ges\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <bes,\5>8 <des'\2>8 <bes\3>8 <bes\3>8 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <f'\1>8 <ees'\1>8 
   <ges\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <bes,\5>8 <bes\3>8 <des'\2>8 <bes\3>8 
   <ees\4>8 <bes\3>8 <des'\2>8 <bes\3>8 <ges\3>8 <bes\3>8 <ees'\1>4 
   <des\4>8 <f\4>8 <ees\4>8 <f\4>8 <des\4>8 <f\4>8 <ees\4>8 <f\4>8 
   <ees\4>8 <des\4>8 <c~\5>2 <c\5>4 
   <ees\4>8 <g'\1>8 <f'\1>8 <g'\1>8 <bes'\1>4 <g'\1>4 
   <f'\1 bes,\5 >1 
   <f\6>8  \ottava #1 <a''\1>8 \ottava #0  \ottava #1 <g''\1>8 \ottava #0  \ottava #1 <a''\1>8 \ottava #0  \ottava #1 <bes''~\1>4 \ottava #0  \ottava #1 <bes''\1>8 \ottava #0  \ottava #1 <a''\1>8 \ottava #0 
    \ottava #1 <g''\1 ees\6 >4. \ottava #0  \ottava #1 <f''\2>8 \ottava #0  \ottava #1 <d''\2 bes,\6 >2 \ottava #0 
    \ottava #1 <aes,~\5 c'''\1 >2. \ottava #0  \ottava #1 <c'''\1>4 \ottava #0 
    \ottava #1 <bes''~\1 bes,\6 >2. \ottava #0  \ottava #1 <bes,\5 bes''\1 >4 \ottava #0 
   r2. r4 
   r1 
   \bar "|."
   \pageBreak
#})
TrackAVoiceBMusic = #(define-music-function (parser location inTab) (boolean?)
#{
#})
TrackALyrics = \lyricmode {
   \set ignoreMelismata = ##t
   
   \unset ignoreMelismata
}
TrackAStaff = \new Staff <<
   \context Voice = "TrackAVoiceAMusic" {
      \TrackAVoiceAMusic ##f
   }
   \context Voice = "TrackAVoiceBMusic" {
      \TrackAVoiceBMusic ##f
   }
>>
TrackATabStaff = \new TabStaff \with { stringTunings = #`( ,(ly:make-pitch 0 1 SHARP) ,(ly:make-pitch -1 5 SHARP) ,(ly:make-pitch -1 3 SHARP) ,(ly:make-pitch -1 0 SHARP) ,(ly:make-pitch -2 4 SHARP) ,(ly:make-pitch -2 1 SHARP) ) } <<
   \context TabVoice = "TrackAVoiceAMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceAMusic ##t
   }
   \context TabVoice = "TrackAVoiceBMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackAVoiceBMusic ##t
   }
>>
TrackAStaffGroup = \new StaffGroup <<
   \TrackAStaff
   \TrackATabStaff
>>
TrackBVoiceAMusic = #(define-music-function (parser location inTab) (boolean?)
#{
   \tempo 4=112
   \clef #(if $inTab "tab" "treble_8")
   \key c \major
   \time 4/4
   \oneVoice
   <c,~\5 g~\1 cis~\2 >1 
   <g\1 cis\2 c,\5 >1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r4 r4 r4 <d,\3>4 
   <fis,\1>8 <c,\5>8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <\parenthesize fis,\1 c,\5 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <fis,\1>16 <\parenthesize fis,\1 c,\5 >16 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <fis,\1>16 <\parenthesize fis,\1 c,\5 >16 <fis,\1 d,\3 >16 <\parenthesize d,\3>16 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5>8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <\parenthesize fis,\1 c,\5 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <fis,\1>16 <\parenthesize fis,\1 c,\5 >16 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <c,~\5 g~\1 cis~\2 >1 
   <g\1 cis\2 c,\5 >1 
   r1 
   r1 
   r1 
   r1 
   r1 
   r4 r4 r4 <d,\3>4\staccato 
   <fis,\1>8 <c,\5>8 <d,\3 fis,\1 c,\5 >8 <fis,\1 c,\5 >16 <fis,\1 c,\5 d,\3 >16 <fis,\1 c,\5 >8 <c,\5 fis,\1 >8 <fis,\1 d,\3 c,\5 >8 <fis,\1 c,\5 >8 
   <fis,\1>8 <c,\5>8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <\parenthesize fis,\1 c,\5 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <fis,\1>16 <\parenthesize fis,\1 c,\5 >16 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <ais,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <fis,\1>16 <\parenthesize fis,\1 c,\5 >16 <fis,\1 d,\3 >16 <\parenthesize d,\3>16 <fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <ais,\1>8 
   <fis,\1>8 <c,\5>8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 <fis,\1>8 <\parenthesize fis,\1 c,\5 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1>8 
   <fis,\1>8 <c,\5 fis,\1 >8 <fis,\1 d,\3 >8 <\parenthesize fis,\1 c,\5 >8 <fis,\1 c,\5 >8 <fis,\1>8 <fis,\1 c,\4 >8 <\parenthesize fis,\1 d,\3 >16 <ais,\1 d,\3 c,\5 >16 
   <c,~\5 g~\1 cis~\2 >1-^ 
   <g~\1 cis~\2 c,~\5 >1 
   <g\1 cis\2 c,\5 >1 
   r1 
   r1 
   r1 
   r1 
   r4 r4 \times 2/3 {<\parenthesize d,\4>16 <\parenthesize d,\4>16 <\parenthesize d,\4>16 } <d,\4>8 <d,\4>8 <d,\4>16 <d,\4>16 
   r1 
   r1 
   \bar "|."
   \pageBreak
#})
TrackBVoiceBMusic = #(define-music-function (parser location inTab) (boolean?)
#{
#})
TrackBLyrics = \lyricmode {
   \set ignoreMelismata = ##t
   
   \unset ignoreMelismata
}
TrackBStaff = \new Staff <<
   \context Voice = "TrackBVoiceAMusic" {
      \TrackBVoiceAMusic ##f
   }
   \context Voice = "TrackBVoiceBMusic" {
      \TrackBVoiceBMusic ##f
   }
>>
TrackBTabStaff = \new TabStaff \with { stringTunings = #`( ,(ly:make-pitch -5 0 NATURAL) ,(ly:make-pitch -5 0 NATURAL) ,(ly:make-pitch -5 0 NATURAL) ,(ly:make-pitch -5 0 NATURAL) ,(ly:make-pitch -5 0 NATURAL) ,(ly:make-pitch -5 0 NATURAL) ) } <<
   \context TabVoice = "TrackBVoiceAMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackBVoiceAMusic ##t
   }
   \context TabVoice = "TrackBVoiceBMusic" {
      \removeWithTag #'chords
      \removeWithTag #'texts
      \TrackBVoiceBMusic ##t
   }
>>
TrackBStaffGroup = \new StaffGroup <<
   \TrackBStaff
   \TrackBTabStaff
>>
\score {
   \TrackAStaffGroup
   \header {
      title = "" 
      composer = "" 
      instrument = "Track 1" 
   }
}
\score {
   \TrackBStaffGroup
   \header {
      title = "" 
      composer = "" 
      instrument = "Track 2" 
   }
}
