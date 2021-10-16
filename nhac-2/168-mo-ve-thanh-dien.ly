% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mơ Về Thánh Điện" }
  poet = "Thơ: Lm. Xuân Ly Băng"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  f4 \tuplet 3/2 { f8 e d } |
  d4 r8 bf'16 bf |
  bf4 \tuplet 3/2 { bf8 bf g } |
  \slashedGrace { g16 ( } a4) r8 a |
  g4. f16 g |
  e4 r8 a, |
  f'4. e16 d |
  d4 r8 \bar "||" \break
  d16 f |
  d8. d16 \tuplet 3/2 { bf'8 bf a } |
  g4 r8 d'16 d |
  bf8. d16 \tuplet 3/2 { c8 g g } |
  \slashedGrace { g16 ( } a2) |
  g8 a4 f8 |
  bf2 |
  f'8 \slashedGrace { f16 ( } e4) cs8 |
  d2 \bar "||" \break
  
  r8 g,4 a8 |
  bf4 \tuplet 3/2 { g8 e g } |
  a4 r8 f |
  g8. a,16 \tuplet 3/2 { e'8 f e } |
  d2 ~ |
  d4 r8 a' |
  d4 \tuplet 3/2 { d8 bf a } |
  g2 |
  r8 g g gs |
  a8. f16 g8 e |
  d2 ~ |
  d4 \bar "||" \break
  
  r4 |
  r \tuplet 3/2 { bf'8 ^> d ^> bf ^> } |
  a4. a16 f |
  g4 \tuplet 3/2 { g8 f a } |
  e2 ~ |
  e4 r |
  r \tuplet 3/2 { bf'8 ^> g ^> g ^> } |
  d'4. d16 b! |
  \slashedGrace { b!16 ( } a4) \tuplet 3/2 { fs8 fs a } |
  g e4 fs8 |
  fs2 ~ |
  fs4 r8 \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  fs16 fs
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
  
  fs4 \tuplet 3/2 { fs8 g fs } |
  e2 ~ |
  e8 b' b a |
  gs4. gs8 |
  a fs4 d8 |
  b'4 r8 b16 cs |
  cs4. cs8 |
  d d cs (d) |
  e4. fs16 d |
  b4. cs8 |
  a g4 cs8 |
  d2 ~ |
  d ~ |
  \partial 4 d4 \bar "|." \break
  
  \key f \major
  f,4 \tuplet 3/2 { f8 e d } |
  d4 r8 bf'16 bf |
  bf4 \tuplet 3/2 { bf8 bf a } |
  g4 r8 g |
  a4. f16 g |
  g4 r8 a |
  f4. g16 e |
  d4 r8 fs16 fs
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  f4 \tuplet 3/2 { f8 e d } |
  d4 r8 g16 g |
  g4 \tuplet 3/2 { g8 g e } |
  \slashedGrace { e16 ( } f4) r8 f |
  e4. d16 d |
  a4 r8 a |
  d4. cs16 d |
  d4 r8
  d16 f |
  d8. d16 \tuplet 3/2 { bf'8 bf a } |
  g4 r8 a16 a |
  g8. f16 \tuplet 3/2 { e8 d d } |
  cs2 |
  d8 cs4 d8 |
  d4 (f8 g) |
  a bf4 g8 |
  f2 |
  r8 g4 a8 |
  bf4 \tuplet 3/2 { g8 e g } |
  a4 r8 f |
  g8. a,16 \tuplet 3/2 { e'8 f e } |
  d2 ~ |
  d4 r8 a' |
  f4 \tuplet 3/2 { a8 g f } |
  e2 |
  r8 e e e |
  f8. d16 e8 cs |
  d2 ~ |
  d4
  \tuplet 3/2 { f8 ^> g ^> f ^> } |
  e4 \tuplet 3/2 { e8 ^> f ^> d ^> } |
  cs4 d8. a16 |
  d8 d e (d) |
  cs2 ~ |
  cs4 \tuplet 3/2 { e8 ^> a, ^> a ^> } |
  f'4 d |
  \tuplet 3/2 { a'8 ^> d, ^> d ^> } g8 b,!16 d |
  cs4 \tuplet 3/2 { d8 d d } |
  b! cs4 cs8 |
  d2 ~ |
  d4 r8
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  d16 d |
  d4 \tuplet 3/2 { d8 e d } |
  cs2 ~ |
  cs8 g' fs fs |
  e4. d8 |
  cs d4 d8 |
  d4 r8 e16 e |
  e4. a8 |
  a a a4 |
  gs (a8) a16 fs |
  e4. e8 |
  d g4 e8 |
  fs2 ( |
  g |
  fs4)
  
  \key f \major
  f4 \tuplet 3/2 { f8 e d } |
  d4 r8 g16 g |
  g4 \tuplet 3/2 { g8 g f } |
  e4 r8 e |
  f4. d16 c |
  bf4 r8 a |
  d4. cs16 cs |
  d4 r8 d16 d
}

nhacDiepKhucBas = \relative c {
  R2*7
  r4 r8
  d16 f |
  d8. d16 \tuplet 3/2 { bf'8 bf a } |
  g4 r8 fs16 fs |
  g8. d16 \tuplet 3/2 { a'8 bf bf } |
  a4. (g8) |
  f e4 d8 |
  g2 |
  f8 g4 a8 |
  <a d,>2 |
  
  R2*11
  r4
  r |
  \tuplet 3/2 { a8 ^> bf ^> a ^> } g4 |
  \tuplet 3/2 { g8 ^> a ^> g ^> } f d |
  bf4 (g) |
  a2 ~ |
  a4 r |
  \tuplet 3/2 { d'8 ^> d, ^> d ^> } g4 |
  fs4 g8 g |
  a4 \tuplet 3/2 { d,8 d fs } |
  e a <a a,>4 |
  <a d,>2 ~ |
  <a d,>4 r8
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  d,16 d |
  d4 \tuplet 3/2 { d8 cs d } |
  a'2 ~ |
  a8 e ds ds |
  e4. e8 |
  a, d4 fs8 |
  g4 r8 gs16 gs |
  a4. g8 |
  fs fs fs4 |
  e8 ([d cs]) d16 fs |
  g4. g8 |
  fs e <a a,>4 |
  <a\=1^( d,\=2_(>2 |
  <bf\=1) \=1^( d,\=2) \=2_(> |
  <a\=1) d,\=2)>4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ôm cây lục huyền cầm ta rung lên muôn cung sầu thảm.
  Nước mây cùng ảm đạm trời đất chung đau thương.
  Đàn ơi đàn, đàn khóc mãi quê hương.
  Khóc thánh điện đã xa rồi một thuở.
  Thương ôi sầu nhớ nước cũ thành xưa.
  Hồn ta khóc hay đàn ta khóc.
  Cả hai cùng lăn lóc chưa bưa.
  Sầu ơi chín cả một mùa khi ta nhớ tới ngày xưa huy hoàng.
  Ta bước hiên ngang giữa đoàn dân trong ngày lễ trọng.
  Tiến lên đền thánh Chúa dân ta đầy trời hoan hỉ nhạc mê ly.
  Như nai kia bên suối canh thâu
  khát nước trăng vàng một đêm hè rực nóng.
  Hồn ta đây khao khát Chúa hằng sống.
  Biết bao giờ thấy Mặt Chúa hồn ơi!
  Ôm cây lục huyền cầm ta rung lên muôn cung ca ngợi.
  Đưa mắt nhìn xa xăm
  thánh đô khói sương mờ.
  Như nai
}

loiDiepKhucAlto = \lyricmode {
  Ôm cây lục huyền cầm ta rung lên muôn cung sầu thảm.
  Nước mây cùng ảm đạm trời đất chung đau thương.
  Đàn ơi đàn, đàn khóc mãi quê hương.
  Khóc thánh điện đã xa rồi một thuở.
  Thương ôi sầu nhớ nước cũ thành xưa.
  Hồn ta khóc hay đàn ta khóc.
  Cả hai cùng lăn lóc chưa bưa.
  Sầu ơi chín cả một mùa khi ta nhớ tới ngày xưa huy hoàng.
  Ta bước hiên ngang,
  ta bước hiên ngang giữa đoàn dân trong lễ trọng.
  Tiến về đền thánh cùng tiến về đền thánh của Chúa ta
  đầy trời hoan hỉ nhạc mê ly.
  Như nai kia bên suối canh thâu
  khát nước trăng vàng một đêm hè rực nóng.
  Hồn ta đây khao khát Chúa hằng sống.
  Biết bao giờ thấy Mặt Chúa hồn ơi!
  Ôm cây lục huyền cầm ta rung lên muôn cung ca ngợi.
  Đưa mắt nhìn xa xăm
  thánh đô khói sương mờ.
  Như nai
}

loiDiepKhucBas = \lyricmode {
  Đàn ơi đàn, đàn khóc mãi quê hương.
  Khóc thánh điện đã xa rồi một thuở.
  Thương ôi sầu nhớ thành cũ nước xưa.
  Ta bước hiên ngang, ta bước hiên ngang ngày lễ trọng.
  Tiến về đền thánh đền thánh Chúa ta
  đầy trời hoan hỉ hát mê ly.
  Như nai kia bên suối canh thâu khát nước trăng sáng
  suốt đêm hè rực nóng.
  Hồn ta đây khát khao Chúa vắng trông.
  Thiệt ao ước thấy Mặt Ngài hồn ơi!
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
  page-count = #3
}

TongNhip = {
  \key f \major \time 2/4
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
