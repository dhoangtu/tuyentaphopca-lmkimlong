% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ca Vang Khải Hoàn" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4. c8
  _\markup { \halign #-0.3 \bold "Intr." }
  c <a'f c> ^> |
  <a f c> ^> f16 f f8 <bf f bf,> ^> |
  <bf f bf,> ^> g16 g g8 <c g e> ^> |
  <<
    {
      c4. ^> c8 |
      bf8. ^> a16 g8 c
    }
    \\
    {
      <g e>4 r |
      <g d>4 <e c bf>
    }
  >>
  <f c a>2 |
  
  c8 ^> c4. ^> |
  a'8 ^> a4. ^> |
  r8 f f bf |
  bf g16 g g8 c |
  c4. c8 ^> |
  c f f8. f16 |
  f8 e r e |
  d8. d16 d8 e |
  c2 |
  bf8 g g bf |
  c4. c8 |
  a4. a8 |
  g4 e8 e |
  f4. d8 |
  c2 |
  r4 a'8 ^> a ^> ~ |
  a4 bf8 ^> bf ^> |
  r8 g16 g g8 c |
  c4. c8 |
  c f f8. d16 |
  f8 e r f |
  d8. d16 d8 e |
  c2 |
  bf8 g g bf |
  c4. c8 |
  a4. a8 |
  g4 g8 g |
  bf8 c4 e,8 |
  f2 ~ |
  f4 r \bar "|." \break
  
  R2*2
  r4. c'8 |
  f4 \tuplet 3/2 { bf,8 d c } |
  a4 \tuplet 3/2 { f8 bf a } |
  g4 \tuplet 3/2 { e8 f g } |
  \slashedGrace { c,16 (d } c4) c8 c |
  a'2 |
  a8 bf4 a8 |
  g2 ~ |
  g4 r |
  R2
  r4. c8 |
  f,4 \tuplet 3/2 { a8 a bf } |
  g4 \tuplet 3/2 { f8 f f } |
  d'4 \tuplet 3/2 {g,8 g bf} |
  c4 f,8 f |
  g2 |
  <<
    {
      \slashedGrace { g16 (} bf8) a4 g8 |
      f2
    }
    {
      g8 f4 e8 |
      c2
    }
  >>
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 3/4
  a'4 a f |
  e2 d4 |
  g2 g4 |
  bf a g |
  c2 bf4 |
  bf bf d |
  g,2 a4 |
  a a c |
  f,2 f4 |
  bf ^> bf4. a8 |
  g2 a4 |
  a f f |
  bf2 bf4 |
  g c bf |
  a2 g4 |
  d8 (f) f4 d |
  c2. |
  a'4 a4. ^> bf8 |
  bf2 bf4 |
  g g g |
  d'4. d8 b!4 |
  c2. \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r4. |
  R2*5
  c8 ^> c4. ^> |
  c8 ^> c4. ^> |
  r8 c c g' |
  f d16 d d8 a' |
  g e ^> e4 ^> |
  r8 a a8. a16 |
  b!8 c r <c a> |
  <b! g>8. <b g>16 <b f>8 <b f> |
  <g e>2 ~ |
  <g e>4 r |
  e8 c c e |
  f4. c8 |
  b!4 bf8 bf |
  a4 b! |
  c2 |
  c8 ^> c4. ^> |
  f8 ^> f4. ^> |
  d8 d4 f8 |
  e4. e8 |
  f a a8. a16 |
  b!8 c r <c a> |
  <b! g>8. <b g>16 <b f>8 <b f>8 |
  <g e>2 ~ |
  <g e>4 r |
  e8 c c e |
  f4. c8 |
  bf4 c8 c |
  f e4 c8 |
  c2 ~ |
  c4 r |
  R2*2
  
  r8 f c'4 ~ |
  c \tuplet 3/2 { f,8 a g } |
  f4 \tuplet 3/2 { c8 d c } |
  bf4 \tuplet 3/2 { bf8 bf b! } |
  \slashedGrace { c16 (d } c4) c8 c |
  c (d c4) |
  f8 g4 f8 |
  e2 ~ |
  e4 r |
  R2
  r8 f c4 ~ |
  c \tuplet 3/2 { f8 f d } |
  e4 \tuplet 3/2 { f8 f f } |
  bf4 \tuplet 3/2 { d,8 d f } |
  e4 f8 f |
  d2 |
  d8 c4 bf8 |
  a2 |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 3/4
  d4 e d |
  cs2 d4 |
  bf2 c4 |
  f4 f f |
  e2 e4 |
  d d d |
  c2 c4 |
  c c c |
  bf2 a4 |
  d ^> g4. ^> f8 |
  e2 e4 |
  f d d |
  d (e) f |
  e e e |
  f2 f4 |
  bf,4 bf b! |
  c2. |
  c4 c4. ^> g'8 |
  f2 f4 |
  bf,2 bf4 |
  a4. a'8 e (f) |
  e2.
}

nhacDiepKhucBas = \relative c {
  r4 <f f,>8 ^> |
  <f f,> ^> r4 <d d,>8 ^> |
  <d d,> ^> r4 <c c,>8 ^> |
  <c c,>8. ^> <d d,>16 ^> <e e,>8 ^> <f f,>8 ^> |
  <g g,> ^> r4 <c, c,>8 |
  <f f,>2 |
  
  c8 ^> c4. ^> f8 ^> f4. ^> |
  r8 f ef ef |
  d g16 g f8 f |
  e c ^> c4 ^> |
  r8 d d8. f16 |
  g8 a r f |
  g8. g16 g8 g, |
  c8. e16 d8 c |
  g'4 r |
  R2
  f8 d d f |
  g4 g8 <g c,> |
  <f d>4 <f g,> |
  <e c>2 |
  r4 f8 ^> f ^> ~ |
  f4 d8 ^> d ^> |
  r f16 f e8 d |
  c c' c (bf) |
  a f d8. d'16 |
  g,8 a r f |
  g8. g16 g8 g |
  c,8. e16 d8 c |
  g'4 r |
  R2
  f8 d d f |
  g (f) e e |
  d (c)
  <<
    {
      \voiceOne g' (bf)
    }
    \new Voice = "splitpart" {
      \voiceTwo c,4
    }
  >>
  \oneVoice
  <a' f f,>2 ~ |
  <a f f,>4 r |
  
  r8 c, c e |
  g8. d16 d8 f |
  a2 ~ |
  a4 \tuplet 3/2 { d,8 d e } |
  f4 \tuplet 3/2 { a8 d, f } |
  g4 \tuplet 3/2 { g8 g f } |
  e4 e8 e |
  f2 |
  d8 bf4 b!8 |
  c2 ~ |
  c8 c c e |
  g8. d16 d8 f |
  a2 ~ |
  a4 \tuplet 3/2 { f8 f bf, } |
  c4 \tuplet 3/2 { f8 f f } |
  bf,4 \tuplet 3/2 { bf8 bf d } |
  c4 d8 d |
  bf2 |
  g8 c4 c8 |
  f,2 |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 3/4
  f'4 e f |
  g (a) bf |
  g (f) e |
  \afterGrace d4 ^({
    \override Flag.stroke-style = #"grace"
    f16
  )}
  \revert Flag.stroke-style
  d4 df |
  c2 g'4 |
  g g f |
  e2 f4 |
  f f e |
  d2 d4 |
  bf ^>bf4. ^> b!8 |
  c2 a4 |
  d d c |
  bf (a) g |
  c c c |
  f2 f4 |
  g g g |
  a2. |
  f4 f4. ^> ef8 |
  d2 d4 |
  g2 g4 |
  f4. fs8 g4 |
  c,2.
}

% Lời
loiDiepKhucSopMot = \lyricmode {
  \repeat unfold 14 { _ }
  Hàng hàng lớp lớp hàng hàng lớp lớp kìa hàng hàng lớp lớp
  Hàng hàng lớp lớp các chứng nhân tiến lên ca vang khải hoàn
  Tay cầm cành thiên tuế tiến lên,
  tiến lên điệp trùng xa muôn ngàn.
  Lớp lớp, lớp lớp kìa hàng hàng lớp lớp
  hàng hàng lớp lớp từ khắp nơi tiến lên vinh quang nước trời.
  Tâm thần đầy hỉ hoan tiến lên,
  tiến lên nhận triều thiên Chúa tặng ban.
  
  \set stanza = "1."
  Họ tới từ kiếp đọa đầy thịt nát xương bay,
  đầu rơi máu chảy,
  Họ giặt áo trong Máu Con Chiên
  Chính là Cha Ông chúng ta, cùng một nòi giống,
  cùng một quê hương, vì niềm tin tử sinh coi thường.
  Thắp nén hương trầm đoàn con nay chắp tay
  cầu khấn: Xin nung thêm chí hùng,
  trong gian nan khốn cùng hằng tiến bước kiên trung.
  Xin cho từng giọt máu
  quý ngài rắc gieo xưa trên mảnh đất quê này.
  Khai hoa kết trái
  Thắm đẹp một mùa lúa chín vàng tươi.
}

loiDiepKhucSopHai = \lyricmode {
  \repeat unfold 91 { _ }
  \set stanza = "2."
  Từ chốn cực khốn trăm bề, trần thế khinh chê,
  đời hoen máu lệ,
  Ngậm sầu đắng đem giống đi gieo
  Chính là Anh Em chúng ta thuộc mọi tầng lớp,
  nghèo hèn vinh sang từng ngược xuôi khắp giang sơn này.
}

loiDiepKhucAltoMot = \lyricmode {
  Hàng hàng lớp lớp hàng hàng lớp lớp kìa hàng hàng lớp lớp
  hàng hàng
  lớp lớp các chứng nhân tiến lên ca vang khải hoàn
  Tay cầm cành thiên tuế tiến lên điệp trùng xa muôn ngàn
  hàng hàng hàng hàng hàng hàng lớp lớp,
  hàng hàng lớp lớp từ mọi nơi tiến lên vinh quang nước trời.
  Tâm thần đầy hỉ hoan tiến lên nhận triều thiên Chúa trao ban.
  
  \set stanza = "1."
  Họ tới từ kiếp đọa đầy thịt nát xương bay,
  đầu rơi máu chảy
  Họ giặt áo trong Máu Con Chiên
  Chính là Cha Ông của ta, cùng một nòi giống,
  cùng một quê hương vì niềm tin tử sinh coi thường.
  Thắp nén hương trầm chúng con nay chắp tay cầu khấn:
  Xin nung thêm chí hùng, trong gian nan khốn cùng
  hằng tiến bước kiên trung.
  Xin cho từng giọt máu quý ngài rắc gieo xưa
  trên mảnh đồng quê này.
  Khai hoa kết trái,
  Thắm đẹp một mùa lúa vàng tươi.
}

loiDiepKhucAltoHai = \lyricmode {
  \repeat unfold 72 { _ }
  \set stanza = "2."
  Từ chốn cực khốn trăm bề,
  trần thế khinh chê,
  đời hoen máu lệ,
  Ngậm sầu đắng đem giống đi gieo
  Chính là Anh Em của ta thuộc mọi tầng lớp,
  nghèo hèn vinh sang từng ngược xuôi khắp giang sơn này.
}

loiDiepKhucBasMot = \lyricmode {
  \repeat unfold 12 { _ }
  Hàng hàng lớp lớp
  lớp lớp tập hợp kìa lớp lớp
  tập hợp hàng hang.
  hàng hàng các chứng nhân hiện lên ca vang khải hoàn,
  tiến lên hùng anh.
  Tay cầm cành thiên tuế điệp trùng xa muôn ngàn.
  lớp lớp lớp lớp kia lớp lớp tập hợp lớp lớp
  kia lớp hàng ở mọi nơi cùng lên vinh quang nước trời,
  tiến lên hỷ hoan.
  Tâm thần đầy hỉ hoan nhận triều thiên tặng ban.
  
  \set stanza = "1."
  Họ từ đâu tới, họ từ đâu tới
  từ cuộc đọa đầy nát thịt xương bay,
  đầu rơi máu chảy
  Họ giặt áo trong Máu Con Chiên
  Họ là ai đó, họ là ai đó
  Cha Ông của ta chung một giống dòng,
  cùng một quê hương vì niềm tin tử sinh coi thường.
  Thắp làn hương thơm chúng con nay chắp tay cầu khẩn:
  Xin nung thêm chí hùng, trong gian nan khốn cùng
  những nguyện được kiên trung.
  Xin cho từng giọt máu vì ngài rắc gieo xưa
  trên mảnh đồng quê này.
  Khai hoa kết trái
  Làm đẹp một mùa lúa sáng tươi.
}


loiDiepKhucBasHai = \lyricmode {
  \repeat unfold 89 { _ }
  \set stanza = "2."
  Họ từ đâu tới, họ từ đâu tới
  cực khổ trăm bề, thế trần khinh chê,
  đời hoen máu lệ,
  Ngậm sầu đắng đem giống đi gieo
  Họ là ai đó, họ là ai đó
  Anh Em của ta thuộc mọi tầng lớp,
  nghèo hèn vinh sang từng ngược xuôi cả giang sơn này.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 8\mm
  bottom-margin = 8\mm
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
  %page-count = #4
  systems-per-page = 4
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
      \new Lyrics \lyricsto beSop \loiDiepKhucSopMot
      \new Lyrics \lyricsto beSop \loiDiepKhucSopHai
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiDiepKhucAltoHai
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBasMot
      \new Lyrics \lyricsto beBas \loiDiepKhucBasHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
