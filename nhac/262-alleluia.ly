% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Alleluia" }
  composer = "Nhạc: Lully"
  poet = "Hòa âm: Noyon"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

nhacPhienKhucSop = \relative c'' {
  \partial 16*9 g16 g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf16 bf4 c4 |
  ef8 d c bf a4 d |
  c8 (bf) a r16 bf g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf c4 d |
  ef8 d c bf bf4 a |
  g4. r16 a a4 a |
  bf a8. g16 a4 bf |
  c4. r16 bf c4 d |
  g, a8 bf c bf a g |
  g (fs) d r16 a' a4 a |
  bf a8. g16 a4 bf |
  c4. r16 bf c4 d |
  ef8 d c bf bf4 a |
  r4 r8. g16 g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf c4 d |
  ef8 d c bf a4 d |
  c8 (bf) a r16 bf g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf c4 d |
  ef8 d c bf bf4 a |
  g4. r16 a a4 a |
  bf a8. g16 a4 bf |
  c r8 bf c4 d |
  g, a8 bf c bf a g |
  g (fs) d r16 a' a4 a |
  bf a8. g16 a4 bf |
  c4. r16 bf c4 d |
  ef8 d c bf bf4 a |
  g4. r16 g g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf c4 d |
  ef8 d c bf a4 d |
  c8 (bf) a r16 bf g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf c4 d |
  ef8 d c bf bf4 a |
  g4. r16 a a4 a |
  bf a8. g16 a4 bf |
  c r8 bf c4 d |
  g, a8 bf c bf a g |
  g (fs) d r16 a' a4 a |
  bf a8. g16 a4 bf |
  c4. r16 bf c4 d |
  ef8 d c bf bf4 a |
  g1 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \partial 16*9 g16 g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  bf4. r16 g g4 g |
  g8 g g g g4 g |
  a8 (g) fs r16 bf g4 d |
  g4.. fs16 g8. fs16 g8. g16 |
  g4. r16 f g4 a8 (b!) |
  c bf a g g4 f |
  g4. r16 a a4 a |
  bf4 a8. g16 a4 bf |
  c4. r16 bf c4 d |
  g, a8 bf c bf a g |
  g (fs) d r16 fs fs4 fs |
  g fs8. e!16 fs4 g |
  g4. r16 g g4 g |
  g8 g g g g4 fs |
  g4. r8 r2 |
  \tuplet 3/2 { d8 d d } d r r2 |
  \tuplet 3/2 { g8 g g } g r r2 |
  \tuplet 3/2 { g8 g g } g r r4 g8 r |
  \tuplet 3/2 { g8 g g } f r r2 |
  \tuplet 3/2 { d8 d d } d r r2 |
  \tuplet 3/2 { f8 f f } f r g r g r |
  \tuplet 3/2 { g8 g8 g } g r g r fs r |
  g r r r16 f g4 f |
  g f8. ef16 f4 g |
  a r8 g a4 g8 (f) |
  ef4 r g8 r ef r |
  d4. r16 f f4 f |
  g fs8. e!16 fs4 g |
  a4. r8 g r g r |
  \tuplet 3/2 { g f g } g r g r f r |
  g8 r r r16 g g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf c4 d |
  ef8 d c bf a4 d |
  c8 (bf) a r16 bf g4 d |
  g4.. a16 bf8. a16 bf8. g16 |
  d'4. r16 bf c4 d |
  ef8 d c bf bf4 a |
  g4. r16 fs fs4 fs |
  g fs8. e!16 fs4 g |
  a r8 g a4 f |
  g g8 f ef ef e! e |
  d4 d8 r16 f g4 d |
  d d8. d16 d4 d |
  ef4. r16 g g4 g |
  g8 g g g g4 fs |
  g1
}

nhacPhienKhucBas = \relative c' {
  \partial 16*9 g16 g4 d |
  g4.. fs16 g8. fs16 g8. g16 |
  g4. r16 g ef4 d |
  c8 d ef d c4 bf |
  c d8 r16 bf' g4 d |
  g4.. d16 g8. d16 g8. ef16 |
  bf4. r16 d ef4 g |
  c,8 d ef d c4 d |
  g,4. r8 r2 |
  R1
  r4 r8. bf'16 bf8 (a) g (f) |
  ef (d) c bf a bf c cs |
  d4 d8 r16 d d4 d |
  g d8. bf16 d4 g8 (ef) |
  ef4. r16 d ef4 b! |
  c8 d ef d c4 d |
  g4. r8 r2 |
  <<
    {
      \tuplet 3/2 { bf8 bf bf } bf r r2 |
      \tuplet 3/2 { bf8 bf bf } bf r r2 |
      \tuplet 3/2 { c8 c c } c r r4 d8 r |
      \tuplet 3/2 { d d d } d r r2 |
      \tuplet 3/2 { bf8 bf bf } bf r r2 |
      \tuplet 3/2 { bf8 bf bf } bf r g r bf r |
      \tuplet 3/2 { c8 c c } c r d r d r |
      g,
      
    }
    {
      \tuplet 3/2 { g8 g g } g r r2 |
      \tuplet 3/2 { g8 g g } g r r2 |
      \tuplet 3/2 { c,8 c c } c r r4 d8 r |
      \tuplet 3/2 { g g g } d r r2 |
      \tuplet 3/2 { g8 g g } g r r2 |
      \tuplet 3/2 { bf,8 bf bf } bf r ef r d r |
      \tuplet 3/2 { c c c } ef r d r d r |
      g,
      
    }
  >>
  
  \oneVoice
  r r4 d''2 ~ |
  d4. r8 d2 ~ |
  d4 ef2 bf4 |
  c r <d g,>8 r
  <<
    {
      \voiceOne
      c8 (bf) |
      a a\rest fs
    }
    \\
    \new Voice = "splitpart" {
	    \voiceTwo
      ef8 c\rest |
      d4 (d8)
    }
  >>
  \oneVoice
  r8
  <<
    {
      \tuplet 3/2 { d' d d } d r |
      \tuplet 3/2 { d d d } d r \tuplet 3/2 { d d d } d r |
      \tuplet 3/2 { d d d } d r g, r bf r |
      \tuplet 3/2 { c c c } c r d r d r |
      g,
    }
    {
      \tuplet 3/2 { d8 d d } d r |
      \tuplet 3/2 { d d d } d r \tuplet 3/2 { d d d } d r |
      \tuplet 3/2 { d d d } d r ef r d r |
      \tuplet 3/2 { c c c } c r d r d r |
      g,
    }
  >>
  \oneVoice
  r8 r4 r r8. g'16 |
  g4 d g4.. a16 |
  bf8. a16 bf8. g16 d'4. r16 bf |
  c4 d ef8 d c bf |
  a4 d c8 (bf) a r16 bf |
  a4 d, g4.. a16 |
  bf8. a16 bf8. g16 d'4. r16 bf |
  c4 d ef8 d c bf |
  bf4 g
  <<
    {
      d'4. r8 |
      R1
      r4 d a bf |
      bf4 c8 d ef g, a bf |
      bf (a) fs r16 d' cs4 c! |
      bf c8. bf16 a4 g |
      g4. r16 d' c4 bf |
      a8 bf c d ef4 c |
      bf1
    }
    {
      d,4. r8 |
      R1
      r4 d f bf, |
      ef4 d8 d c c c d |
      d8 _~ d d8 r16 d e!4 fs |
      g g8. g16 f4 d |
      c4. r16 d e4 d |
      c8 bf ef d c4 d |
      g1
    }
  >>
}


loiPhienKhucSop = \lyrics {
  Al -- le -- lu -- ia,
  Đêm vắng sương tuyết lạnh giá,
  Ngàn mây vương lối trăng sao u buồn khuất xa mờ.
  Al -- le -- lu -- ia,
  Bao ánh quang xóa màn tối
  và muôn thiên sứ hân hoan ca vang lưng trời.
  Đây ta loan báo Tin Mừng cho mọi nơi:
  Kìa trong máng lừa một vị Cứu Tinh đã sinh ra đời.
  Tôn vinh Thiên Chúa trên trời cao hiển danh
  và nơi dương thế khang an cho ai ngay
  Al -- le -- lu -- ia,
  Ta hãy nghe sứ thần Chúa
  cùng nhau đi tới Be -- lem như lời đã ban truyền.
  Al -- le -- lu -- ia
  Hang đá nơi cánh đồng vắng
  giờ đây nên chính cung ngai cho Vua uy quyền.
  Hân hoan chiêm bái kia Hài Nhi nhỏ xinh
  nằm trong máng lừa,
  Mẹ Trinh khiết vấn trong khăn tinh tuyền.
  Tôn vinh Thiên Chúa trên trời cao hiển danh
  và nơi dương thế khang an cho ai ngay lành.
  Al -- le -- lu -- ia
  Mau hãy nghiêng gối thờ kính,
  Tạ ơn Con Chúa yêu thương nhân loại đến quên mình.
  Al -- le -- lu -- ia,
  Đêm thánh chan chứa hồng phúc,
  Trời cao đất thấp nay đã hân hoan giao hòa.
  Đau thương tan biến, tâm hồn nghe thảnh thơi
  vì Ơn Cứu Độ sẽ mở lối cho ta lên quê trời.
  Tôn vinh Thiên Chúa trên trời cao hiển danh
  và nơi dương thế khang an cho ai ngay lành.
}

loiPhienKhucAlto = \lyrics {
  Al -- le -- lu -- ia,
  Đêm vắng sương tuyết lạnh giá,
  Ngàn mây vương lối trăng sao u buồn khuất xa mờ.
  Al -- le -- lu -- ia,
  Bao ánh quang xóa màn tối
  và muôn thiên sứ hân hoan ca vang lưng trời.
  Đây ta loan báo Tin Mừng cho mọi nơi:
  Kìa trong máng lừa một vị Cứu Tinh đã sinh ra đời.
  Tôn vinh Thiên Chúa trên trời cao hiển danh
  và nơi dương thế khang an cho ai ngay lành.
  Al -- le -- lu -- ia Al -- le -- lu -- ia
  Al -- le -- lu -- ia la Al -- le -- lu -- ia
  Al -- le -- lu -- ia Al -- le -- lu -- ia la la
  Al -- le -- lu -- ia la la la
  Hân hoan chiêm bái kia Hài Nhi nhỏ xinh nằm trong máng lừa.
  la la la Tôn vinh Thiên Chúa trên trời cao hiển danh.
  la la Al -- le -- lu -- ia
  la la la Al -- le -- lu -- ia
  Mau hãy nghiêng gối thờ kính,
  Tạ ơn Con Chúa yêu thương nhân loại đến quên mình.
  Al -- le -- lu -- ia, Đêm thánh chan chứa hồng phúc,
  Trời cao đất thấp nay đã hân hoan giao hòa.
  Đau thương tan biến, tâm hồn nghe thảnh thơi
  vì ơn Cứu Độ sẽ mở lối cho ta lên quê trời.
  Tôn vinh Thiên Chúa trên trời cao hiển danh
  và nơi dương thế khang an cho ai ngay lành.
}

loiPhienKhucBas = \lyrics {
  Al -- le -- lu -- ia, Đêm vắng sương tuyết lạnh giá,
  Ngàn mây vương lối trăng sao u buồn khuất xa mờ.
  Al -- le -- lu -- ia, Bao ánh quang xóa màn tối
  và muôn thiên sứ hân hoan ca vang lưng trời.
  Kìa nơi máng lừa một vị Cứu Tinh đã sinh ra đời.
  Tôn vinh Thiên Chúa trên trời cao hiển danh
  và nơi dương thế khang an cho ai ngay lành.
  Al -- le -- lu -- ia Al -- le -- lu -- ia
  Al -- le -- lu -- ia la Al -- le -- lu -- ia
  Al -- le -- lu -- ia Al -- le -- lu -- ia la la
  Al -- le -- lu -- ia la la la la la la la la la
  Al -- le -- lu -- ia Al -- le -- lu -- ia
  Al -- le -- lu -- ia Al -- le -- lu -- ia la la
  Al -- le -- lu -- ia la la la Al -- le -- lu -- ia
  Mau hãy nghiêng gối thờ kính tạ ơn Con Chúa
  yêu thương nhân loại đến quên mình.
  Al -- le -- lu -- ia, Đêm thánh chan chứa hồng phúc,
  Trời cao đất thấp nay đã hân hoan giao hòa.
  Bởi Ơn Cứu Độ sẽ mở lối cho ta lên quê trời.
  Tôn vinh Thiên Chúa trên trời cao hiển danh
  và nơi dương thế khang an cho ai ngay lành.
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
  %page-count = 8
}

TongNhip = {
  \key bf \major \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
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
      \new Lyrics \lyricsto "splitpart" {
        \override LyricText.extra-offset = #'(0 . 3)
        la la la
      }
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.1
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #0.5
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
