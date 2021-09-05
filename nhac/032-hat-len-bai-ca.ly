% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hát Lên Bài Ca" }
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Đổi kích thước nốt cho bè phụ
notBePhu =
#(define-music-function (font-size music) (number? ly:music?)
   (for-some-music
     (lambda (m)
       (if (music-is-of-type? m 'rhythmic-event)
           (begin
             (set! (ly:music-property m 'tweaks)
                   (cons `(font-size . ,font-size)
                         (ly:music-property m 'tweaks)))
             #t)
           #f))
     music)
   music)

nhacPhienKhucSop = \relative c'' {
  \partial 4. d8 b16 (a) g8 |
  <<
    {
      \voiceOne
      a2 ~ |
      a4
    }
    \new Voice = "bePhuMot" \notBePhu -2 {
	    \voiceTwo
      c,4\rest d8 d |
      g4
    }
  >>
  \oneVoice
  <<
    {
      d'8 d |
      b4 g |
      
    }
    \notBePhu -2 {
      fs8 fs |
      g4 e |
      
    }
  >>
  <<
    {
      \voiceOne
      a8 b16 (a)
    }
    \new Voice = "bePhuHai" \notBePhu -2 {
	    \voiceTwo
      d,8 d
    }
  >>
  \oneVoice
  <<
    {
      g8 a |
      b2 ~ |
      b8
    }
    \notBePhu -2 {
      b, d |
      g2 ~ |
      g8
    }
  >>
  d' b16 (a) g8 |
  <<
    {
      \voiceOne
      a2 ~ |
      a4
    }
    \new Voice = "bePhuBa" \notBePhu -2 {
	    \voiceTwo
      r4 d,8 d |
      g4
    }
  >>
  \oneVoice
  <<
    {
      d'8 d |
      b b c b |
      a a b a |
      g2 ~ |
      g8
    }
    \notBePhu -2 {
      fs8 fs |
      g g a g |
      d d d c |
      c2 ~ |
      c8
    }
  >>
  \bar "||" \break
  
  \partial 4. d8 g fs |
  e8 e a g |
  fs fs b a |
  g g
  <<
    {
      c b |
      a4 a8 as |
      b2 ~ |
      b8
    }
    \notBePhu -2 {
      e, g |
      d4 d8 d |
      g2 ~ |
      g8
    }
  >>
  \oneVoice
  <<
    {
      b [c b] |
      a a b a |
      g g a g |
      fs fs g fs |
      e4 e8 ef |
      d2 ~ |
      d8
    }
    \notBePhu -2 {
      d' [e d] |
      c c d c |
      b b c b |
      a a b a |
      g4 g8 g |
      a2 _\markup { \huge \italic "xa." } ~|
      a8
    }
  >>
  \bar "|."
}

nhacDiepKhucSopHai = \relative c'' {
  <>^\markup { \halign #-0.1 \bold \huge \raise #5 "Điệp khúc 3 bè" }
  \partial 4. d8 b16 (a) g8 |
  a2 ~ |
  a4 d8 d |
  b4 g |
  a8 g16 (a) g8 a |
  b2 ~ |
  b8 d b16 (a) g8 |
  a2 ~ |
  a4 d8 d |
  b b c b |
  a a b a |
  g2 ~ |
  g8 \fermata \bar "|."
}

nhacDiepKhucTenorHai = \relative c' {
  \partial 4. r8 r4
  r4 c8 cs |
  d8 r d r |
  d4 b |
  e8 e e e |
  ds4 b8 g |
  fs4 r |
  r c'8 cs |
  d r d r |
  d d e d |
  c (cs) d (c) |
  b4 c8 c |
  b \fermata
}

nhacDiepKhucBasHai = \relative c' {
  \partial 4. r8 r4 |
  r4 a8 a16 (g) |
  fs8 r fs8 r |
  e4 e |
  c8 c c c |
  b4 g8 g |
  d'4 r |
  r a'8 a16 (g) |
  fs8 r fs r |
  g g fs g |
  g4 <fs d> |
  <g e> <e c>8 <e c> |
  <d g,>
}

loiPhienKhucSopMot = \lyrics {
  \set stanza = "ĐK."
  Hát lên bài ca,
  hãy hát lên bài ca chúc tụng Thiên Chúa.
  Sáng trong niềm tin,
  khắp thế nhân chung tiếng hoan ca
  dâng Chúa thiên đình.
  
  \set stanza = "1-3."
  Về đây muôn người nhạc tấu vang trời
  cùng hát muôn lời hòa tiếng nơi nơi
  tung hô Chúa.
  
  <<
    {
      \set stanza = "1."
      Trong nắng ban mai,
      hoa lá khoe tươi chim hót vui say,
      muôn khúc tân ca  mau vang hòa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "2."
      Trong bóng đêm thanh,
      tinh tú long lanh,
      mây gió đưa nhanh,
      muôn khúc tân ca mau vang hòa.
    }
    \new Lyrics {
      \set associatedVoice = "beSop"
      \set stanza = "3."
      Trong ánh xuân sang,
      trong gió đông tan,
      qua khắp không gian,
      muôn khúc tân ca mau vang hòa.
    }
  >>
}

loiBePhuMot = \lyrics {
  \override Lyrics.LyricText.font-shape = #'italic
  hỡi ngàn dân
}

loiBePhuBa = \lyrics {
  \override Lyrics.LyricText.font-shape = #'italic
  một niềm tin
}

loiDiepKhucSopBaBe = \lyrics {
  \set stanza = "ĐK."
  Hát lên bài ca,
  hãy hát lên bài ca chúc tụng Thiên Chúa.
  Sáng trong niềm tin,
  khắp thế nhân chung tiếng hoan ca
  dâng Chúa thiên đình.
}

loiDiepKhucBasBaBe = \lyrics {
  Hỡi ngàn dân
  ca lên khúc ca chúc tụng Thiên Chúa,
  hỡi ngàn dân.
  Một niềm tin
  muôn dân chung lời hoan ca
  dâng kính Chúa thiên đình.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 60\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  system-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  score-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  %page-count = 2
}

TongNhip = {
  \key g \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice = "beSop" { \TongNhip \nhacPhienKhucSop }
        \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
        \new Lyrics \lyricsto "bePhuMot" \loiBePhuMot
        \new Lyrics \lyricsto "bePhuBa" \loiBePhuBa
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Staff.TimeSignature.transparent = ##t
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = #"S"
    } <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSopHai
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSopBaBe
    >>
    \new Staff \with {
      instrumentName = #"T"
    } <<
     \new Voice = "beTenor" {
       \clef "violin_8" \TongNhip \nhacDiepKhucTenorHai
     }
        \new Lyrics \lyricsto beTenor \loiDiepKhucBasBaBe
      >>
    \new Staff \with {
      instrumentName = #"B"
    } <<
     \new Voice = "beBas" {
       \clef bass \TongNhip \nhacDiepKhucBasHai
     }
        \new Lyrics \lyricsto beBas \loiDiepKhucBasBaBe
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
  }
}
