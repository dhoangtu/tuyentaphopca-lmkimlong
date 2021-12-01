% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Biểu Dương Uy Phong" }
  poet = "Ý: Tv. 56"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  R2*2
  r4 c8 a' ~ |
  a a bf16 (a) f8 |
  g2 |
  c8 b!16 (c) d8 d |
  d e ([f]) d |
  c2 |
  r4 c8 ^> c ^> |
  f f4 e8 |
  d4 r8 a |
  c c4 bf8 |
  a4 c,8 c |
  g'4. g8 |
  f2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  R2*2
  r4 c8 f ~ |
  f f g16 (f) d8 |
  e2 |
  e8 d16 (e) f8 fs |
  g g ([a]) f |
  e2 |
  d8 d g4 |
  a4. c8 |
  b!4 r8 d, |
  g g4 d8 |
  c4 c8 c |
  d4. e8 |
  c2
}

nhacDiepKhucBas = \relative c {
  f8 e16 (f) g8 g |
  g a4 f8 |
  c2 ~ |
  c ~ |
  c8 c c' (bf) |
  a4 d, |
  g g, |
  c c8 ^> c ^> |
  f4. e8 |
  d4 d |
  g g8 (f) |
  e4 e |
  f a8 a |
  <bf g>4. <bf c,>8 |
  <a f>2
}

nhacPhienKhuc = \relative c' {
  r4 f8 f |
  d4. a8 |
  f'4 \tuplet 3/2 { a8 bf a } |
  g4. f16 g |
  a8 g e c |
  d2 ~ |
  d4 \tuplet 3/2 { d'8 d d } |
  bf8. a16 \tuplet 3/2 { d8 d
    \slashedGrace { cs16 (} d8) } |
  e4 r8 e16 f |
  d4. d16 e |
  c8 c bf g |
  a2 ~ |
  a
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lạy Chúa, xin hãy biểu dương.
  Xin biểu dương uy phong khắp cõi trời.
  Và dọi chiếu ánh thiên nhan,
  dọi chiếu ánh thiên nhan đầy mặt đất, Chúa ơi.
}

loiDiepKhucAlto = \lyricmode {
  Lạy Chúa, xin hãy biểu dương.
  Xin biểu dương uy phong khắp cõi trời.
  Và dọi chiếu ánh thiên nhan,
  dọi chiếu ánh thiên nhan đầy mặt đất, Chúa ơi.
}

loiDiepKhucBas = \lyricmode {
  Xin biểu dương uy phong khắp cõi trời,
  lạy Chúa xin biểu dương mọi nơi,
  Và dọi chiếu, dọi chiếu thần nhan,
  chiếu lọi thần nhan đầy mặt đất Ngài ơi.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Thương con này, lạy Chúa xin xót thương con,
  này con đến nương tựa vào Ngài.
  Dưới bóng cánh Ngài hồn con xin ẩn náu
  cho tới khi qua hết muôn tai họa sầu đau.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Con kêu cầu, lạy Chúa Thiên Chúa muôn cao,
  hãy ban xuống ân lộc dồi dào.
  Đây bao quân thù hằng vây quanh gầm thét,
  xin Chúa thương mau kíp ra tay độ trì con.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Con dâng lời cảm mến ngay trước chư dân,
  từ muôn nước con họa nhịp đàn.
  Ôi yêu thương Ngài vượt xa cung trời thẳm,
  đức tín trung vun vút cao hơn cả ngàn mây.
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
  \key f \major \time 2/4
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
        \key f \major \time 2/4 \nhacPhienKhuc
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
