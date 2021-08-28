% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lạy Thiên Chúa" }
  composer = "Kinh Te Deum"
  poet = "Bản dịch: CGKPV"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

nhacIntroSop = \relative c'' {
  \key c \major \time 2/4
  \partial 4 g8. g16 |
  <e' c g>8 <e c g> r e |
  c c <f c>8. <d c>16 |
  <g d b>8 <g d b> <g d b>4 |
  <g d b> \bar "|"
}

nhacIntroBas = \relative c' {
  \key c \major \time 2/4
  r4 |
  <c c,>8 <c c,> r4 |
  r <a a,>8. <af af,>16 |
  <g g,>8 <g g,> <g b,> <d' d,> |
  <g g,>4
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 2/4
  \partial 4 g4 ~ |
  g a8 (b) |
  c4 r8 e |
  d d4 c8 |
  a4 d8 (c) |
  g4 g8 g |
  e e4 a8 |
  a4 a8 a |
  g g4 c8 |
  c2 ~ |
  c4 c8 g |
  a4 a16 (g) e8 |
  e4. d8 |
  d4 d8 e16 (d) |
  c4. a'8 |
  fs4 g |
  g e'8 d |
  e4 e8 c |
  a4 a8 (c) |
  g4 f8 g |
  e4. c8 |
  c g'4 g8 |
  a4 a8 c |
  d4. c8 |
  d e d (c) |
  g4 d16 (g) e (d) |
  c4. g'8 |
  e8 (g) c a |
  g2 |
  c4. c8 |
  c4 g8. g16 |
  e'8 e r e |
  c c f8. d16 |
  g8 g4. ~ |
  g4 r |
  r r8 g, |
  c4 a8 (g) |
  e8. d16 e8 g |
  a8. g16 a8 d |
  d4 d16 (e) d8 |
  c2 ~ |
  c4 r |
  R2*2
  r4 r8 c |
  b c d4 ~ |
  d8 d b (a) |
  g2 \bar "||"
  R2*8
  g4. d8 |
  g4 e'8 (d) |
  c c b (c) |
  d4 b16 (a) d8 |
  g,2 |
  c8 a4 b8 |
  c2 ~ |
  c4 r \bar "||" \break
  e4. c8 |
  d2 |
  d8 b r c |
  g2 |
  d4 e16 (d) c8 |
  c2 |
  a'8 g r a |
  a2 |
  a4 c8 (d16 c) |
  g4. e'8 |
  d a4 b8 |
  c2 |
  R2*5
  
  \key ef \major
  r4 r8 c16 af |
  g8 g c c |
  f,4 g8 (bf) |
  c4. c8 |
  af8 af16 af f8 af |
  c c16 c b!8 c |
  d4. c16 c |
  ef8 d b! g |
  c2 \bar "||"
  
  \key c \major
  g8. e'16 d8 d |
  f f r g |
  g f e4 |
  r8 e e d |
  c2 |
  \once \stemDown a8 (c4) a8 |
  g4. e8 |
  f d4 d8 |
  \slashedGrace { b16 (d } g2)
  
  \time 3/4
  e2 e8 (f) |
  d2 a'4 |
  c2 c4 |
  b2. |
  b2 e4 |
  a,2 f'8 f |
  d2 c8 (d) |
  e2 e8 c |
  
  \time 2/4
  e4. d16 (c) |
  a8 a4 a8 |
  b4 g8 b |
  e, e4 e8 |
  c'4 b |
  a2 ~ |
  a4 r |
  \repeat volta 2 {
    r8 a g g |
    g8. g16 a8 g |
    c4. c8 |
    d8. a16 d8 c |
    b2 |
    r4 e16 (f) e (d)
  }
  \alternative {
    {
      c4 c8 a |
      f'4. e8 |
      d2 ~ |
      d4 r
    }
    {
      c4 c8 a |
      d4. c8 |
      c2 ~ |
      c4 r
    }
  }
  \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 2/4
  g4 ~ |
  g a8 (b) |
  c4 r8 c |
  b b4 g8 |
  f (e) d4 |
  b b8 b |
  c c4 c8 |
  c4 c8 c |
  b b (d) f |
  f4 (g8 f |
  e4) c'8 g |
  a4 a16 (g) e8 |
  e4. d8 |
  d4 d8 e16 (d) |
  c4. a'8 |
  fs4 g |
  g g8 g |
  g4 g8 g |
  f4 d8 (c) |
  b4 b8 b |
  c4. c8 |
  c b4 c8 |
  c4 c8 c |
  f4. e8 |
  a8 a f4 |
  e8 (c) b b |
  c4. b8 |
  c (e) d c |
  b2 |
  g'4. e8 |
  a4 g8. g16 |
  g8 g r g |
  a a a8. a16 |
  d8 d4. ~ |
  d4 r8 g, |
  c4 a8 (g) |
  e4. d8 |
  c4. e8 |
  f4. f8 |
  f4 f8 f |
  e2 ~ |
  e4 r
  R2*2
  r4 r8 e |
  d e g4 ~ |
  g8 fs fs4 |
  d2 |
  R2*8
  g4. d8 |
  g4 c8 (b) |
  a a f (e) |
  g4 fs8 fs |
  g2 |
  e8 f4 g8 |
  e2 ~ |
  e4 r |
  c'4. e,8 |
  g2 |
  f8 g r d |
  b2 |
  b4 b8 c |
  c2 |
  f8 e r c |
  c2 |
  c4 c |
  b4. g'8 |
  f f4 f8 |
  e2 |
  R2*5
  
  \key ef \major
  R2*2
  r4 r8 g16 f |
  ef8 ef af af |
  d,4. f8 |
  ef8 ef16 ef d8 ef |
  g4. ef16 ef |
  af8 af g f |
  ef2 |
  
  \key c \major
  g8. c16 b8 b |
  a a r c |
  b b c4 |
  r8 g g f |
  e2 |
  e4. d16 (c) |
  b4. c8 |
  c c4 c8 |
  b2 |
  
  \time 3/4
  c2 c4 |
  a2 f'4 |
  e2 a4 |
  gs2. |
  gs2 a4 |
  f2 c'8 c |
  a2 a4 |
  gs2 c8 a |
  
  \time 2/4
  g4. a8 |
  f8 f4 f8 |
  e4 e8 d |
  c c4 c8 |
  a'4 gs |
  a2 ~ |
  a4 r |
  
  R2
  r8 d, c c |
  c8. c16 d8 c |
  f4 f |
  g g16 (a) g (f) |
  e4. a8 |
  a4 e8 e |
  a4. c8 |
  b2 ~ |
  b4 r |
  a e8 e |
  a4 f |
  e2 ~ |
  e4 r
}

nhacPhienKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 2/4
  g4 ~ |
  g a8 (b) |
  c4 r8 c |
  g g4 e8 |
  f4 fs |
  g g8 g |
  a a4 a8 |
  f4 f8 fs |
  g8 g4 g8 |
  c,2 ~ |
  c4 r |
  R2*5
  r4 c'8 b |
  c4 c8 e, |
  f4 fs |
  f4 f8 f |
  a4. a8 |
  af g4 e8 |
  f4 f8 e |
  d4. a'8 |
  f f f4 |
  g4 g8. f16 |
  e4. d8 |
  c4 e8 f |
  g4. (f8) |
  e4. c8 |
  f4 g8. g16 |
  c8 c r e, |
  f e d8. d'16 |
  b8 b4 g8 |
  c4 a8 (g) |
  e4. d8 |
  c4 e8 g |
  a4. g8 |
  <c f,>4. <c f,>8 |
  <c d,>4 <b g>8 <b g> |
  <g c,>2 ~ |
  <g c,>4 c,8 e |
  d4. d16 (f) |
  g8 g e (g) |
  a2 |
  r8 c b c |
  d4 c8 <c d,> |
  <b g>2 |
  c,4 ef8 (d) |
  c2 |
  f8 f ef (f) |
  g2 |
  c8 f,4 f8 |
  g2 |
  f8 g d (c) |
  c2 \bar "||"
  R2*8
  c'2 |
  b |
  a8 g r fs |
  g2 |
  g4 f8 e |
  e2 |
  d8 e r a, |
  f'2 |
  f4 e8 (f) |
  g4. g,8 |
  d' d4 g8 |
  c,2 |
  c4 f8 e |
  e4. e8 |
  f d e (g) |
  a4 g8 g |
  d'4. b8 |
  
  \key ef \major
  c2 |
  r4 r8 f,16 ef |
  d8 d g g |
  c,4. c8 |
  f4. f16 f |
  c8 ef g4 ~ |
  g8 d16 d af'4 |
  f4 g8 g |
  c,2 |
  
  \key c \major
  R2
  d8. d16 e8 e |
  g g r c |
  c4 g |
  a2 |
  a4. f8 |
  g4. a8 |
  d, f4 a8 |
  g2 |
  
  \time 3/4
  a2 g4 |
  f (e) d |
  a'2 d,4 |
  e2. |
  d2 c4 |
  d2 a8 a |
  f'2 f4 |
  e2 r4 |
  
  \time 2/4
  R2*6
  r8 e d d |
  d8. d16 e8 d |
  g4 e |
  a4. a8 |
  d,4 d |
  g4. g8 |
  c16 (d) c (b) a4 ~ |
  a a8 c |
  f,4. fs8 |
  g2 ~ |
  g8 e d d |
  a'4 a8 c |
  <c f,>4 <b g> |
  <c g c,>2 ~ |
  <c g c,>4 r
}

% Lời
loiPhienKhucSop = \lyrics {
  Lạy Thiên Chúa chúng con xin ca ngợi hát mừng,
  tuyên xưng Ngài là Đức Chúa, tuyên xưng Ngài là Đức Chúa.
  Chúa là Cha, Đấng trường tồn vạn đại,
  hoàn vũ này kính cẩn suy tôn.
  Trước nhan Chúa các Tổng Thần phủ phục,
  mọi thiên thần và đạo binh thiên quốc cảm tạ Cha
  và cung chúc tôn thờ chẳng khi ngừng vang dậy tiếng tung hô:
  Thánh, chí thánh ngàn trùng chí thánh
  Chúa Tể càn khôn là Đấng Thánh.
  Trời đất rạng ngời, rạng ngời vinh quang,
  rạng ngời vinh quang Chúa uy linh.
  Bao vi ngôn sứ tán dương Ngài.
  Và trải rộng khắp nơi trên trần thế,
  Hội Thánh Ngài hoan hỉ tuyên xưng:
  Chúa là Cha lẫm liệt uy hùng
  và Con Một Ngài chí tôn, chí ái,
  cùng Thánh Thần, Đấng an ủi yêu thương.
  Đấng chẳng nề mặc lấy xác phàm,
  mặc lấy xác phàm nơi cung lòng Trinh Nữ,
  nơi cung lòng Trinh Nữ,
  hầu giải phóng nhân loại lầm than.
  Ngài đã ra tay chiến thắng,
  chiến thẳng tử thần, chiến thắng tử thần.
  Mở cửa trời cho những ai tin tưởng.
  Ngài hiển trị bên hữu Chúa Cha,
  ngày cuối cùng sẽ giáng lâm thẩm phán.
  Cúi lạy Chúa xin phù hộ bề tôi,
  Ngài cứu chuộc bằng bửu huyết tuôn tràn.
  Xin được hợp đoàn cùng muôn thần thánh,
  thần thánh hưởng phúc vinh quang,
  phúc miên trường, vui hưởng anh vinh quang.
  trường, vui hưởng ánh vinh quang.
}

loiPhienKhucAlto = \lyrics {
  Lạy Thiên Chúa chúng con xin ca ngợi hát mừng,
  tuyên xưng Ngài là Đức Chúa, tuyên xưng Ngài là Đức Chúa.
  Chúa là Cha, Đấng trường tồn vạn đại,
  hoàn vũ này kính cẩn suy tôn.
  Trước nhan Chúa các Tổng Thần phủ phục,
  mọi thiên thần và đạo binh thiên quốc cảm tạ Cha
  và cung chúc tôn thờ chẳng khi ngừng vang dậy tiếng tung hô:
  Thánh, chí thánh ngàn trùng chí thánh
  Chúa Tể càn khôn là Đấng Thánh.
  Trời đất rạng ngời, rạng ngời vinh quang, vinh quang Chúa uy linh.
  Bao vi ngôn sứ tán dương Ngài.
  Và trải rộng khắp nơi trên trần thế,
  Hội Thánh Ngài hoan hỉ tuyên xưng:
  Chúa là Cha lẫm liệt uy hùng
  và Con Một Ngài chí tôn, chí ái,
  cùng Thánh Thần, Đấng an ủi yêu thương.
  Đấng chẳng nề mặc lấy xác phàm,
  Trinh Nữ,
  nơi cung lòng Trinh Nữ,
  hầu giải phóng nhân loại lầm than.
  Ngài đã ra tay chiến thắng,
  chiến thẳng tử thần, chiến thắng tử thần.
  Mở cửa trời cho những ai tin tưởng.
  Ngài hiển trị bên hữu Chúa Cha,
  ngày cuối cùng sẽ giáng lâm thẩm phán.
  Cúi lạy Chúa xin phù hộ bề tôi,
  Ngài cứu chuộc bằng bửu huyết tuôn tràn.
  Xin được hợp đoàn cùng muôn thần thánh vinh quang,
  phúc miên trường,
  miên trường, vui hưởng ánh vinh quang.
  trường, vui hưởng ánh vinh quang.
}

loiPhienKhucBas = \lyrics {
  Lạy Thiên Chúa chúng con xin ca ngợi hát mừng,
  tuyên xưng Ngài là Đức Vua, tuyên xưng Ngài là Đức Vua.
  Trước nhan Chúa, các Tổng Thần phủ phục,
  mọi thiên thần và đạo binh thiên quốc cảm tạ Cha
  và cùng phục lạy thờ chẳng khi ngừng vang dậy lời tung hô:
  Thánh, cực thánh ngàn trùng chí thánh Vua Tể càn khôn
  Chúa chí thánh, trời đất rạng ngời,
  rạng ngời vinh quang Chúa, vinh quang,
  vinh quang Chúa chí linh.
  Đoàn Tông Đồ đồng thanh ca ngợi Chúa.
  Bao vị ngôn sứ tán tụng Ngài.
  Đoàn Tử Đạo quang huy hùng dũng,
  máu đàu đổ ra minh chứng về Ngài
  Chúa Cha lẫm liệt uy hùng
  và Con Một Ngài chí tôn, từ ái,
  cùng Thánh Thần vị an ủi mến thương.
  Lạy Đức Ki -- tô, Con Chúa Trời hằng sống,
  Ngài là Chúa hiển vinh.
  Đấng chẳng nề mặc lấy xác phàm,
  mặc lấy nơi cung lòng Trinh Nữ hầu giải phóng nhân thế khóc than.
  Ngài đã ra tay chiến thắng
  chiến thắng tử thần.
  Mở cửa trời cho những ai tin tưởng.
  Ngài hiển trị bên hữu của Cha,
  ngày tận cùng sẽ phục lâm thẩm phán.
  Xin được hợp đoàn cùng muôn thần thánh,
  thần thánh kết đoàn vinh quang hưởng phúc miên trường
  vui hưởng ánh vinh quang.
  Xin được hợp...
  trường, vui hưởng ánh vinh quang.
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
  %page-count = 6
}

TongNhip = {
  \key g \major \time 2/4
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
    \new Staff<<
     \new Voice = "beSop" {
       \clef treble \nhacIntroSop
     }
     >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \nhacIntroBas
      }
    >>
  >>
  \layout {
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    ragged-last = ##f
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1
  }
}
