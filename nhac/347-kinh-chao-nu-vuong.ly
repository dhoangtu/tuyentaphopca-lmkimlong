% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #5 "Kính Chào Nữ Vương" }
  composer = " "
  arranger = " "
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
    (make-pango-font-tree
      "Liberation Serif"
      "Liberation Serif"
      "Liberation Serif"
      (/ 20 20)))
  page-count = #1
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c' {
  \partial 4 f8_( e) d4. g8 |
  f_( e) f g |
  a4 a8 a |
  d4 g, |
  a f8 e |
  d4 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \skip 4
  \skip 4. cs8 |
  d4 d8 d |
  cs4 e8 f |
  g^( f) e^( d)
  e^( f) d cs |
  d4
}

nhacDiepKhucBas = \relative c {
  \partial 4 f8( e) |
  d4. a8 |
  g4 g8 g |
  f4 as8 bf |
  g4 g |
  f f8 f |
  b4
}

% Nhạc phiên khúc
nhacPhienKhuc = \relative c' {
  \partial 4 f8( e) |
  d c d bf |
  a2 |
  a8 a' g( f) |
  e4. bf'8 |
  a g e f |
  d4 \bar "||"
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Kính chào Nữ Vương Mẹ nhân ái,
  là nguồn sống, niềm vui suối ngọt ngào.
}

% Lời phiên khúc
loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Chúng con, con cháu E -- và
  ở chốn lưu đày ngước trông lên Mẹ khấn cầu.
}

loiPhienKhucHai = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  \set stanza = #"2."
  Chúng con trong vũng lệ sầu,
  ngày thành cơ cầu,
  ngước trông xin Mẹ chữa bầu.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Đến sau qua kiếp lưu đày,
  Mẹ dẫn lên trời ngắm trông Con Mẹ suốt đời.
}

% Dàn trang
\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
      }
      <<
        \clef "treble"
        \new Voice = beSop {
          \voiceOne \key f \major \time 2/4 \nhacDiepKhucSop
        }
        \new Voice = beAlto {
          %\override NoteHead.font-size = #-2
          \voiceTwo \key f \major \time 2/4 \nhacDiepKhucAlto
        }
        \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        \magnifyStaff #(magstep +1)
      }
      <<
        \clef "bass"
        \new Voice = beBas {
          \key f \major \time 2/4 \nhacDiepKhucBas
        }
    >>
  >>
  \layout {
    \override Lyrics.LyricText.font-size = #+2.2
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
        \key f \major \time 2/4 \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
