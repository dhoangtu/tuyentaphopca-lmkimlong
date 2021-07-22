% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #5 "Khúc Hát Mặt Trời" }
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \partial 4 r4
  r2
  r4 d |
  d8 c d4 |
  e2 |
  d4. e16 (d) |
  g,8 (c) a4 |
  g2 ~ |
  g4 g |
  d'2 ~ |
  d4 b |
  c8 c c b16 c |
  d4. e16 (d) |
  c8 a c c |
  a2 |
  g4. g8 |
  a (g) e g |
  a4. g8 |
  d' e d4 |
  c2 ~ |
  c4 r |
  r g8 c |
  b8. b16 a8 b |
  c4. a8 |
  e'4 g,8 g |
  #(define afterGraceFraction (cons 1 5))
  \afterGrace d'2 ( { \stemDown e16 d ) } |
  c2 ~ |
  c ~ |
  c4 \bar "||"
}

nhacPhienKhucAltoMot = \relative c' {
  \partial 4 r4
  r2
  r4 f |
  f8 e f4 |
  g2 ~ |
  g4 f8 g16 (f) |
  c4 c ~( |
  c d8 c) |
  b2 ~ |
  b4 r |
  r8 d d c16 d |
  e8 e e d16 e |
  g2 ~ |
  g8 e g g |
  f (e) d (c) |
  b4 b8 r |
  c r c e |
  f4. c8 |
  f g g (f) |
  e2 ~ |
  e4 r |
  r e8 g16 (a) |
  g8. g16 f8 f |
  e4. f8 |
  g4 e8 e |
  a (af) g (f) |
  e4 e8 e |
  f4 f |
  e
}

nhacPhienKhucBas = \relative c' {
  \partial 4 g4 |
  c8. g16 a8 (g) |
  d2 ~ |
  d4 d |
  c8 c c g16 c |
  d8 d d c16 d |
  e8 e f fs |
  g2 ~ |
  g4 r |
  r d |
  g8 g g e16 g |
  c4 a |
  b8 b b a16 b |
  c4 c, |
  d8 c d f |
  g4 f8 r |
  e r r c' |
  f,8. g16 f8 e |
  d4 g |
  a2 ~ |
  a4 d,8 f |
  e8. d16 d8 e |
  g4. g8 |
  a g c (d |
  c4) r8 c |
  <c f,>4 <b g> |
  <c c,> <g c,>8 <g c,> |
  <a f>4 <af f> |
  <g c,>
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Muôn cao và phép tắc riêng Chúa hưởng muôn kinh.
  Ngợi khen, ngợi khen tôn vinh và tôn đức,
  Chúa ơi riêng Chúa xứng muôn kinh.
  Ai dám gọi tên Chúa, gọi tên Chúa uy linh.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa tạo dựng muôn loài.
}

loiPhienKhucAltoMot = \lyrics {
  Muôn cao va phép tắc riêng Chúa hưởng muôn khinh.
  Tôn vinh và tôn đức,
  tôn vinh và tôn đức riêng Chúa xứng muôn muôn kinh.
  Ai, ai gọi tên Chúa,
  gọi tên Chúa uy linh.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài.
}

loiPhienKhucBasMot = \lyrics {
  Lạy Chúa thật nhân từ, nhân từ muôn cao và phép tắc,
  muôn cao và phép tắc Ngài hưởng muôn kinh.
  Ngợi khen tôn vinh và tôn đức,
  ngợi khen tôn vinh và tôn đức
  vì riêng Ngài hưởng muôn kinh.
  Ai ai dám gọi, dám gọi tên Ngài uy linh.
  Lạy Chúa tôi, tôi ngợi khen Chúa,
  ngợi khen vì Chúa đã dựng muôn loài,
  tạo dựng muôn muôn loài.
}

loiPhienKhucSopHai = \lyrics {
  Anh phân ngày đêm ánh sáng chiếu khắp nơi.
  Anh đẹp và hào quang anh chiếu rạng
  (anh chiếu rạng) Chúa cao vời.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa dựng các chị trăng sao
  đẹp tươi và lấp lánh giữa trời cao.
  Vì Chúa dựng nên anh Gió trời.
  Anh mây và bát tiết với tứ thời.
  Anh Trời quang và anh Không Khí,
  Chúa đặt các anh là vật quý để giữ gìn nuôi dưỡng sinh linh.
  Lạy vạn lạy Chúa,
  lạy vạn lạy Chúa tôi, tôi ngợi khen Chúa
  vì Chúa đã dựng nên dòng nước chị chúng tôi.
  Nước cần, nước cần (mà) nước quý,
  nước trong trắng đầy vơi (nước đầy vơi).
  Chúa tôi, tôi ngợi khen Chúa.
  Anh hùng mạnh và anh đẹp.
  Anh hùng mạnh và anh đẹp (anh dễ coi) anh dễ coi.
  (Đàn...)
  Lạy Chúa tôi, tôi ngợi khen Chúa
  vì Chúa dựng nên (đây) Mẹ Đất chúng tôi
  (Mẹ bồng bế, mẹ dưỡng nuôi).
  Mẹ sinh hoa đồng cỏ nội.
  và bốn mùa sinh trái tốt tươi.
  Lạy Chúa tôi, tôi ngợi khen Chúa
  vì bao người một lòng mến Chúa.
  Hằng (sẵn sàng mà tha thứ cho nhau).
  Vẫn một lòng mà vui chịu,
  vẫn một lòng mà vui chịu, vui chịu trước sau.
  Phúc cho người bình an vững chí.
  Chúa ơi (Chúa ơi) Chúa sẽ thưởng triều thiên.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa dựng chị chết
  chúng tôi ai mong thoát tay chị ở trên đời
  (vô phúc người chết còn vương tội lỗi).
  Hạnh phúc thay người khi hấp hối biết tuân phục thánh ý Chúa tôi
  vì người ấy không chết đời đời.
}

loiPhienKhucBasHai = \lyrics {
  Vì Chúa riêng dựng anh Mặt Trời,
  anh cho ánh sáng.
  Anh tượng trưng uy quyền Chúa cao vời.
  Vì Chúa dựng các chị trăng sao đẹp tươi và lấp lánh giữa trời cao.
  Lạy Chúa tôi, tôi ngợi khen Chúa.
  Anh Trời quang và anh Không Khí,
  Chúa đặt các anh là vật quý để giữ gìn nuôi dưỡng sinh linh.
  Tôi ngợi khen Chúa,
  tôi ngợi khen Chúa tôi, tôi tới khen Chúa dòng Nước chị chúng tôi.
  Nước cần nước quý nước đầy vơi.
  Lạy Chúa, lạy Chúa tôi, tôi ngợi khen Chúa
  vì anh Lửa giữa đêm tối sáng soi.
  Anh hùng mạnh và anh đẹp, anh đẹp và anh dễ coi.
  Mẹ bồng bế, mẹ dưỡng nuôi.
  Và bốn mùa sinh trái tốt tươi.
  Ngợi khen Thiên Chúa vì bao người một lòng mến Chúa.
  Hằng tha thứ cho nhau và bao người nhận cực khổ đớn đau.
  Vẫn một lòng và vui chịu,
  vẫn một lòng vui trước sau.
  Lạy Chúa, lạy Chúa, Chúa sẽ thưởng triều thiên.
  Lạy Chúa tôi, tôi ngợi khen Chúa
  vì Chúa dựng chị chết chúng tôi ai mong thoát tay chị ở trên đời.
  Hạnh phúc thay người khi hấp hối biết tuân phục thánh ý Chúa tôi
  vì người ấy không chết đời đời.
  Lạy Chúa chúng tôi xin chúc
}

loiPhienKhucSopBa = \lyrics {
  Ca khen tạ hơn Chúa suốt đời (mà) khiêm hạ.
  Lạy Chúa tôi, tôi ngợi khen Chúa vì Chúa tạo dựng muôn loài.
}

loiPhienKhucAltoBa = \lyrics {
  Ca khen tạ ơn Chúa suốt đời (mà) khiêm hạ.
  Lạy Chúa tôi, tôi ngợi khen Ngài
  vì Chúa tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài.
}

loiPhienKhucBasBa = \lyrics {
  tụng,
  chúc tụng ca khen tạ ơn Chúa,
  ca khen tạ ơn Chúa trọn đời khiêm hạ.
  Lạy Chúa tôi, tôi ngợi khen Chúa,
  ngợi khen vì Chúa đã dựng muôn loài
  tạo dựng muôn muôn loài,
  tạo dựng muôn muôn loài.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  %{{
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  %}
  print-page-number = ##f
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
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSopMot
      }
      \new Lyrics \lyricsto "beSop" \loiPhienKhucSopMot
      >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAltoMot
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    \override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  } 
}
