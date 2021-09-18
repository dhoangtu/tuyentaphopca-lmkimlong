% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ngày Về 3" }
  poet = "Tv. 125"
  composer = "Thơ dịch: Lm. Kim Long"
  arranger = "Phổ nhạc: Lm. Ngô Duy Linh"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 8 e8 |
  a r a c16 d |
  e2 ~ |
  e8 r e r |
  e r d c |
  e r d r |
  c r c16 (e d) c |
  a2 ~ |
  a4 r8 g |
  e r g a16 c |
  d2 ~ |
  d8 r d r |
  d r d r |
  d e e g |
  g r e r |
  d r d16 (g e) d |
  c2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r8
  r c e r |
  e g16 a a4 ~ |
  a8 r g r |
  a g c a |
  d r c r |
  g r g16 (c a) g |
  e8 e e16 (g) e8 |
  d2 ~ |
  d8 d c r |
  c e16 g a4 ~ |
  a8 r a r |
  a g g c |
  c c c e |
  e r c r |
  c r c16 (d c) a |
  g2
}

nhacDiepKhucBas = \relative c {
  r8
  r4. a8 |
  c8 r c d16 e |
  g4 d8 c |
  e r e e |
  g g g g |
  e r d16 (g e) d |
  c8 c c16 (e d) c |
  g2 ~ |
  g8 r r c |
  g r g a16 c |
  d8 d d d |
  e r e r |
  g g g g |
  a a c c |
  g r g16 (e d) g |
  c,2
}

nhacPhienKhuc = \relative c'' {
  d8. f16 f8 d |
  g, c c8. \slashedGrace { c16 ( } d16) |
  a2 |
  g4. d8 |
  g (a4) d8 |
  b2 |
  g8 e4 e8 |
  c'4. a8 |
  d,2 |
  d8. d16 e8 e |
  #(define afterGraceFraction (cons 1 2))
  g4 \afterGrace a ({
    g16 a)}
  b2 ~ |
  b4. \bar "|."
}

% Lời
loiDiepKhucSop = \lyricmode {
  Người đi, đi trong nước mắt nước mắt
  đem hạt giống gieo trên, trên nương đồng.
  Khi về, về miệng vui ca vui ca,
  vui ca tay ôm bó lúa, lúa thơm, thơm hương nồng.
}

loiDiepKhucAlto = \lyricmode {
  Người đi đi trong nước mắt đem, đem hạt giống
  hạt giống gieo trên, trên nương đồng
  gieo trên nương đồng.
  Khi về, về miệng vui ca vui ca tay ôm bó lúa,
  tay ôm bó lúa, lúa thơm, thơm hương nồng.
}

loiDiepKhucBas = \lyricmode {
  Người đi, đi trong nước mắt đem hạt giống,
  đem hạt giống gieo gieo gieo trên,
  trên nương đồng, gieo trên nương đồng.
  Khi về, về miệng vui ca tay ôm bó lúa,
  bó lúa, tay ôm bó lúa, bó lúa lúa thơm,
  thơm hương nồng.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Khi Chúa dẫn lưu đồ Si -- on trở về.
  Ta tưởng trong giấc mơ.
  Tiếng cười đầy ứ trong miệng.
  và làn môi đẹp lời ca hát.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Nghe tiếng nói dân ngoại hoang mang thán phục:
  Bao kỳ công khắp nơi.
  Chúa thực hiện giữa dân Người.
  Lòng mừng vui tràn ngập ân phúc.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Ai bước xuống nương đồng gieo trong bóng sầu.
  Sẽ gặt trong sướng vui.
  Lúa vàng từng nhánh tươi mầu.
  Ngàn lời ca hòa nhịp chân bước.
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
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
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
    %\override Lyrics.LyricText.font-size = #+2.2
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
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
