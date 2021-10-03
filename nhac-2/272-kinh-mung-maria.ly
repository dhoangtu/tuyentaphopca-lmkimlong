% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Kính Mừng Maria" }
  composer = "Lm. Kim Long"
  tagline = ##f
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

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 8 c8 |
  f,8. (e16) f8 g |
  a4 d8 b! |
  c4. d16 (c) |
  b!4. c8 |
  g8. g16 g8 g |
  a2 ~ |
  a4 r |
  R2
  a8 bf16 a g8 bf |
  c4 r8 c |
  f f4 c8 |
  a8. bf16 d8 c |
  g4 e8 f |
  g4. g8 |
  c c a (g) |
  f2 \bar "||"
  
  <>^\markup { \halign #-0.5 \bold "CODA" }
  f2 ~ ( |
  f4 g) |
  f2 ~ |
  f4 r \bar "|." \break
  
  a8 (bf) a a |
  g4 f8 g16 (f) |
  e2 ~ |
  e8 e a c16 (b!) |
  a8 a d c16 (d) |
  e2 |
  e8. e16 e8 c |
  d d4. |
  d8. d16 d8 b! |
  c c r a |
  g g bf16 (a) g8 |
  f4 r8 \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  r8 |
  R2
  r4 r8 g |
  e8. (d16) e8 f |
  g4. e8 |
  d8. d16 e8 e |
  f2 |
  f8 g16 f e8 f |
  g4 a8 (g) |
  f4 g8 (f) |
  e4 r8 g |
  d' c4 g8 |
  f8. g16 a8 f |
  d4 c8 c |
  bf4. b!8 |
  c c c (bf) |
  <c a>2
  
  bf'2 ~ |
  bf |
  a ~ |
  a4 r |
  
  a8 (bf) a a |
  g4 f8 g16 (f) |
  e2 ~ |
  e8 e a c16 (b!) |
  a8 a d c16 (d) |
  e2 |
  c8. c16 c8 a |
  b! b4. |
  a8. a16 g8 f |
  e e r f |
  c c d e |
  f4 r8
}

nhacDiepKhucBas = \relative c' {
  r8 |
  r4 r8 c |
  f,8. (e16) f8 g |
  a4 c8 a |
  g4. a8 |
  bf8. bf16 c8 c |
  f,2 ~ |
  f4 r |
  c8 d16 c a8 c |
  f4 e8 (d) |
  c4 r8 c' |
  bf a4 e8 |
  f8. f16 f8 a |
  bf4 c8 a |
  g4. f8 |
  e d c4 |
  f2 |
  
  <d'\=1^( bf,\=2_(>2 |
  <df\=1) bf,\=2)>2 |
  <c f,>2 ~ |
  <c f,>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Kính mừng Ma -- ri -- a, kính mừng Ma -- ri -- a,
  kính mừng Mẹ đầy hồng ân.
  Thiên Chúa ở cùng Mẹ liên.
  Mẹ diễm phúc hơn mọi phụ nữ trên trần
  và Giê -- su Con Mẹ gồm phúc lạ.
  A -- men.
  Thánh Ma -- ri -- a Mẹ Chúa Trời cầu cho chúng con
  còn vương tội lỗi.
  Thánh Mẫu Chúa Trời khoan nhân ghé mắt đoái tình
  thi ân bây giờ và lúc ly trần.
}

loiDiepKhucAlto = \lyricmode {
  Kính mừng Ma -- ri -- a, kính mừng Mẹ đầy hồng ân.
  Thiên Chúa ở cùng Mẹ liên, ở cùng Mẹ liên.
  Mẹ diễm phúc hơn mọi phụ nữ trên trần
  và Giê -- su Con Mẹ gồm phúc lạ.
  A -- men.
  Thánh Ma -- ri -- a Mẹ Chúa Trời cầu cho chúng con
  còn vương tội lỗi.
  Thánh Mẫu Chúa Trời khoan nhân ghé mắt đoái tình
  thi ân bây giờ và lúc ly trần.
}

loiDiepKhucBas = \lyricmode {
  Kính mừng Ma -- ri -- a, Ma -- ri -- a,
  kính mừng Mẹ đầy phúc ân.
  Thiên Chúa ở cùng Mẹ liên ở liên.
  Mẹ diễm phúc hơn mọi phụ nữ trên trần
  Chúa Giê -- su Con Mẹ gồm sự lạ.
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
  %page-count = #2
  %systems-per-page = 5
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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
  }
}
