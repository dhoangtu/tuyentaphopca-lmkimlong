% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lạy Bà Chúa" }
  poet = "Lời: Thánh thi CGKPV"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 r4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar ".|"
  R2.
  b8 b c4 b8 b16 (a) |
  g8 g d'2 ~ |
  d4 a8 b c4 |
  b8 (c) d (e) a, c |
  b2 b16 (c) a8 |
  g2 g8 g |
  b (c) d (e) d4 ~ |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 2/4
  d4 b8. e16 |
  e4 c8. f16 |
  f4. e8 |
  e d4 g8 |
  c,2 ~ |
  c4 \bar "|." \break
  
  r4 |
  r8 a ^> a ^> r |
  r d ^> d ^> r |
  r c b c |
  a2 ~ |
  a8 g e'16 (f) e8 |
  d2 ~ |
  d4 g,8. g16 |
  c4. g8 |
  af ef4 d8 |
  c2 ~ |
  c4 r |
  r8 d ^> d ^> r |
  r c a'8. g16 ^> |
  g8 ^> g e'8. d16 ^> |
  d2 ^> |
  r8 b4 b8 |
  d2 ( |
  c4) r
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r4 |
  r g8 g a4 |
  g8 g16 (f) e8 c f4 ~ |
  f8 d g4. (a16 g) |
  fs8 g a (g) d f! |
  g e f (d) c a' |
  gs2 r4 |
  r e16 (f) e8 d4 ~ |
  d8 e g gs a (c) |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 2/4
  b8. a16 g8. b16 |
  c8. b16 a8. c16 |
  d8. a16 d8 c |
  c <b g>4 <b f>8 |
  <g e>2 ~ |
  <g e>4
  
  r4 |
  r8 c, ^> c ^> r |
  r f ^> f ^> r |
  r e d e |
  c2 ~ |
  c8 c c'16 (d) c8 |
  b2 ~ |
  b4 g8. g16 |
  c4. g8 |
  af ef4 d8 |
  c2 ~ |
  c4 r |
  r8 b ^> b ^> r |
  r c f8. f16 ^> |
  e8 ^> e c'8. b16 ^> |
  a2 ^> |
  r8 d,4 d8 |
  f2 ( |
  e4) r
}

nhacDiepKhucBas = \relative c {
  e8 e |
  f4 e8 e16 (d) c8 c |
  g'4. a8 g g16 (a) |
  c4. ( d16 c) b8 c |
  d4 c8 d16 (e) a,8 a |
  g4. gs8 a a |
  e2. ~ |
  e4 c'16 (d) c8 b4 ~ |
  b8 a b e, f fs |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 2/4
  g4 g8. e16 |
  c4 a'8. f16 |
  d4. d8 |
  g g4 g8 |
  c2 ~ |
  c4
  
  c,8 f |
  f4. e8 |
  d d d (e) |
  g4. c,8 |
  f f e f |
  d e c c |
  g'2 ~ |
  g4 g8. g16 |
  c4. g8 |
  af ef4 d8 |
  c2 ~ |
  c4 c8. ^> c16 |
  g'4 g8. ^> g16 |
  c2 ~ |
  c8 c c,8. e16 ^> |
  f2 ^> |
  r8 g4 g8 |
  c,2 ~ |
  c4 e8 e
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ôi Trinh Nữ khoác ánh hồng rực sáng
  mười hai sao là mũ ngọc tinh tuyền,
  Mảnh trăng ngà làm bệ đặt gót sen
  Rực rỡ quá, rực rỡ quá vinh quang Ngài chói lọi.
  chiến thắng, chiến thắng lên ngự ngai vàng
  cạnh Đức Ki -- tô,
  Làm trạng sư cho chúng tử cậy nhờ.
  Tung hô trời đất tung hô,
  trời đất tung hô: Lạy Bà Chúa.
}

loiDiepKhucAlto = \lyricmode {
  Ôi Trinh Nữ khoác ánh hồng rực sáng,
  rực sáng mười hai sao, mười hai sao
  là mũ ngọc tinh tuyền,
  Mảnh trăng ngà làm bệ đặt gót sen,
  Ôi rực rỡ quá, ôi rực rỡ quá
  rực rỡ vinh quang Ngài chói lọi.
  chiến thắng, chiến thắng lên ngự ngai vàng
  cạnh Đức Ki -- tô,
  Làm trạng sư cho chúng tử cậy nhờ.
  Tung hô trời đất tung hô,
  trời đất tung hô: Lạy Bà Chúa.
}

loiDiepKhucBas = \lyricmode {
  Ôi Trinh Nữ khoác ánh hồng rực sáng,
  ánh hồng rực sáng mười hai sao là mũ ngọc tinh tuyền
  là mũ tinh tuyền,
  Mảnh trăng ngà làm bệ, làm bệ gót sen,
  Rực rỡ lạ, rực rỡ lạ vinh quang Ngài dọi chới.
  Ngài chiến thắng tử thần và tội lỗi
  Vẻ vang lên ngự ngai vàng với Vua Ki -- tô,
  Làm trạng sư cho chúng tử cậy nhờ.
  Trời cùng đất, trời cùng đất,
  đất trời tung hô: Tấu Chúa Bà.
  
  Ôi Trinh
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
  \key c \major \time 3/4
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
