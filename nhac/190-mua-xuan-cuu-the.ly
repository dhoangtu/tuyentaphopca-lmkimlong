% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mùa Xuân Cứu Thế" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c' {
  \partial 4 \tuplet 3/2 { c8 e g } |
  \tuplet 3/2 { e g c } \tuplet 3/2 { <g e>8 <c g> <e c> } |
  <<
    {
      \voiceOne
      d4. b16 b |
      c4. a8 |
      g2 ~ |
      g8
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      a4 g8 f |
      e4 d |
      b4. <f' d b>8 |
      <e c>
    }
  >>
  \oneVoice
  \bar "|" \break
  c4 e8 |
  \slashedGrace { g16 _(a } g2 ~ ) |
  g2 ~ |
  g4 r8 f16 f |
  g4. d8 |
  e2 |
  r8 \once \stemDown a (c) a |
  g8. g16 e'8 ^> e ^> |
  r d d c |
  c2 ~ |
  c4 r |
  R2*2
  r4 d8. d16 |
  e4. d8 |
  b c4 d8 |
  \slashedGrace { g,16 (a } g2) ~ |
  g4 r |
  R2
  c8. ^> c16 c8 e |
  d ^> d ^> r b |
  b2 |
  R2*2
  c8. ^> c16 g8 a |
  fs ^> fs ^> r g |
  g2 |
  g8. c16 c8 b ( |
  c) e a, af |
  g2 |
  d'8. ^> f16 f8 b, |
  g
  <<
    {
      \voiceOne
      \once \override NoteColumn.force-hshift = #1
      d'4 e16 (d) |
      \slashedGrace { \once \stemDown b16 ( } c2 ^> ) ~ |
      c4
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      d8 ([c]) b |
      g2 ~ |
      g4
    }
  >>
  \oneVoice
  \bar "||" \break
  
  \tuplet 3/2 { g'8 e c } |
  \tuplet 3/2 { e c g } \tuplet 3/2 { c g e } |
  f4. fs16 fs |
  <g d b>4. <d b>8 |
  
  <<
    \new Voice = "splitpart" {
	    \voiceTwo
	    <c\=1^( a\=2_(>2 |
      <c\=1) a\=2)>4 \skip 4
    }
    {
      \voiceOne
      \skip 2
      b'8\rest
      \once \override NoteColumn.X-offset = 2.5 <>
      c,4 e8
    }
  >>
  \bar "|" \break
  \oneVoice
  g2 ~ |
  g ~ |
  g4 r8 f16 f |
  g4. d8 |
  \slashedGrace { d16 ( } e2) |
  r8 a4 a8 |
  g8. g16 c8 af ( |
  c) af (g) c |
  c2 ~ |
  c4 r |
  R2*2
  c8 d4 b8 |
  b2 |
  d8 d4 e8 |
  e2 |
  f8. d16 b8 d |
  d c4. |
  c8 a4 a8 |
  g2 ~ |
  g4 r |
  r g8 d' ~ |
  d d (e) d |
  c2 ~ |
  c4 r |
  
  \time 3/4
  af4 (f) g |
  g2 g4 |
  f4 ef r8 d |
  d2. |
  d'4 (ef) c |
  d2 c8 (d) |
  d4 c r8 c |
  b2 c8 c |
  
  \time 2/4
  g8. g16 g8 a |
  g e4. |
  d'8. b16 b8 d |
  g, e4 g8 |
  c2 ~ |
  c4 e8 e |
  d8. g16 c,8 d |
  e f4. |
  a,8. d16 d8 e |
  \slashedGrace { e,16 ( } g2) |
  r8 e' (f) e |
  d2 ~ |
  d4 c8 c |
  g8. g16 g8 a |
  g e4. |
  d'8. b16 b8 d |
  g, e4 g8 |
  c2 ~ |
  c4 e8 e |
  d8. g16 c,8 d |
  e f4. |
  a,8. d16 d8 e |
  \slashedGrace { e,16 ( } g2) |
  r8 d'4 b8 |
  c2 ~ |
  c4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  r4
  R2*4
  r8 r r4 |
  r4 r8 d16 d |
  e4. c8 |
  d2 |
  b |
  c |
  r8 c4 c8 |
  b8. c16 g'8 ^> g ^> |
  r a f f |
  e2 ~ |
  e4 r |
  R2*2
  r4 b'8. b16 |
  c4. a8 |
  g e4 g16 (f) |
  e2 |
  e8. ^> e16 e8 a |
  g ^> g4. ^> |
  e8. ^> e16 e8 c' |
  a ^> a ^> r a |
  gs2 |
  a8. ^> a16 e8 f |
  d ^> d4. ^> |
  e8. ^> e16 b8 e |
  d ^> d ^> r c |
  b2 |
  b8. c16 c8 e ~ |
  e c' f, e |
  d8. e16 d8 c |
  b4. d8 |
  c f4 f8 |
  e2 ~ |
  e4
  
  r4
  R2*5
  r4 r8 d16 d |
  e4. e8 |
  \slashedGrace { c16 ( } d2) |
  b2 |
  c |
  r8 c4 c8 |
  b8. b16 c8 c ( |
  g') f4 f8 |
  ef2 ~ |
  ef4 r |
  R2*2
  g8 fs4 g8 |
  d2 |
  a'8 a4 a8 |
  gs2 |
  R2*2
  g8 f4 d8 |
  d2 ~ |
  d4 r |
  r c8 f ~ |
  f f (g) f |
  e2 ~ |
  e4 r
  
  \time 3/4
  c2 b4 |
  c2 c4 |
  c4 c r8 c |
  b2. |
  g'2 ef4 |
  g2 ef4 |
  f ef r8 ef |
  d2 e8 e |
  
  \time 2/4
  d8. d16 e8 c |
  b c4. |
  a'8. d,16 d8 b |
  c c4 d8 |
  e2 ~ |
  e4 b'8 c |
  a8. g16 e8 g |
  g a4. |
  e8. f16 g8 f |
  e2 |
  r8 g (a) c |
  b2 ~ |
  b4 g8 e |
  d8. d16 e8 c |
  b c4. |
  a'8. d,16 d8 b |
  c c4 d8 |
  e2 ~ |
  e4 b'8 c |
  a8. g16 e8 g |
  g8 a4.
  e8. f16 g8 f |
  e2 |
  r8 f4 f8 |
  e2 ~ |
  e4
}

nhacPhienKhucBas = \relative c' {
  r4 |
  \tuplet 3/2 { c8 g e } \tuplet 3/2 { g e c } |
  f4 g |
  a4. fs8 |
  g4 g,8 g |
  c r r4 |
  r r8 b'16 b |
  c4. a8 |
  g2 ~ |
  g4 g, |
  c2 |
  r8 f4 f8 |
  g8. e16 c8 ^> c ^> |
  r f g g |
  a2 ~ |
  a4 a8. b16 |
  b4. b8 |
  c a4 af8 |
  g2 ~ |
  g8 c, ^> e ^> f ^> |
  g4 a8 b |
  c2 ~ |
  c4 r |
  b8. ^> b16 b8 d |
  c ^> c ^> r c, |
  f ^> f ^> r d |
  e2 |
  R2
  g8. ^> g16 d8 e |
  c ^> c ^> r c |
  d ^> d ^> r d |
  g2 |
  f8. e16 e8 d ( |
  c) a d d |
  <g g,>2 ~ |
  <g g,>4 g8. ^> f16 |
  e8 d g g |
  c,2 ~ |
  c4
  r |
  \tuplet 3/2 { c8 e g } \tuplet 3/2 { e8 g c } |
  d4 <d c d,> |
  <<
    {
      \voiceOne
      g,4. f8 |
      e4 f
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      g g, |
      a f8 a
    }
  >>
  \oneVoice
  <e' c>4 r |
  r4 r8 b'16 b |
  c4. a8 |
  \slashedGrace { \once \stemDown a16 ^( } g2) ~ |
  g4 g, |
  c2 |
  r8 f4 f8 |
  g8. f16 e8 g ( |
  \once \stemDown c,) df4 df8 |
  c2 |
  c8. c16 ef8 d |
  c (d) af'8. g16 |
  g2 |
  e8 d4 e8 |
  g2 |
  f8 f4 f8 |
  e2 |
  R2*2
  <c' e,>8 <c f,>4 <c fs,>8 |
  <<
    {
      \voiceOne
      \stemDown g2 |
      f8. f16 d8 d
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      \stemUp b'2 ^~ |
      b4 b\rest
    }
  >>
  \oneVoice
  \stemNeutral
  a4 <g e>8 <a d,> ~ |
  <a d,> <b g>4 <b g>8 |
  <g c,>2 ~ |
  <g c,>4 r
  
  \time 3/4
  f4 (af) g8 (f) |
  ef2 ef4 |
  af af r8 f |
  g2. |
  c,2 c'4 |
  b2 c4 |
  f, af r8 c |
  g2 c8 c |
  
  \time 2/4
  b8. b16 c8 f, |
  g a4. |
  f8. g16 g8 f |
  e c'4 b8 |
  a2 ~ |
  a4 gs8 a |
  f8. e16 a8 g |
  c, f4. |
  c'8. c16 b8 b |
  c2 |
  r8 c,4 e8 |
  g2 ~ |
  g4 e8 c |
  b8. b16 c8 f |
  g a4. |
  f8. g16 g8 f |
  e c'4 b8 |
  a2 ~ |
  a4 gs8 a |
  f8. e16 a8 g |
  c, f4. |
  c'8. c16 b8 b |
  c2 |
  r8 <a f>4 <d g,>8 |
  <c c,>2 ~ |
  <c c,>4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  \repeat unfold 15 { _ }
  Mùa xuân ấy một mùa xuân mầu nhiệm
  rất diệu huyền và rất đỗi, rất đỗi anh hoa.
  Xanh hơn liễu tinh tuyền hơn lý tưởng.
  Lời cẩm tự bút ly tao ngập ngượng.
  Trăng ân tình, hoa đền ngự như không.
  Nhạc thiên tiên của nước Nhược non Bồng.
  Cung réo rắt Động Đào xưa vỡ lở.
  \repeat unfold 14 { _ }
  Một mùa xuân một mùa xuân vạn thuở.
  Khi ra đời là nghiêng ngửa cả trăng sao.
  Hoa lá sượng sần,
  Chim muông bỡ ngỡ.
  Gió trên cành sẽ rít lên, rít lên man rợ,
  từng lũ đứng bâng khuâng.
  Cả không gian sẽ im lặng tần ngần.
  Cả thời gian sẽ chết tê hoan lạc.
  Xuân ra đời cành vàng trổ hoa ngọc.
  Gió thiên lương mát rợn cả trời mê.
  Xuân ra đời chín tầng cao diễm phúc.
  Ngọc thiên chương sáng đẹp chiếu lung linh.
  Tôi tôn thờ tâm tư đến ngây dại,
  Sáng bao la bất tuyệt rầy hòa chan.
  Xin nghiêng mình đón mùa xuân Cứu Thế.
  Nguồn ân thiêng phước lạ đã tràn lan.
}

loiPhienKhucAlto = \lyrics {
  Một mùa xuân mầu nhiệm, mầu nhiệm
  rất diệu huyền và rất đỗi, rất đỗi anh hoa.
  Xanh hơn liễu tinh tuyền hơn lý tưởng.
  Lời cẩm tự bút ly tao,
  Lời cẩm tự bút ly tao ngập ngượng.
  Trăng ân tình hoa đền ngự,
  Trăng ân tình hoa đền ngự như không.
  Nhạc thiên tiên của nước Nhược non Bồng,
  nước Nhược non Bồng,
  Động Đào xưa vỡ lở.
  Một mùa xuân vạn thuở, vạn thuở.
  Khi ra đời là nghiên ngửa cả trăng sao.
  Hoa lá sượng sần,
  Chim muông bỡ ngỡ.
  rít lên man rợ,
  từng lũ đứng bâng khuâng.
  Cả không gian sẽ im lặng tần ngần.
  Cả thời gian sẽ chết tê hoan lạc.
  Xuân ra đời cành vàng trổ hoa ngọc.
  Gió thiên lương mát rợn cả trời mê.
  Xuân ra đời chín tầng cao diễm phúc.
  Ngọc thiên chương sáng đẹp chiếu lung linh.
  Tôi tôn thờ tâm tư đến ngây dại,
  Sáng bao la bất tuyệt rầy hòa chan.
  Xin nghiêng mình đón mùa xuân Cứu Thế.
  Nguồn ân thiêng phước lạ đã tràn lan.
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 14 { _ }
  Một mùa xuân mầu nhiệm, mầu nhiệm
  thật diệu huyền và thật đỗi, thật đỗi anh hoa.
  Đẹp mê ly hơn tất cả ngọc ngà,
  màu xanh tinh nguyên hơn ý hướng.
  Lời cẩm tự bút ly tao
  dòng ly tao ngập ngượng.
  Trăng ân tình hoa đền ngự, và đền ngự bằng không.
  Nhạc thiên tiên của cả nước non Bồng.
  Réo rắt Động Đào xưa vỡ lở.
  \override Lyrics.LyricText.font-shape = #'italic
  \tweak extra-offset #'(-10 . 0)
  (Đàn) __ \repeat unfold 12 { _ }
  \revert Lyrics.LyricText.font-shape
  Một mùa xuân vạn thuở, vạn thuở.
  Khi ra đời là nghiêng ngửa cả trăng sao,
  Là rừng núi sông biển sẽ lao đao.
  Hoa cỏ sượng sần,
  Chim muông bỡ ngỡ
  gào lên man rợ,
  Mây lưng trời từng lũ, từng lũ đứng bâng khuâng.
  Cả không gian sẽ im vắng tần ngần.
  Cả thời gian sẽ liệt tê hoan lạc.
  Xuân ra đời cành vàng trổ hoa ngọc.
  Làn thiên lương mát rợn cả cõi mê.
  Xuân ra đời nghìn cõi cao diễm phúc.
  Ngọc thiên chương rạng đẹp dọi lung linh.
  Tôi tôn thờ tâm tư đến ngây ngất,
  Rạng bao la bất tuyệt thấy chứa chan.
  Xin cúi mình chào Chúa Xuân Độ Thế.
  Muôn ân thiêng phước cả đã lan tràn.
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
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  %page-count = 6
}

TongNhip = {
  \key c \major \time 2/4
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
    \new Staff <<
      \new Voice = "beSop" {
         \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1.5
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
