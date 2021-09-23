% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lời Ca Dâng Chúa" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  b8 c b a |
  gs4 e8 e |
  a2 |
  a8. a16 f'8 e |
  d4 d8 d ~ |
  d2 |
  c8. c16 c8 d |
  e4 c8 b ~ |
  b2 |
  b8 c b a |
  gs4 e8 e |
  a2 \bar "||"
}

nhacDiepKhucBas = \relative c' {
  R2
  e8 (d) c b |
  a4 e8 e |
  f4 d8 e |
  f4 fs8 g ~ |
  g4 r8 gs |
  a4 a8 b |
  c4 a8 gs ~ |
  gs! gs a d, |
  e8. c16 d8 d |
  e4 <b' e,>8 <b e,> |
  <c a,>2
}

nhacPhienKhuc = \relative c' {
  e8 g g gs |
  a4. a8 |
  a c4 d8 |
  e4 e8 d16 (c) |
  a8 (b) c16 (b) a8 |
  b2 |
  gs8 e b' c16 (b) |
  a2 \bar "|."
}

% Lời
loiDiepKhucSop = \lyricmode {
  Con tiến dâng lên Ngài ngàn lời ca,
  vì tình Chúa yêu con bao la.
  Vì lượng từ bi Chúa hải hà,
  con tiến dâng lên Ngài ngàn lời ca.
}

loiDiepKhucBas = \lyricmode {
  Tiến dâng lên Ngài ngàn lời ca,
  Ngài yêu con bao la.
  Vì lượng từ bi Chúa hải hà,
  từ bi hải hà nguyện dâng lên Chúa ngàn lời ca.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Lời ca con dâng Chúa là tình yêu chan chứa,
  mỗi hơi thở mỗi nhịp tim, xin trọn câu mến tin.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Lời ca con dâng Chúa là vòng tay vươn tới,
  nối muôn người khắp mọi nơi, chung tình yêu Chúa thôi.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Lời ca con dâng Chúa tựa trầm hương thơm ngát,
  muốn bay tòa tới trời cao, thay tình yêu hiến trao.
}

loiPhienKhucBon = \lyricmode {
  \set stanza = "4."
  Lời ca con dâng Chúa là đời con trao hiến,
  lúc gian khổ lúc bình yên, đoan nguyện son sắt liên.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  print-page-number = #f
  %page-count = #1
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
    \new Lyrics \lyricsto beSop \loiPhienKhucBon
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
