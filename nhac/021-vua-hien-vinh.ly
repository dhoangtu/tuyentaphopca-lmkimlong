% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vua Hiển Vinh" }
  %subtitle = "(Lift up your heads, O ye gates)"
  subsubtitle = "(Trích ORATORIO The Messiah, phần 2, đoạn 33)"
  composer = "Nhạc: G. F. Handel"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  f4 e8. d16 c8 c r4 |
  c4 d8 e16( f) e4 r8 c |
  bf bf bf8. c16 c4 r8 e |
  f8. e16 f8. g16 c,4 f8 f |
  f4. f8 f c
  \stemDown f,
  _\markup "chí ái  hiển    vinh"
  d' |
  c16 _(bf) a8 \stemNeutral r4 r2 |
  r1
  r
  r
  r
  r2 r4 r8 c |
  f4 f8. e16 d4 r8 d |
  g4 g8. f16 e4 e8. f16 |
  d8 d e8. f16 e8 c r4 |
  r1
  r
  r
  r
  r
  r
  r
  r2 r4 r8 c |
  d8. c16 d8 e f c r c |
  d8. c16 d8 e f c r4 |
  r1
  r2 r4 r8 c |
  d8. e16 f8. g16 e4 r |
  r2 r4 r8 c |
  c f d e f c r d |
  c f d e f c r4 |
  r r8 f c d16 (e) f8 f |
  e c r  c c d16 (e) f8 f |
  e c r c c d16 (e) f8 f |
  e c r4 r8 a d r |
  r g, c4. c8 bf4 ~( |
  bf a g2) |
  f8 c' c c f4 r8 f |
  e e e e d (e16 f g8 g, |
  c d16 e f2 e4 ~ |
  e8 d16 c d8 c b4 c ~ |
  c bf) c r |
  r1
  r8 f, f f bf4 r8 bf |
  a a a a g ( a16 bf c4 ~ |
  c d2 a8 bf16 c |
  d4. e16 d c4. d16 c |
  bf8 a bf4) a r8 a |
  c f d8. e16 f8 c r d |
  c f d8. e16 f8 c r4 |
  r8 f f f c4 r |
  r8 a a a d4 r |
  r8 b! b b e4 r |
  r8 c c c f4 r8 f |
  e e e e d (e16 f g8 g, c d16 e f2 e4 |
  e8 f16 e d8 c b!4 c ~ |
  c b!) c r8 c |
  c c c c c g r c |
  c c c c c g r4 |
  r2 r8 e' e e |
  f4 r r8 f f f |
  c4 r r8 a a a |
  d4 r8 d c c f4 ~ |
  f8 f e4. (d16 c d4 ~ |
  d8 c16 b! c4. \stemDown bf16 a \stemNeutral bf4) ~ |
  bf c8 bf a4. g8 |
  g2 a4 r8 a |
  a bf16 (c) d8 d c a r8 bf |
  a bf16 (c) d8 d c a r4 |
  r2 c |
  d1 |
  c \bar "|."
}

nhacPhienKhucSopPhu = \relative c'' {
  a4 bf8. bf16 c8 c r4 |
  c4 bf8. a16 g4 r8 e |
  f f f8. g16 g4 r8 c |
  c8. c16 bf8. bf16 a4 a8 c |
  c16 (bf a4) d8 c16 (bf) a8 \stemUp f' f |
  f f r4 r2 |
  r1
  r
  r
  r
  r2 r4 r8 a, |
  d4 c8. c16 b!4 r8 b |
  g4 a8. b!16 c4 c8. c16 |
  c8 c b!8. b16 c8 g r4
}

nhacPhienKhucAlto = \relative c' {
  f4 g8. g16 a8 a r4 |
  a4 g8. f16 c4 r8 c |
  d d d8. e16 e4 r8 c |
  d8. c16 d8. e16 f4 f8 bf |
  a16 (g f4) bf8 a16 (g) f8 f bf |
  a16 (g) f8 r4 r2 |
  r1
  r
  r
  r
  r2 r4 r8 f |
  d4 e8. f16 g4 r8 g |
  e4 f8. a16 g4 a8. f16 |
  g8 g g8. g16 c,8 c r4 |
  e4 f8. f16 g8 g r4 |
  g4 f8. e16 d4 r8 g |
  f8. f16 f8. g16 g4 r8 g |
  f8. e16 f8. g16 e4 e8. a16 |
  g16 (f e4) a8 g16 (f) e8 e a |
  g16 (f) e8 r4 r f8 f |
  f4. f8 f f f f |
  f f r4 r r8 <f' f,> |
  <f bf,>8. <f a,>16 <f bf,>8 <bf, g> <c a> <a f> r <f f'> |
  <f' bf,>8. <f a,>16 <f bf,>8 <bf, g> <c a> <a f> r f |
  g8. a16 bf8. bf16 a4 r |
  r2 r4 r8 f |
  bf4 a g r |
  r2 r4 r8 f |
  f f f g a a r g |
  f f f g a a r d, |
  c f f f f c r a' |
  g g a a g g r a |
  g g a a g g r4 |
  r8 g g g a4 r8 a |
  g g g g f4. (e16 d |
  e4 f2 e4) |
  f r r8 a8 a a |
  g g a4 r8 g g g |
  g (f f g16 a bf4. a16 g |
  a2 g4. g8 f e f4) e8 c c c |
  f4 r8 f f d g4 ~ |
  g8 c, f4 ~( f e) |
  f4. f8 g4. (f16 e |
  f4. e16 d e8 f16 g a4 |
  a8 g16 f bf8 a a4 g |
  f e) f r8 f |
  f f f8. g16 a8 a r f |
  f f f8. g16 a8 a r4 |
  r2 r8 g g g |
  a4 r r8 f f f |
  d4 r r8 g g g |
  e4 r r8 a a a |
  g4 r8 g g4. g8 |
  g4 f8 (e) d (g4 f16 g |
  a2) g4 r8 g |
  f (g) f4 g r8 e8 |
  e f16 (g) a8 a g e r f |
  e f16 (g) a8 a g e r4 |
  r8 g g g a4 r |
  r8 a a a bf2 ( |
  bf8) bf a g a4 r8 a |
  a g g4. f8 g a |
  bf4. (a16 g a4. bf16 a |
  g4. a16 g f4. g16 f |
  e8 f) g g f4 f |
  f (e) f r8 f |
  f f f8. g16 a8 a r f |
  f f f8. g16 a8 a r4 |
  r2 a |
  bf1
  a
}

nhacPhienKhucTenor = \relative c' {
  r1
  r
  r
  r
  r
  r2 r4 r8 c |
  bf8. a16 bf8 c a g r4 |
  r2 r4 r8 e' |
  f4 r8 g c,4 r8 c |
  d8. c16 d8 e f c r c |
  d8. c16 d8 e f c r4 |
  r1
  r
  r
  c4 b!8. a16 g8 g r4 |
  c4 d8. c16 b!4 r8 b |
  c8. c16 c8. d16 d4 r8 b! |
  c8. b!16 c8. d16 e4 c8. c16 |
  c4. c8 c c c c |
  c c r4 r a8 d |
  c16 (bf a4) d8 c16 (bf) a8 a d |
  c16 (bf) a8 r4 r2 |
  r1
  r2 r4 r8 a |
  bf8. c16 d8. e16 c4 r |
  r2 r4 r8 c |
  bf4 c c r |
  r2 r4 r8 a |
  a bf16 (c) d8 d c a r bf |
  a bf16 (c) d8 d c a r bf |
  a bf16 (c) d8 d c a r f' |
  a, d16 (e) f8 f e c r f, |
  c' d16 (e) f8 f e e r4 |
  r8 e e e c c f d |
  d4 c d2 |
  g,4 r r2 |
  r r8 f f f |
  c'4. r8 c bf bf bf |
  a (bf16 c d8 d, g a16 bf c8 d16 e |
  f8 f, f'2 e4 |
  d8 c d4) c r |
  r8 a a a d4 r8 d |
  c c c c d4 c |
  c8 a d2 (c4 |
  d4. bf8) g4 r8 f' |
  f (d g f e c f a, |
  bf c bf4) c r8 a |
  a bf16 (c) d8. d16 c8 a r bf |
  a bf16 (c) d8. d16 c8 a r4 |
  r2 r8 e' e e |
  c4 r r8 d d a |
  b!4 r r8 b b b |
  c4 r r8 c c c |
  c4 r8 c8 d4. d8 |
  e4 d8 (c) b! (c16 d e8 d16 e |
  f4. e8) d4 r8 c |
  d (e) d4 e r8 a, |
  g c a f c' c r a |
  g c a f c' c r4 |
  r2 r8 e e e |
  d4 r r8 bf bf bf |
  g g c c f4 r8 f |
  d d bf bf c4 c8 c |
  d4 e f4. (g16 f |
  e4. f16 e d4. e16 d |
  c4) c8 e c4 d |
  c2 c4 r8 c |
  c a d e f c r d |
  c a d8. e16 f8 c r4 |
  r2 f |
  f1
  f
}

nhacPhienKhucBass = \relative c {
  r1
  r
  r
  r
  r
  r2 r4 r8 c |
  d8. c16 d8 e f c r4 |
  r2 r4 r8 c |
  d4 r8 e f4 r8 f |
  bf8. a16 bf8 g a f r f |
  bf8. a16 bf8 g a f r4 |
  r1
  r
  r
  c4 d8. d16 e8 e r4 |
  e4 f8. f16 g4 r8 g |
  a8. a16 a8. b!16 b4 r8 g |
  a8. g16 a8. b!16 c4 c,8. f16 |
  e16 (d c4) f8 e16 (d) c8 c f |
  e16 (d) c8 r4 r f8 bf |
  a16 (g f4) bf8 a16 (g) f8 f bf |
  a16 (g) f8 r4 r2 |
  r1
  r2 r4 r8 f |
  e8. f16 bf,8. bf16 f4 r |
  r2 r4 r8 a' |
  g4 f c' r |
  r2 r4 r8 f, |
  f g16 (a) bf8 bf a f r f |
  f g16 (a) bf8 bf a f r f |
  f g16 (a) bf8 bf g f r4 |
  r1
  r
  r8 c c c f4 r8 f |
  e e e e d (e16 f g8 g, |
  c c' d a bf g c bf |
  a4) f r2 |
  r1
  r
  r
  r
  r8 f f f bf4 r8 bf |
  a a a a g a16 (bf c8 c,) |
  f4 r8 f e (f16 g a8 a, |
  d e16 f g8 g, c d16 e f8 g16 a |
  bf8 bf, bf'2 a4 |
  g8 f g4) f r8 f |
  f g16 (a) bf8. bf16 a8 f r f |
  f g16 (a) bf8. bf16 a8 f r4 |
  r2 r8 c c c |
  f4 r r8 d d d |
  g4 r r8 e e e |
  a4 r r8 f f f |
  c'4 r8 c bf bf bf bf |
  a (b!16 c d8 d, g a16 b c8 c, |
  f f, f'2 e4 |
  d8 c d4) c r8 c |
  c d16 (e) f8 f e c r c |
  c d16 (e) f8 f e c r4 |
  r2 r8 c' c c |
  d4 r r8 d, d d |
  e4 r r8 f f f |
  bf4 r8 bf a a a a |
  g16 (a bf8 c c, f g16 a bf8 bf, |
  e8 f16 g a8 g, d' e16 f g8 g, |
  c d) e c f4 bf, |
  c2 f4 r8 f |
  f g16 (a) bf8 bf a f r f |
  f g16 (a) bf8 bf a f r4 |
  r2 f |
  bf1 |
  f
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Hỡi cửa điện ngọc ngà, cửa thiên quốc ơi!
  Mau nhịp nhàng mở tung ra,	
  mau chiếu soi lên sáng ngời
  hãy kính bái, kính bái Vua từ ái hiển vinh.
  Là Chúa các cơ binh, Thượng Đế rất uy linh,
  Vua khải hoàn ngự trị cõi thiên đình.
  Hỏi ai là Vua hiển vinh vậy?
  Hỏi ai là Vua hiển vinh vậy?
  Là Vua trên hết các vua.
  Này là Vua từ ái hiển vinh,
  đây là Vua từ ái hiển vinh.
  Này đây Vua chí ái hiển vinh,
  này là Vua chí ái hiển vinh,
  này là Vua chí ái hiển vinh.
  Này Vua, này Vua rất "hiển (i)" vinh thục hồi trần thế,
  Đức Vua uy linh bao "hiển (i)" vinh thục hồi trần thế
  Đức Vua uy linh bao "hiển (i)" vinh.
  Này là Vua từ ái hiển vinh, đây là Vua tứ ái hiển vinh.
  Thục hồi trần thế, thục hồi trần thế, thục hồi trần thế,
  thục hồi trần thế
  Đức Vua, uy linh bao "hiển (i)" vinh.
  Đây Vua, Vua chí ái hiển vinh,
  đây Vua, Vua chí ái hiển vinh.
  Thục hồi tội nhân, cứu rỗi thế trần,
  thục hồi trần thế
  đây Ngài là Vua rất "hiển (i)" vinh, Đức Vua thật hiển vinh.
  Này là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh.
  Vua hiển vinh.
}

loiPhienKhucAlto = \lyrics {
  Hỡi cửa điện nguy nga, cửa thiên cung ơi.
  Mau nhịp nhàng mở tung ra, mau chiếu soi lên rạng ngời
  hãy kính bái, kính bái Vua từ ái hiển vinh.
  Là Chúa cả cơ binh, Chúa Tể thật uy linh,
  Vua khải hoàn ngự trị cõi thiên đình.
  Hỡi cửa điện nguy nga, hỡi cửa thiên tòa
  mau nhịp nhàng mở tung ra,
  hãy chiếu dọi lên sáng ngời,
  hãy kính bái Đức Vua đầy từ ái hiển vinh,
  hãy kính bái đây Vua uy linh bao quang vinh.
  Hỏi ai là Vua hiển vinh vậy?
  Hỏi ai là Vua hiển vinh vậy?
  Người treo trên thánh giá kia
  là Chúa muôn vua.
  Này là Vua từ ái quang vinh,
  đây là Vua từ ái hiển vinh.
  Đây là Vua chí ái hiển vinh, đây là Vua chí ái hiển vinh,
  đây là Vua chí ái quang vinh,
  đây Vua hiển vinh Đức Vua uy linh bao "hiển (i)" vinh
  cứu rỗi thế nhân, này Vua
  Vua uy linh "hiển (i)" vinh, thục hồi trần thế
  đó chính là Vua thật "hiển (i)"
  Vua thật "hiển (i)" vinh.
  Này là Vua chí ái hiển vinh,
  đây là Vua từ ái quang vinh.
  Thục hồi trần thế cữu rỗi thế nhân,
  cứu rỗi thế nhân,
  cứu rỗi thế nhân
  đây Vua uy linh bao "hiển (i)" vinh, bao hiển (i) vinh.
  Này là Vua chí ái hiển vinh, đây là Vua chí ái hiển vinh.
  Thục hồi tội nhân, thục hồi tội nhân
  cứu rỗi tội nhân, đây Đức Vua bao hiển vinh,
  bao "hiển (i)" vinh, Đức Vua bao hiển vinh.
  Này là Vua từ ái quang vinh,
  này Vua (là) từ ái quang vinh.
  Vua hiển vinh.
}

loiPhienKhucTenor = \lyrics {
  Hỏi ai là Vua hiển vinh vậy?
  Là Vua hiển vinh. Hỏi ai là Vua hiển vinh vậy?
  Hỏi ai là Vua hiển vinh vậy?
  Hỡi cửa điện nguy nga, hỡi cửa thiên tòa mau nhịp nhàng mở tung ra,
  hãy chiếu dọi lên rạng rỡ,
  hãy kính bái đây Vua uy linh bao quang vinh,
  hãy kính bái Đức Vua đầy từ ái quang vinh.
  Người treo trên thánh giá kia là Chúa muôn vua.
  Này là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh.
  Đây là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh,
  này là Vua chí ái hiển vinh,
  đây Vua hiển vinh.
  Này chính đây Vua thật hiển vinh
  thục hồi tội nhân
  Đức Vua uy linh "hiển (i)" vinh,
  thục hồi trần thế Đức Vua uy linh bao hiển (i)
  vinh thật "hiển (i)" vinh,
  rất "hiển (i)" vinh.
  Này là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh.
  Thục hồi thế hệ cứu rỗi thế nhân,
  thục hồi tội nhân cứu rỗi thế nhân
  đây Vua uy linh bao "hiển (i)" vinh, bao hiển (i) vinh.
  Này là Vua chí từ quang vinh,
  đây là Vua chí từ quang vinh.
  Cứu rỗi tội nhân, cứu rỗi thế trần thục hồi tội nhân
  đây Vua vĩ đại thật uy linh,
  là Vua bao "hiển (i)" vinh,
  Đức Vua rất quang vinh.
  Đây Vua (là) nhân ái hiển vinh,
  đây Vua (là) từ ái hiển vinh.
  Vua hiển vinh.
}

loiPhienKhucBass = \lyrics {
  Hỏi ai là Vua hiển vinh vậy?
  Là Vua hiển vinh. Hỏi ai là Vua hiển vinh vậy?
  Hỏi ai là Vua hiển vinh vậy?
  Hỡi của điện nguy nga, hỡi của thiên tòa
  mau nhịp nhàng mở tung ra, hãy chiếu dọi lên rạng rỡ,
  hãy kính bái Đức Vua đầy từ ái hiển vinh,
  hãy kính bái Đức Vua đầy từ ái hiển vinh.
  Người treo trên thập tự kia là Vua mọi vua.
  Này là Vua chí ái hiển vinh,
  này là Vua chí ái hiển vinh.
  Đây là Vua chí ái hiển vinh,
  Đây Vua hiển vinh
  Đức Vua uy linh bao "hiển (i)" vinh.
  Thục hồi trần thế
  Đức Vua uy linh bao hiển (i) vinh, bao "hiển (i)" vinh.
  Này là Vua chí ái hiển vinh,
  này là Vua chí ái hiển vinh.
  Thục hồi trần thế cứu rỗi tội nhân,
  thục hồi tội nhân cứu rỗi tội nhân
  Đức Vua uy linh bao "hiển (i)" vinh.
  Này là Vua chí ái hiển vinh,
  này là Vua chí ái hiển vinh.
  Cứu rỗi tội nhân, cứu rỗi tội nhân
  thục hồi trần thế
  đây Vua uy linh bao "hiển (i)" vinh,
  vị Vua thật hiển vinh.
  Này là Vua chí ái hiển vinh,
  này là Vua chí ái hiển vinh.
  Vua hiển vinh.
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
}

TongNhip = {
  \key f \major \time 4/4
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
        instrumentName = #"S"
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -3 { \nhacPhienKhucSopPhu }
      \new NullVoice = "beSop" \nhacPhienKhucSop
      \new Lyrics \with {
          \override VerticalAxisGroup.
            nonstaff-relatedstaff-spacing.padding = #1
          \override VerticalAxisGroup.
            nonstaff-unrelatedstaff-spacing.padding = #1
        }
        \lyricsto "beSop" \loiPhienKhucSop
      >>
    \new Staff \with {
      instrumentName = #"A"
    } <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff \with {
      instrumentName = #"T"
    } <<
      \new Voice = "beTenor" {
        \clef "violin_8" \TongNhip \nhacPhienKhucTenor
      }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff \with {
      instrumentName = #"B"
    } <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBass
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBass
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1
  } 
}
