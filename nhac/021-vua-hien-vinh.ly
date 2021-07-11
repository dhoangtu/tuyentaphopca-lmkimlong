% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #5 "Vua Hiển Vinh" }
  subtitle = "(Lift up your heads, O ye gates)"
  subsubtitle = "(Trích ORATORIO The Messiah, phần 2, đoạn 33)"
  composer = "Nhạc: G. F. Handel"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  print-page-number = ##f
}

TongNhip = { \key f \major \time 4/4 }

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  f4 e8. d16 c8 c r4 |
  c4 d8 e16( f) e4 r8 c |
  bf bf bf8. c16 c4 r8 e |
  f8. e16 f8. g16 c,4 f8 f |
  f4. f8 f c f, d' |
  c16( bf) a8 r4 r2 |
  r1
  
}

nhacPhienKhucAlto = \relative c'' {
  
}

nhacPhienKhucTenor = \relative c' {
  
}

nhacPhienKhucBass = \relative c' {
  
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Hỡi cửa điện ngọc ngà, cửa thiên quốc ơi!
  Mau nhịp nhàng mở tung ra,
  mau chiếu soi lên sáng ngời
  hãy kính bái, kính bái Vua
  
  từ ái hiển vinh.
  
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
  Đức Vua uy linh bao "hiển (i)" vinh.
  Đây Vua, Vua chí ái hiển vinh,
  đây Vua, Vua chí ái hiển vinh.
  Thục hồi tội nhân, thục hồi tội nhân trần,
  thục hồi trần thế
  đây Ngài là Vua rất "hiển (i)" vinh, Đức Vua thật hiển vinh.
  Này là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh.
  Vua hiển vinh.
}

loiPhienKhucAlto = \lyrics {
  Hỡi cửa điện nguy nga, cửa thiên cung ơi.
  Mau nhịp nhàng mở ra, mau chiếu soi lên rạng ngời
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
  này là Vua chí ái hiển vinh,
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
  Hỏi ai là Vua hiển vinh vậy?
  Hỏi ai là Vua hiển vinh vậy?
  Người treo trên thánh giá kia là Chúa muôn vua.
  Này là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh.
  Đây là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh,
  đây là Vua chí ái hiển vinh,
  đây Vua hiển vinh.
  Này chính đây Vua thật hiển vinh
  thục hồi tội nhân
  Đức Vua uy linh "hiển (i)" vinh,
  thục hồi trần thế Đức Vua uy linh bao hiển (i)
  vinh thật "hiển (i)" vinh,
  rất hiển vinh.
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
  đây Vua (là) từ ái quang vinh.
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
\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = #"S"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSop }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff \with {
      instrumentName = #"A"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacPhienKhucAlto }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff \with {
      instrumentName = #"T"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacPhienKhucTenor }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff \with {
      instrumentName = #"B"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacPhienKhucBass }
      \new Lyrics \lyricsto beBass \loiPhienKhucBass
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2.5
    \override Lyrics.LyricSpace.minimum-distance = #0.5
  } 
}
