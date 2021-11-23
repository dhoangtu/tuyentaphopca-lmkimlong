% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mẹ Nhân Lành" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4 d8 a' |
  g (f) e f16 (e) |
  d2 ~ |
  d4 r8 d |
  a'16 (g) f8 g16 (f) e8 |
  e2 ~ |
  e4 r |
  r c'16 (bf) a8 |
  a2 ~ |
  a4 r8 g |
  a2 ~ |
  a4 r |
  r a8 (g) |
  f e16 (f) g8 a |
  a4 r8 a |
  a g f g16 (f) |
  e4. e8 |
  f4 a8 (bf16 a) |
  g4 g8 (a16 g) |
  f4 f8 (g16 f) |
  e2 ~ |
  e4 r |
  r8 g4 a16 (g) |
  f8 e4 f16 (e) |
  d2 ~ |
  d4 f8 g16 (f) |
  e8 f g bf \bar "||"
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  a2 ~ |
  a4 r |
  R2
  r8. a16 a8 b |
  a2 ~ |
  a4 r8 d |
  d cs d r |
  r4 a8 (g) |
  fs2 ~ |
  fs ~ |
  fs4 r |
  r fs8 (g) |
  a4 a8 a |
  a2 ~ |
  a4 d ~ |
  d cs |
  d2 ~ |
  d4 r8 e16 (d) |
  cs8 d16 (cs) b4 ~ |
  b r8 bf |
  a a d4 ~ |
  d cs |
  d2 ~ |
  d4 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \partial 4 d8 a' |
  g (f) e f16 (e) |
  d2 ~ |
  d4 r8 d |
  f16 (e) d8 e16 (d) d8 |
  cs2 ~ |
  cs4 r |
  r a'16 (g) f8 |
  f2 ~ |
  f4 r8 d |
  c2 ~ |
  c4 r |
  r f8 (e) d8 c16 (d) e8 f |
  f4 r8 f |
  f e d e16 (d) |
  c4. c8 |
  d4 a'8 (bf16 a) |
  g4 g8 (a16 g) |
  f4 f8 (g16 f) |
  cs2 ~ |
  cs4 r |
  r8 e4 f16 (e) |
  d8 a4 f'16 (e) |
  bf2 ( |
  a4) f'8 g16 (f) |
  e8 d e d |
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  cs2 ~ |
  cs4 r |
  R2
  r8. fs16 fs8 g |
  fs2 ~ |
  fs4 r |
  r8 e e d |
  d4. cs8 |
  d2 ~ |
  d ~ |
  d4 fs |
  fs8 (e) d4 |
  cs2 ~ |
  cs4 cs8 cs |
  d4 r |
  e4. e8 |
  fs2 ~ |
  fs4 r |
  R2
  r8 a16 (g) fs8 g16 (fs) |
  e4 r |
  g2 |
  fs2 ~ |
  fs4
}

nhacDiepKhucBas = \relative c {
  r4 |
  R2
  r4 d8 (f) |
  a bf16 (a) g4 ~ |
  g8 bf a g |
  a4 r8 bf16 (a) |
  g4 g16 (f) e8 |
  e4 a, |
  d d' |
  c8 c d16 (c) bf8 |
  a g bf16 (a) g8 |
  f f g16 (f) e8 |
  d2 ~ |
  d4 r8 d' |
  d c bf c16 (bf) |
  a2 ~ |
  a8 g16 (f) e8 a, |
  d4 a |
  bf4. a8 |
  d4. bf8 |
  a4 a8 a |
  a'16 (g) f8 a (bf16 a) |
  g4 r |
  d8 e16 (d) c4 |
  r8 g'4 a16 (g) |
  f8 g a bf16 (a) |
  g4. g8 |
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  a2 ~ |
  a4 a8 (g) |
  fs e fs16 (e) d8 |
  d2 ~ |
  d4 d |
  d'8 d d16 (cs) b8 |
  a4 a16 (g) fs8 |
  fs4 fs16 (e) a8 |
  d,2 ~ |
  d4 d8 d |
  d4. d8 |
  b4. bf8 |
  a2 ~ |
  a4 a'8 g |
  fs4 r |
  g4. a8 |
  d,4. d'16 (cs) |
  b8 cs16 (b) a4 ~ |
  a8 r g (b16 g) |
  e4 d8 (e16 d) |
  d4 r |
  e (a,) |
  d2 ~ |
  d4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lạy Nữ Vương Mẹ nhân lành, được sống,
  được vui, được cậy.
  Thân lạy Mẹ, lạy Mẹ Chúng con ở nơi khóc lóc,
  khóc lóc than thở kêu khẩn Bà thương.
  Hỡi ôi, hỡi ôi, hỡi ôi,
  xin ghé mặt, xin ghé mặt,
  xin ghé mặt thương xem chúng con.
  Xin cho chúng con thấy Chúa Giê -- su phúc lạ.
  dịu thay, ôi khoan thay, ôi dịu thay
  Thánh Ma -- ri -- a trọn đời đồng trinh.
  A -- men.
}

loiDiepKhucAlto = \lyricmode {
  Lạy Nữ Vương Mẹ nhân lành, được sống,
  được vui, được cậy.
  Thân lạy Mẹ, lạy Mẹ Chúng con ở nơi khóc lóc,
  khóc lóc than thở kêu khẩn Bà thương.
  Hỡi ôi, hỡi ôi, hỡi ôi,
  xin ghé mặt, xin ghé mặt,
  xin ghé mặt thương xem chúng con.
  Xin cho chúng con
  thấy Chúa Giê -- su thực lạ.
  nhân thay dịu thay, ôi nhân thay, ôi dịu thay
  Thánh Ma -- ri -- a.
  A -- men.
}

loiDiepKhucBas = \lyricmode {
  Làm cho chúng con sống vui cậy trông.
  Chúng con thân lạy Mẹ, lạy Mẹ.
  Chúng con con cháu E -- và ở chốn khách đầy
  kêu đến cùng Bà
  Khóc lóc than thở kêu khẩn
  kêu khẩn Bà thương.
  Hỡi ôi, hỡi ôi, hỡi ôi.
  Lạy Bà chữa bầu chúng con.
  Xin ghé mặt xin ghé mặt thương xem chúng con, đoàn con.
  Đến sau qua khỏi đời này được thấy Đức Chúa Giê -- su
  Con lòng Bà gồm phúc lạ.
  Ôi khoan thay, nhân thay, dịu thay,
  ôi nhân thay, ôi dịu thay,
  Thánh Ma -- ri -- a trọn đời,
  trọn đời. 
  A -- men.
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
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
