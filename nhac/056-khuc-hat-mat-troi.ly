% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khúc Hát Mặt Trời" }
  composer = "Thơ: Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 4
  <>^\markup { \raise #1 \fontsize #6 \box \bold A }
  g8. g16 \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  c,4. a'8 |
  a4 g8 g |
  c2 ~ |
  c4 r |
  R2
  R
  r4 e8. ^> e16 |
  d4 f8. ^> f16 |
  e4. d8 |
  b (c) d c |
  g2 ~ |
  g4 g8. ^> e16 |
  a4. a8 |
  a a \once \stemUp b4 |
  c2 ~ |
  c4 c8. ^> d,16 |
  d4. e16 (d) |
  c8 g'4
  a16 (g) |
  \slashedGrace {e16 (} g2) ~ |
  g4 c8. a16 |
  a4 f' ^> ~ |
  f8 c ef d |
  d2 ~ |
  d4 r |
  r8 ef8 d4 ^( |
  d8) d c b |
  c2 ^~ |
  c8 c16 b c8 a |
  g4. c8 |
  d d16 c d8 c |
  b c4 ^> d8 |
  e2 ~ |
  e4 r8 |
  d16 d |
  d8 d d b16 b |
  b4 r8 |
  c16 c |
  c8 c c a16 a |
  a2 |
  r2
  r
  r8 d16
  c c8 f ^> |
  f ^> r g ^>
  g ^> |
  r b,4 b8 |
  c2
  \tweak extra-offset #'(-3 . 0)
  ^\markup { \fontsize #2 \bold "qua B" }
  \bar "|."
 
  c2
  \tweak extra-offset #'(2 . 0.5)
  ^\markup { \fontsize #2 \bold "để Kết" }
  ~ |
  c4 r \bar "|." \break
  
  <>^\markup { \raise #1 \fontsize #6 \box \bold B }
  c8 \repeatTie
  %^\tweak control-points #'((-2 . 3) (-1 . 3.1) (0 . 3.2) (1 . 2.4)) ( <> )
  \slashedGrace { \once \stemDown d16 ^(} e4
  ) c8 |
  d d16 d g,8 g |
  c2 ^~ |
  c8 d4 b8 |
  b c16 a a8 g |
  c2 ~ |
  c4 g8. g16 g4. f8 |
  ef8 (f) g ef |
  d4. d8 |
  \slashedGrace { d16 ( } e8.) d16 c8 c |
  c4 r8 g'16 g |
  g4. c8 |
  d2 ~ |
  d4 r |
  R2
  r8 e c c |
  d4 b16 (c) d8 |
  g,4 g8 g |
  d'4. b8 |
  c2 ~ |
  c4 g8. g16 |
  g4. f8 |
  g g e4 |
  d d8 c |
  g'4. g8 |
  g a b4 |
  c2 ~ |
  c4
  \stemNeutral
  g8. g16
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \partial 4 g8. g16 |
  c,4. c8 |
  c4 b8 b |
  <g' c,>2 ~ |
  <g c,>4 r |
  R2
  R
  r4 c8. ^> c16 |
  b4 d8. ^> d16 |
  c4. a8 |
  g4 f8 e |
  d2 ~ |
  d4 g8. ^> e16 |
  a4. g8 |
  f f g (f) |
  e2 ~ |
  e4 c'8. ^> d,16 |
  d4. e16 (d) |
  c8 d4 d8 |
  e2 ~ |
  e4 g8. c,16 |
  c4 a' ^> ~ |
  a8 a c c |
  b2 ~ |
  b4 r |
  r8 c b4 _( |
  b8) g g f |
  e4 r8 e16 d |
  e4 c |
  b4. c8 |
  f8 f16 e f8 e |
  d e4 ^> a8 |
  gs2 ~ |
  gs4 r4 |
  r8 a a a16 a |
  g4 \skip 4 |
  r8 g g g16 g |
  f2 |
  r8 g16 e e8 a |
  a4 d8 (c) |
  b8. a16 g4 |
  a8 ^> a ^> r4 |
  r8 g4 f8 |
  e2 |
  
  e2 ~ |
  e4 r
  
  e8 \repeatTie r r4 |
  R2
  r8
  g16 g f8 e |
  a4 a8 a |
  g g16 c, f8 f |
  e2 ~ |
  e4 g8. g16 g4. f8 |
  ef8 (f) g ef |
  d4. d8 |
  \slashedGrace { d16 ( } e8.) d16 c8 c |
  c4 r8 g'16 g |
  g4. g8 |
  fs fs16 fs g8 a |
  b4 b8 b
  c4 b16 (a) d8 |
  g,2 ~ |
  g8 g d b |
  c4 c8 c |
  f (g f) d |
  e2 ~ |
  e4 g8. g16 |
  g4. f8 |
  ef d c4 |
  b r |
  c b8 b |
  c f f4 |
  e2 ~ |
  e4 g8. g16
}

nhacPhienKhucBas = \relative c {
  \partial 4 g'8. g16 |
  c,4. f8 |
  f4 f8 f |
  e2 ~ |
  e4 e16 (d) g8 |
  c,4. f8 |
  d (f) a16 (c) a8 |
  g2 ~ |
  g8 g ^> a ^> b ^> |
  c4 c,8 d |
  e e <a\=1^( d,\=2_(> <c\=1) c,\=2)> |
  <b g>2 ~ |
  <b g>4 g8. ^> e16 |
  a4. cs,8 |
  d d g,4 |
  c2 ~ |
  c4 c8. ^> d16 |
  d4. e16 (d) |
  c8 b4 b8 |
  c8. c16 ^> e8 ^> g ^> |
  c4 e,8. e16 |
  f4 d ^> ~ |
  d8 f c f |
  g2 ~ |
  g4 f8 af |
  g4. g8 |
  d (g) e d |
  c2 ~ |
  c4 e8 (f) |
  g g16 f g8 e |
  d4 b8 (c) |
  d a4 ^> f'8 |
  e2 ~ |
  e4 r |
  r8 f f d16 ds |
  e4 r |
  r8 e e c16 cs |
  d2 |
  r |
  r8 f16 d d8 g |
  g4 e |
  d8 ^> d ^> r4 |
  g4 ^> g, |
  c2
  
  c2 ~ |
  c4 r
  
  c8 \repeatTie r r4 |
  R2
  r8 e16 e d8 c |
  f4 f8 d |
  e e16 f d8 d |
  c2 ~ |
  c4 g'8. g16 |
  g4. f8 |
  ef (f) g ef |
  d4. d8 |
  \slashedGrace { d16 (} e8.) d16 c8 c |
  c4 r8 g'16 f |
  e4. e8 |
  d d16 d e8 fs |
  g4 r |
  R2
  r8 c e, e |
  g4. f8 |
  e4 e8 e |
  f (e d) g |
  c,2 ~ |
  c4 g'8. g16 |
  g8 (f ef) d |
  c b c4 |
  g r |
  e'8 c g' f |
  e d g,4 |
  c2 ~ |
  c4 g'8. g16
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Hỡi vũ trụ bao la và huyền bí
  Cất tiếng lên, cất tiếng lên
  rung chuyển bốn phương nào
  Ca hòa đi tuyên xưng danh Thiên Chúa.
  Hỡi mặt trời oai hùng muôn ánh lửa
  Ngươi ngày ngày xua màn tối âm u,
  quét đi tất cả mù sương
  ngươi hiện ra huy hoàng
  hiện ra
  ngươi hiện ra huy hoàng
  tràn ý sống
  Trên không trung cao xanh và lồng lộng,
  Trên không trung cao xanh và lồng lộng,
  ngươi nhịp nhàng tiến bước
  tiến bước lượng thời gian.
  
  gian.
  
  _ Mỗi bình minh khi đêm tàn ngày đến
  ngươi hiện hình trên màn bạc trời đông.
  Ta say sưa chiêm niệm sáng trong lòng
  hình ảnh của một mặt trời,
  một mặt trời công chính
  giáng trần nhận lãnh việc cứu đời
  Để giải phóng ngàn dân.
  Ta nao nao ôn nhớ đến vô vàn
  Ơn lành thánh
  vì Ngài ta phong phú.
  
  Hỡi vũ...
}

loiPhienKhucAlto = \lyrics {
  Hỡi vũ trụ bao la và huyền bí
  Cất tiếng lên, cất tiếng lên
  rung chuyển bốn phương nào
  Ca hòa đi tuyên xưng danh Thiên Chúa.
  Hỡi mặt trời oai hùng muôn ánh lửa
  Ngươi ngày ngày xua màn tối âm u,
  quét đi tất cả mù sương
  ngươi hiện ra huy hoàng
  hiện ra
  ngươi hiện ra huy hoàng
  tràn ý sống
  cao xanh và lồng lộng,
  cao xanh và lồng lộng,
  ngươi nhịp nhàng tiến bước
  tiến bước nhịp nhàng tiến bước hướng thời gian.
  
  gian.
  
  _ khi đêm tàn ngày đến,
  ngươi hiện hình trên màn bạc trời đông.
  Ta say sưa chiêm niệm sáng trong lòng
  hình ảnh của một mặt trời,
  một mặt trời công bình,
  một mặt trời công chính.
  Con Thiên Chúa xưa giáng trần
  lãnh việc chuộc đời
  Để giải phóng ngàn dân.
  Ta nao nao ôn nhớ đến vô vàn
  Ơn lành 
  vì Ngài ta phong phú.
  
  Hỡi vũ...
}

loiPhienKhucBas = \lyrics {
  \override LyricText.extra-offset = #'(0 . -1)
  Hỡi vũ trụ bao la và huyền bí
  Tự muôn đời sinh dựng bởi Muôn Cao
  Nào mau lên tiếng làm rung chuyển mọi phương nao
  Ca hòa đi tuyên xưng danh hiền Chúa.
  Hỡi mặt trời oai hùng muôn ánh lửa rực soi muôn lối,
  Ngươi ngày ngày dẹp tan mọi âm u,
  Và quét đi tất cả lạnh sương mù
  hiện ra ngươi hiện ra huy hoàng
  hiện ra tràn sống động
  cao xanh và lồng lộng
  cao xanh và lồng lộng
  ngươi nhịp nhàng tiến bước
  ngươi tiến bước hướng thời gian.
  
  gian.
  
  _ khi đêm tàn ngày đến,
  ngươi hiện hình trên màn bạc trời đông.
  Ta say sưa chiêm niệm sáng trong lòng
  hình ảnh của một mặt trời,
  một mặt trời công bình,
  một mặt trời công chính
  giáng trần nhận lãnh cứu đời
  Để giải phóng ngàn dân.
  Ta nao nao ôn lại cả vô vàn
  Ơn lành thánh, vì Ngài ta phong phú.
  Hỡi vũ...
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
  system-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  score-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  %page-count = 3
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
      \new Lyrics \lyricsto "beSop" \loiPhienKhucSop
      >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1
  } 
}
