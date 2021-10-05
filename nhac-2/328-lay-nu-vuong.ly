% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lạy Nữ Vương" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \partial 4. e8 a (bf16 a) |
  g4. g8 |
  f4. d16 d |
  e8 g f e |
  a4. a8 |
  b!8. d16 b (a) g8 |
  g4 a16 (g) e8 |
  e2 ~ |
  e4 r8 g |
  f8. f16 a8 e |
  d2 ~ |
  d8 a f'8. f16 |
  d8 g a8. e16 |
  e2 ~ |
  e4 r |
  R2*3 \bar "||"
  
  \key d \major
  r4 r8 a |
  fs4. d8 |
  d g e4 |
  b'8 a r cs ~ |
  cs d d b |
  g4 r8 cs ~ |
  cs d d a |
  fs4 r8 b |
  b g e4 |
  g8 a4 b8 |
  a2 ~ |
  a4 r |
  R2*3
  r8 a a g |
  fs4. fs8 ~ |
  fs e e e |
  a d,4. f!4. f8 |
  f!2 |
  e8 e4 d8 |
  g4 r8 d' |
  b b b4 ~ |
  b8 g e g |
  a4. g8 |
  fs2 |
  e |
  d ~ |
  d4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \partial 4. e8 a (bf16 a) |
  g4. g8 |
  f4. d16 d |
  e8 e d d |
  cs4. d8 |
  g8. fs16 g8 d |
  e4 d8 d |
  cs2 ~ |
  cs4 r8 g' |
  f8. f16 a8 e |
  d2 ~ |
  d8 a d8. c16 |
  bf8 d d8. d16 |
  cs2 ~ |
  cs4 r |
  R2*3
  
  \key d \major
  r4 r8 cs |
  d4. a8 |
  b b cs4 |
  g'8 fs r e ~ |
  e fs g fs |
  e4 r8 a ~ |
  a g fs e |
  d4 r8 b' |
  b g e4 |
  g8 fs ([e]) d |
  cs2 ~ |
  cs4 r |
  R2*3
  r8 cs d e |
  d4. d8 ~ |
  d d cs cs |
  cs d4. |
  f!4. f8 |
  f!2 |
  e8 e4 d8 |
  g4 r8 fs |
  g g g4 ~ |
  g8 e d d |
  cs4. cs8 |
  d2 |
  d4 (cs) |
  d2 ~ |
  d4 r
}

nhacDiepKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  r4. |
  r8 a e' (f16 e) |
  d4 r |
  r8 c16 c d8 bf' |
  a8. e16 bf'8 f |
  g8. d16 e8 b! |
  c4 bf8 g |
  a2 ~ |
  a4 r |
  R2
  r8 g' a g |
  f4 d |
  g8 g f8. (g16) |
  a2 ~ |
  a4 r8 bf |
  a g16 (a) d8 e |
  e4. d8 |
  cs8. d16 bf (a) g8 |
  
  \key g \major
  a2 ~ |
  a4 r |
  R2
  r8 d a4 |
  a8. d16 b4 ~ |
  b8 c! a4 |
  fs8. b,16 b8 cs |
  d4 r8 b' |
  b g e4 |
  e8 d4 g,8 |
  a2 |
  a'8 g4 f!16 (e) |
  d4. e8 |
  e8. f!16 c!8 a |
  a'2 ~ |
  a4 r |
  r8 b b a |
  g4 (a) |
  a,8 d4. |
  f!4. f8 |
  f!2 |
  e8 e4 d8 |
  g4 r8 d |
  g g e4 ~ |
  e8 e g b |
  a4. a8 |
  b2 |
  g4 (a) |
  <a fs d>2 ~ |
  <a fs d>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lạy Nữ Vương nhân lành,
  Mẹ làm cho chúng con được sống,
  được vui (i a) được cậy thân lạy Mẹ.
  Chúng con con cháu E -- và ở chốn khách đày
  kêu đến cùng Bà.
  Hỡi ôi! Bà là chữa bầu chúng con,
  xin ghé mắt nhân từ, xin ghé mắt nhân từ,
  ghé mắt nhân từ thương xem chúng con.
  Thấy Chúa Giê -- su Con lòng Mẹ gồm phúc lạ.
  Ôi khoan thay, nhân thay, dịu thay.
  Thánh Ma -- ri -- a trọn đời đồng trinh.
  A -- men. A -- men.
}

loiDiepKhucBas = \lyricmode {
  Mẹ nhân lành, Mẹ làm cho chúng con được sống,
  được vui (i a) được cậy thân lạy Mẹ.
  Con cháu E -- va ở đây kêu lên Bà.
  Chúng con ở nơi khóc lóc than thở kêu khẩn Bà thương.
  Hỡi ôi! Xin ghé mắt hỡi ôi!
  Xin tỏ mặt nhân từ, ghé mắt nhân từ thương xem đoàn con.
  Đến sau khỏi đày xin cho chúng con được thấy.
  Thấy Chúa Giê -- su thực lạ.
  Ôi khoan thay, nhân thay, dịu thay.
  Thánh Ma -- ri -- a trọn đời đồng trinh.
  A -- men. A -- men.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
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
  %page-count = #2
  %systems-per-page = 5
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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
\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
