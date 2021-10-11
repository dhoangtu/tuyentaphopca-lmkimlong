% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lưu Danh Thiên Thu" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  R2
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar ".|"
  R2
  r4 e8 c' |
  c8. a16 fs8 fs |
  fs4. d8 |
  d' d4 d8 |
  d2 |
  d8 ^> e16 d b8 c |
  d b g a |
  g4 c8 b |
  a4. c8 |
  c c4 e8 |
  e4. a,8 |
  a c4 a8 |
  fs4 r8 d |
  b' ^> b ^. r8 c |
  a4. b8 |
  g2 ~ |
  g4 r \bar "|."
  
  g8. g16 g8 g |
  e4. e8 |
  c' c4 b8 |
  a2 |
  fs8 g a e |
  d4 cs8 d |
  g4. as8 |
  b2 |
  c8. c16 c8 c |
  d4 ^> d |
  a8. a16 c8 c |
  b4 ^> b |
  fs8 g a e |
  d4 c'8 c |
  a4. a8 |
  g2 \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  R2*2
  c8. c16 c8 c |
  a4. g8 |
  d' d4 c8 |
  b!2 |
  R2
  r4 a8 a |
  bf4. c8 |
  d2 \bar "||"
  
  \key g \major
  b8. b16 b8 b |
  c4 c |
  a8. a16 c8 c |
  b4 b |
  fs8 g a c, |
  d4 c'8 c |
  a4. a8 |
  g2 ~ |
  g4
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(10 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  r \bar "|." \break
  
  R2
  r8 b ^> b ^> b ^> |
  a4 r |
  r8 c ^> c ^> cs ^> |
  d4 r |
  R2
  r8 c c c |
  b2 |
  R2*2
  a8. a16 c8 c |
  b4 b \breathe |
  fs8 g a e |
  d4 c'8 c |
  a4. a8 |
  g2 ~ |
  g4 r
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  R2*2
  r4 c8 e |
  e8. e16 d8 d |
  d4. fs8 |
  g g4 fs8 |
  g4. (a8) |
  b ^> c16 b g8 a |
  fs g d fs |
  g4 a8 g |
  fs4. f!8 |
  e a4 a8 |
  gs4. g!8 |
  fs e4 e8 |
  d4 r8 d |
  d ^> g ^> r e |
  fs4. fs8 |
  d2 ~ |
  d4 r |
  
  g8. g16 g8 g |
  e4. e8 |
  c' c4 b8 |
  a2 |
  fs8 g a e |
  d4 cs8 d |
  g4. as8 |
  b2 |
  a8. a16 a8 a |
  a4 ^> b |
  fs8. fs16 a8 g |
  fs4 ^> g |
  d8 e cs cs |
  d4 a'8 g |
  fs4. fs8 |
  g2 |
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  g8. g16 g8 g |
  d4 g ~ |
  g a8 g |
  fs4. g8 |
  fs g4 fs8 |
  d2 |
  R2
  r4 fs8 fs |
  g4. g8 |
  fs2 |
  
  \key g \major
  g8. g16 g8 f! |
  e4 e |
  fs8. fs16 a8 a |
  g4 g |
  d8 e cs cs |
  d4 a'8 g |
  fs4. fs8 |
  d2 ~ |
  d4 r |
  R2
  r8 g ^> g ^> g ^> |
  e4 r |
  r8 e ^> e ^> a ^> |
  a4 r |
  R2
  r8 e e e |
  ds2 |
  R2*2
  fs8. fs16 a8 a |
  g4 g |
  fs8 g a e |
  d4 e8 e |
  fs4. fs8 |
  d2 ~ |
  d4 r
}

nhacDiepKhucBas = \relative c {
  r4 d8 b' |
  b8. g16 e8 e|
  e2 ~ |
  e4 r |
  r8 d d' c |
  b4. a8 |
  b8. a16 g8 fs |
  g4. (e8) |
  d ^> e16 d b8 d |
  g g fs g |
  d'8. c16 b8 a |
  g f!4 f8 |
  e8. e'16 ^> e8 ^> c |
  d a4 a8 |
  b d, e ^> (fs) |
  g e a ^> a ^> |
  r <d d,> <c d,> <c d,> |
  <b g g,>2 ~ |
  <b g g,>4 r |
  R2
  c8. c16 c8 c |
  a4. g8 |
  c8 c4 cs8 |
  d2 |
  fs,8 g a g |
  fs g fs e |
  ds2 |
  R2
  fs4 ^> g |
  R2
  ds4 ^> e |
  R2
  fs8 g a a |
  d4 d, |
  g2 |
  
  \key bf \major
  R2
  bf8. bf16 bf8 bf |
  a4. a8 |
  d4 c8 (bf) |
  a bf4 d8 |
  g,2 |
  fs8 ^> fs ^> g16 (a) g8 |
  d4 d8 d |
  g4. ef8 |
  d2 |
  
  \set Staff.printKeyCancellation = ##f
  \key g \major
  g8. g16 g8 gs |
  a4 a |
  d8. d16 d,8 fs |
  g4 g |
  R2
  fs8 g a a |
  d d <c d,>4 |
  <b g>2 ~ |
  <b g>4 d,8 b' |
  g8. g16 g8 g |
  e4. e8 |
  c'8 c4 b8 |
  a2 |
  fs8 g a e |
  d4cs8 d |
  a'4. as8 |
  b2 |
  c8. c16 c8 c |
  d4 ^> d ^> ~ |
  d r8 d, |
  g4 g \breathe |
  fs8 g a e |
  d4 a8 a |
  d4
  <<
    {
      \voiceOne
      a'8 (c)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d,4
    }
  >>
  \oneVoice
  <b' g,>2 ~ |
  <b g,>4 d,8 b'
}

% Lời
loiDiepKhucSop = \lyricmode {
  Dòng máu thắm tô đẹp cuộc đời
  còn lưu danh thiên thu.
  Đây những anh hùng Việt Nam trung thành theo bước Chúa Giê -su,
  Gươm đao thêm dũng chí nhục hình thêm can cường,
  từng lớp lớp tiến lên pháp trường.
  
  Hân hoan khi lao tù, mừng rỡ lúc gươm vung
  Nguyện theo Chúa đến cùng dù thịt tan xương nát.
  Bao nhiêu gian nan khốn khó
  Dệt thành chiến thắng quang vinh,
  Triều thiên thánh Tử Đạo lấp lánh soi thiên đình.
  Đi gieo trong châu lệ về chiến thắng reo vui,
  rầy trổ sinh hoa trái.
  Bao con dân nay biết Chúa nhờ dòng máu rắc gieo xưa
  Và ca khúc khải hoàn sẽ tiếp liên vang hòa.
  Cha ông kiêu hùng một lòng kiên trung
  kiếp sống khổ đau
  Nhìn thập giá quyết hy sinh
  Để tông giống anh hùng thắp sáng quê hương mình.
}

loiDiepKhucAlto = \lyricmode {
  Dòng máu thắm tô đẹp cuộc đời
  còn lưu danh thiên thu.
  Đây những anh hùng Việt Nam trung thành theo bước Chúa Giê -su,
  Gươm đao thêm dũng chí nhục hình thêm can cường,
  từng lớp lớp tiến lên pháp trường.
  
  Hân hoan khi lao tù, mừng rỡ lúc gươm vung
  Nguyện theo Chúa đến cùng dù thịt tan xương nát.
  Bao nhiêu gian nan khốn khó
  Dệt thành chiến thắng quang vinh,
  Triều thiên thánh Tử Đạo lấp lánh soi thiên đình.
  Đi gieo trong châu lệ, gieo trong châu lệ
  về chiến thắng reo vui,
  rầy trổ sinh hoa trái.
  Bao con dân nay biết Chúa nhờ dòng máu rắc gieo xưa
  Và ca khúc khải hoàn sẽ tiếp liên vang hòa.
  Cha ông kiêu hùng một lòng kiên trung
  kiếp sống khổ đau
  Nhìn thập giá quyết hy sinh
  Để tông giống anh hùng thắp sáng quê hương mình.
}

loiDiepKhucBas = \lyricmode {
  Nhạc chiến thắng vang dậy rền trời
  Dòng máu lưu danh ngàn thu lưu danh ngàn thu
  Đây những anh hùng Việt Nam trung thành theo Chúa Giê -- su
  gươm đao thêm kiên trì dũng chí
  tử sinh nguyện can cường
  từng lớp lớp, từng lớp lớp tiến lên pháp trường.
  
  Hân hoan khi lao tù,
  nhìn gươm vung mừng rỡ, nguyện theo Chúa đến cùng
  dẫu tan xương thịt.
  khốn khó
  quang vinh
  triều thiên lấp lanh chói hiển vinh.
  Đi gieo trong châu lệ thảm thê
  trở về bao sướng vui.
  Từng hạt giống chôn vùi rầy trổ sinh hoa trái.
  Bao con dân nay biết Chúa
  Bởi máu đào đã gieo xưa
  Khải hoàn ca sẽ tiếp nối vang xa.
  Nhạc chiến
  
  \set stanza = "2."
  Ôi cha ông kiêu hùng dù chết vẫn kiên trung,
  Rầy trên chốn cửu trùng phù trợ cho con cháu
  theo gương xưa luôn tiến bước nguyện hy sinh
  Để tông giống anh hùng làm rạng quê hương mình.
  Nhạc chiến
  
  
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
  \key g \major \time 2/4
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
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
