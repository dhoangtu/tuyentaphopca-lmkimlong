% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Theo Mẹ Về Trời" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 8 c16 c |
  <<
    {
      c8 ^> a a ^> d16 d |
      d8 ^> b
    }
    \\
    {
      <g e>8 r <f c> r |
      <a f> r
    }
  >>
  <b g d>4 |
  <<
    {
      r8 g ^> a ^> b ^>
    }
    \\
    {
      r4 <f d>
    }
  >>
  <c' g e>8 ^>
  
  c b c |
  e,4 (g) ~ |
  g8 f d e |
  e4 r8 c'16 c |
  c8 c e b |
  a4 r8 b16 b |
  b8 b d a |
  g2 |
  \slashedGrace { g16 ( } a8.) f16 d8 b |
  g'4. gs8 |
  a2 ~ |
  a4 r |
  r8 e' ds e |
  b4 (c) ~ |
  c8 b a d |
  d4 r8 e16 e |
  e8 e g d |
  c4 r8 d16 d |
  d8 d f c |
  b2 |
  \slashedGrace { gs16 (} a8.) f16 d8 b |
  g'4. g8 |
  d' d4 d8 |
  c2 ~ |
  c4 r8 c16 d |
  b2 ~ |
  b4 r |
  g8. g16 f'8 f |
  r e c d |
  d4 r8 \slashedGrace { e,16 ( } g8) |
  d' (c4) b8 |
  c2 ~ |
  c4 \tuplet 3/2 { c8 c c } |
  a4 \tuplet 3/2 { a8 a b } |
  b4 \tuplet 3/2 { b8 b b } |
  g4 \tuplet 3/2 { g8 g a } |
  a4 r |
  R2*2
  r8 c a c |
  b2 ~ |
  b4 r |
  r r8 d,16 df |
  c4 r |
  g'8. g16 a8 g |
  r e' e c |
  d4 r8 e ~ |
  e c c d16 (c) |
  g2 ~ |
  g4 r |
  r8 c16 a a8 c |
  g4 r |
  R2
  r4 r8 e' |
  e4 c8 f |
  f4 r8 d |
  d g4 b,8 |
  c2 ~ |
  c4 e ~ |
  e8 c b c |
  e,4 (g) ~ |
  g8 f d e |
  e4 r8 c'16 c |
  c8 c a a |
  a4 r8 d16 d |
  d8 d b b |
  b2 ~ |
  b4 r |
  R2*2
  \slashedGrace { g16 ( } a8.) f16 d8 b16 b |
  g'4. g16 g |
  d'8 d4 d16 (e) |
  c2 ~ |
  c ~ |
  c ~ |
  c4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r8 |
  R2*3
  r8 e d e |
  c4 (b) ~ |
  b8 d b c |
  c4 r8 g'16 gs |
  a8 a gs gs |
  e4 r8 f16 fs |
  g8 g fs fs |
  d2 |
  \slashedGrace { g16 ( } a8. ) f16 d8 b |
  g'4. e16 (d) |
  c2 ~ |
  c4 r |
  r8 c' b c |
  g4 g8 a |
  f4 e8 a16 (c) |
  b4 r8 b16 b |
  c8 c b b |
  a4 r8 a16 a |
  b8 b a a |
  gs2 |
  \slashedGrace { gs16 (} a8.) f16 d8 b |
  g'4. g8 |
  a <b g>4 <b f>8 |
  <g e>2 ~ |
  <g e>4 r8 c16 d |
  b2 ~ |
  b4 r |
  g8. g16 a8 a |
  r g a a |
  g4 r8 \slashedGrace { e16 ( } g8) |
  f4. f8 |
  e2 ~ |
  e4 \tuplet 3/2 { c'8 c c } |
  a4 \tuplet 3/2 { a8 a a } |
  gs4 \tuplet 3/2 { b8 b b } |
  g4 \tuplet 3/2 { g8 g g } |
  fs4 r |
  R2*2
  r8 e c e |
  d2 ~ |
  d4 r |
  r r8 d16 df |
  c4 r |
  g'8. g16 f8 e |
  r8 g gs a |
  b4 r8 c ~ |
  c e, e16 (d) c8 |
  b2 ~ |
  b4 r |
  r8 a'16 f f8 a |
  e4 r8 f |
  f4 d8 g |
  g4. g8 |
  g4 e8 a |
  a4 r8 af |
  g g4 f8 |
  e2 ~ |
  e4 e' ~ |
  e8 e, d e |
  c4 (b) ~ |
  b8 d b c |
  c4 r8 e16 e |
  e8 e e g |
  fs4 r8 fs16 fs |
  fs8 fs fs a |
  gs2 |
  gs8. a16 a8 a |
  e f4 e8 |
  d2 |
  \slashedGrace { g16 ( } a8.) f16 d8 b16 b |
  g'4. g16 g |
  a8 <b g>4 <b g>8 |
  e,4. e8 |
  f f4 f16 (g) |
  e2 ~ |
  e4 r
}

nhacDiepKhucBas = \relative c {
  r8 |
  <c c,> ^> r <f f,> r |
  <d d,> ^> r <g g,> <f f,> |
  <e e,>4 ^> <d d,> ^> |
  <c c,>8 r r4 |
  r8 a' g a |
  e f g4 |
  c,4 r8 e16 e |
  d8
  <<
    {
      a'8 b d |
      c4 r8 d16 d |
      g,8 g a c |
      b2
    }
    {
      f8 e e |
      a4 r8 d,16 d |
      e8 e d d |
      g2
    }
  >>
  \slashedGrace { g16 ( } a8.) f16 d8 b |
  g'4. e8 |
  f2 ~ |
  f8 c' b c |
  e,4 (g) ~ |
  g8 f e f |
  d4 a'8 fs |
  g4 r8 g16 gs |
  a8 a e e |
  f4 r8 f16 fs |
  g8 g d d |
  e2 |
  \slashedGrace { gs16 ( } a8.) f16 d8 b |
  g'4. e8 |
  f g4 g8 |
  c,2 ~ |
  c4 r |
  r r8 a'16 af |
  g4 r |
  a8. a16
  <<
    {
      c8 c |
      r c c c |
      b4 r8 c |
    }
    {
      f,8 f |
      r c f fs |
      g4 r8 e |
    }
  >>
  <<
    {
      \voiceOne
      a4. g8 |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d (f4) g8 |
    }
  >>
  \oneVoice
  <g c,>2 ~ |
  <g c,>4 \tuplet 3/2 { e8 e e } |
  f4 \tuplet 3/2 { f8 f d } |
  e4 \tuplet 3/2 { ds8 ds ds } |
  e4 \tuplet 3/2 { e8 e c } |
  d4 r8 e |
  g ^> g ^> f8. d16 |
  b8 d c4 ~ |
  c f8 (d) |
  g2 ~ |
  g4 r8 g16 a |
  f2 ~ |
  f4 r |
  g8. g16 b,8 c |
  r c e \slashedGrace { e16 ( } a8) |
  g2 ~ |
  g ~ |
  g4 r8 g ^> ~ |
  g f d g |
  c,2 ~ |
  c4 r |
  r r8 b' |
  b4 g8 c |
  c4.
  <<
    {
      c8 |
      c4 r8 c |
      b b4 d8 |
      c2 ~ |
      c4
    }
    {
      f,8 |
      f4 r8 f |
      g g4 g8 |
      <g c,>2 ~ |
      <g c,>4
    }
  >>
  r4 |
  R2
  r8 a g a |
  e f g4 |
  c, r8 c16 c |
  a8 a c cs |
  d4 r8 d16 d |
  b8 b d ds |
  e2 ~ |
  e4 c'8 a |
  c4. c8 |
  g2 |
  \slashedGrace { g16 ( } a8.) f16 d8 b16 b |
  g'4. e16 e |
  f8 g4 g8 |
  <<
    {
      g4. g8 |
      a a4 af8 |
      g2 ~ |
      g4
    }
    {
      c,4. c8 |
      f f4 f8 |
      c2 ~ |
      c4
    }
  >>
  r4
}

% Lời
loiDiepKhucSop = \lyricmode {
  \repeat unfold 4 { _ }
  Chim bồ câu nhỏ của lòng ta ơi!
  Bay cao lên trong ánh sáng trời,
  bay cao lên trong ánh sáng trời.
  Giữa một chiều vàng thu lộng lẫy
  chim bồ cây nhỏ của lòng ta ơi!
  Ca vang lên trong ánh sáng trời,
  ca vang lên trong ánh sáng trời
  Cõi thiên không chiều nay, chiều nay reo hoa lệ.
  Em thấy chi một Bà áo trắng
  lẫm liệt uy nghi tỏa sáng từ bi.
  Lên trong hương trời nhạc dồn chơi vơi,
  lên trong hương trời nhạc dồn chơi vơi.
  Bay lượn bên Người em nghe gì
  Vầng nguyệt huy hoàng dưới đóa trà mi
  chín tầng trời mở rộng.
  Chín phẩm thần náo động.
  Tung hô nhạc tung hô
  nồng nhiệt biết chừng mô.
  Hỡi chim bồ câu nhỏ của lòng ta ơi!
  Bay đi em theo Mẹ về trời,
  bay đi em theo Mẹ về trời.
  cõi thiên cung một mùa Xuân,
  một mùa Xuân bao xán lạn.
}

loiDiepKhucAlto = \lyricmode {
  Chim bồ câu nhỏ của lòng ta ơi!
  bay cao lên trong ánh sáng trời,
  bay cao lên trong ánh sáng trời.
  Giữa một chiều vàng thu lộng lẫy
  chim bồ cây nhỏ bồ câu nhỏ lòng ta ơi!
  Ca vang lên trong ánh sáng trời,
  ca vang lên trong ánh sáng trời.
  Cõi thiên không chiều nay, chiều nay reo hoa lệ.
  Em thấy chi một Bà áo trắng
  lẫm liệt uy nghi tỏa sáng từ bi.
  Lên trong hương trời nhạc dồn chơi vơi,
  lên trong hương trời nhạc dồn chơi vơi.
  Bay lượn bên Người em nghe gì
  Vầng nguyệt huy hoàng dưới đóa trà mi
  chín tầng trời mở rộng.
  Chín phẩm thần náo động
  tung hô nhạc tung hô.
  Tung hô nhạc tung hô
  nồng nhiệt biết chừng mô.
  Hỡi chim bồ câu nhỏ của lòng ta ơi!
  Bay đi em theo Mẹ về trời,
  bay đi em theo Mẹ về trời.
  Chiều hôm nay thu trần gian ảm đạm
  cõi thiên cung một mùa Xuân,
  một mùa Xuân bao xán lạn mua Xuân bao xán lạn.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 8 { _ }
  Chim bồ câu nhỏ của ta ơi!
  Bay cao lên trong ánh sáng trời,
  bay cao lên trong ánh sáng trời.
  Giữa một chiều vàng thu lộng lẫy.
  Chim bồ câu nhỏ chim bồ câu nhỏ của ta ơi!
  Ca vang lên trong ánh sáng trời,
  ca vang lên trong ánh sáng trời.
  Cõi thiên không chiều nay, chiều nay reo hoa lệ.
  Em nghe gì một Bà áo trắng
  lẫm liệt uy nghi tỏa rạng từ bi.
  Lên trong hương trời nhạc dồn chơi vơi,
  lên trong hương trời nhạc dồn chơi vơi.
  Mười hai tinh đẩu bay lượng bên Người bên Người.
  Em thấy chi
  Vầng Nguyệt huy hoàng kìa hoa trà mi
  chín phẩm thần náo động.
  Tung hô nhạc tung hô,
  tung hô nồng nhiệt biết chừng mô.
  Chim bồ câu nhỏ của ta ơi!
  Bay đi em theo Mẹ về trời,
  bay đi em theo Mẹ về trời.
  Nay trần gian ảm đạm
  cõi thiên cung một mùa Xuân,
  một mùa Xuân bao xán lạn,
  mùa Xuân bao xán lạn.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 20\mm
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
  \set Timing.beatStructure = #'(1 1)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
