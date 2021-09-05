% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ai Được Lên Núi Thánh" }
  composer = "Ý: Tv. 14"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  R2
  r4 r8 f |
  g a c, (d16 f) |
  g4. g8 |
  c4. d8 |
  d2 |
  d4 c16 (f d c) |
  a4 g16 (c a g) |
  f4. g16 (f) |
  d8 (c) d (f16 g) |
  a8 a g16 (c a g) |
  f2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  R2
  r4 r8 f |
  g a c, (d16 f) |
  g4. g8 |
  g4. g8 |
  a2 ~ |
  a4 r |
  f d8 (f16 d) |
  c4 c8 (d) |
  a4 a8 (c) |
  f f d (c) |
  a2
}

nhacDiepKhucBas = \relative c' {
  c4 g16 (c a g) |
  f4. f8 |
  g a c, (d16 f) |
  g4. g8 |
  a4. a8 |
  d,2 ~ |
  d4 r |
  r2
  a4 a16 (g a c) |
  d8 d g,4 |
  c c |
  f,2
}

nhacPhienKhucSop = \relative c' {
  f8 a g16 (f) d8 |
  c4. g'8 |
  d16 ^(c) g8 bf ^(c) |
  c2 |
  g'8 c a g |
  f4. d16 ^(f) |
  d8 c f (g) |
  a2 \bar "||"
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Là ai sẽ được lên, được lên núi thánh.
  Ai sẽ được, sẽ được sống ở nhà Chúa đến muôn đời.
}

loiDiepKhucAlto = \lyricmode {
  Là ai sẽ được lên, được lên núi thánh.
  Ai sẽ được sống ở nhà Chúa đến muôn đời.
}

loiDiepKhucBas = \lyricmode {
  Ai sẽ được là ai sẽ được lên, được lên núi thánh.
  Ai sẽ sống ở nhà Chúa trọn đời.
}

% Lời phiên khúc
loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Là những ai ngay lành bước theo đường công minh.
  Lời nói luôn chân thành chẳng đặt điều gian dối.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Là những ai nhân hiền, chẳng vu vạ, đổ oan.
  Chẳng ghét khinh thân thuộc, chẳng mưu hại bạn hữu.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Là những ai trung thành, chẳng khi nào đảo điên.
  Mặc những ai hư hèn, kinh tôn người sợ Chúa.
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
  page-count = #1
  %print-page-number = #f
  %system-system-spacing = #'((basic-distance . 33))
  %score-system-spacing = #'((basic-distance . 33))
}

% Thiết lập tông và nhịp
TongNhip = { \key f \major \time 2/4 }

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef "treble"
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
        \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
        \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
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
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.NonMusicalPaperColumn.page-break-permission = ##f
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice \TongNhip \nhacPhienKhucSop
      \new NullVoice = nhacThamChieu \nhacPhienKhucSop
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucMot
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucHai
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucBa
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
