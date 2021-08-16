% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Giao Duyên" }
  composer = " "
  poet = "Thơ dịch: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

nhacIntroSop = \relative c'' {
  
}

nhacIntroBas = \relative c {
  
}

nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  
  r8 <d a f d>8 r d16 c |
  d8 g, <a f d>8. <bf g d>16 |
  <a f d>8 <a e c> r d16 c |
  d8 d, <g d>8. <a f>16 |
  <g f>8 <g e> r <g d> |
  <f d>8. <g d>16 <a d,>8 <e cs> ~ | \break
  <e cs>4 r4 |
  r a8. bf16 |
  a8 a r g |
  g4. g8 |
  f8. g16 a8 e ~ |
  e2 |
  d'8. d16 a8 a ~ |
  a2 |
  
}

nhacPhienKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  
  R2*7
  r4 f8. g16 |
  f8 f r f |
  e4. e8 |
  d8. e16 d8 cs ~ |
  cs2 |
  a'8. a16 g8 f ~ |
  f2 |
  
}

nhacPhienKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  
  d8 r a r |
  r4. d8 |
  d <a' e a,> d, r |
  r4
  <<
    {
      \voiceOne g8. a16 |
      g8 g r4
    }
    \new Voice = "splitpart" {
	    \voiceTwo r8 d |
	    b! c cs4
    }
  >>
  \oneVoice
  d8 r r4 |
  <a' e a,>8
  
  a4 ^> a,8 |
  d2 ~ |
  d4 b! |
  c8. g16 c8 (cs) |
  d4 r8 a' |
  a a bf (a16 g) |
  f4 r |
  r d8 f ~ |
  
}

loiPhienKhucSop = \lyrics {
  Intro... \repeat unfold 21 { _ }
  Mây nước yêu yêu
  không gian trang hoàng như lễ trọng.
  Gió hết cô liêu.
  Si -- on yêu kiều lòng nở hoa hy vọng.
  Ai đến đàng xa.
  Sáng hơn sao xa.
  Ai đến đàng xa. Ai ai đến đàng xa
  đẹp hơn trời hoa.
  Nhanh đi em ơi! Xé bức khăn tang
  thắm lên vạn nụ cười, thắm lên vạn nụ cười.
  Này Si -- on nhanh chóng đi em ơi!
  Xé bức khăn tang thăm lên vạn nụ cười.
  Thắm lên vạn nụ cười
  trang điểm mau đón mừng Vua cao cả.
  Đến với em cần chi xe song mã.
  Hỡi cửa thành hỡi cửa thành nâng cao mi lên,
  nâng cao mi lên để tiến vào một triều nguyên ánh sáng.
  Trăng hòa bình soi đồi núi Bê -- lem.
  Và muôn phương thôi những ngày tao loạn.
  loạn.
  Ai đến đàng xa.
  Sáng hơn sao sa.
  Ai đến đàng xa.
  Ai ai đến đàng xa đẹp hơn trời hoa.
  Ô ô ô kìa sống núi chảy mật ong.
  Có suối sữa thơm ứ vạn dòng.
  Có suối sữa thơm ứ vạn dòng.
  Ô ô kìa ô ô kìa ô ô ô kìa
  Muôn chim thánh thót vọng trên không.
  Ai về thành đô xem ánh sáng.
  Ngập tràn khắp nẻo chốn hoàng vương.
  Nghe dàn thiên nhạc qua năm tháng
  Hòa bình là tuổi của tình thương.
  Trời Si -- on tưng bừng như mở hội.
  Hoa đăng về thắm lên tình hôn phối.
  Hỡi loài người!
  Hỡi loài người phút trời đất giao duyên.
  
  \set stanza = "Solo:"
  Trong im lìm là nghĩa của tình điên.
}

loiPhienKhucAlto = \lyrics {
  Mây nước yêu yêu không gian trang hoàng như lễ trọng.
  Gió hết cô liêu.
  Si -- on yêu kiều lòng nở hoa hy vọng.
  Ai ai đến đàng xa.
  Ai ai đến đàng xa, đến đàng xa.
  Ai ai đến đàng xa đẹp hơn trời hoa.
  Nhanh đi em ơi!
  Xé bức khăn tang thắm lên vạn nụ cười,
  đẹp lên vạn nụ cười.
  Này nay hãy mau đi em ơi!
  Xé bức khăn tang thắm lên vạn nụ cười.
  Thắm lên vạn nụ cười.
  Trang điểm mau mừng Vua mừng Vua cao cả.
  Đến với em cần chi xe song mã.
  Hỡi cửa thành hỡi của thành nâng cao mi lên.
  Nâng cao mi lên,
  nâng cao mi lên để tiến vào một triều nguyên ánh sáng.
  Trăng hòa bình soi đồi núi Bê -- lem.
  Và muôn phương thôi những ngày tao loạn.
  loạn.
  Ai ai đến đàng xa.
  Ai ai đến đàng xa đến đàng xa.
  Ai ai đến đàng xa đẹp hơn trời hoa.
  Ô ô ô kìa ô kìa.
  Ô kìa ô ô kìa ô ô kìa.
  Ô ô kìa ô ô kìa.
  Có suối sữa thơm ứ vạn dòng. Ô ô kìa ô ô kìa
  ô ô ô kìa. Muôn chim thánh thót vọng trên không.
  Ai về ai ai về đô thành.
  Păng păng păng păng.
  Păng păng păng păng.
  Păng păng păng păng.
  Păng păng păng păng păng.
  Păng păng păng păng.
  Trời Si -- on tưng bừng như mở hội.
  Hoa đăng về thắm lên tình hôn phối.
  Hỡi loài người!
  Hỡi loài người giờ trời đất giao duyên.
  
  \set stanza = "Ca đoàn:"
  Hm Hm __ _ _ _ _ _
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 12 { _ }
  Bỗng một chiều không gian mà điểm trang
  không gian như lễ trọng.
  Thời gian tràn ý sống.
  Si -- on nở hoa hy vọng.
  Ai ai đến đàng xa.
  Ai ai đến đàng xa.
  Hùng hơn mặt nhật.
  Ai đến kia đẹp trời hoa.
  Nào Si -- on nhanh chóng đi em ơi!
  Xé bức khăn tang
  đẹp lên vạn nụ cười, đẹp lên vạn nụ cười.
  Này này hãy mau đi em ơi!
  Xé bức khăn tang
  đẹp lên vạn nụ cười, đẹp lên vạn nụ cười.
  Trang điểm mau mưng, mừng Vua cao cả
  lại cùng em đâu cần song mã.
  Hỡi cửa thành hỡi cửa thành nâng cao mi lên.
  Hỡi cửa thánh nâng cao mi lên,
  nâng cao mi lên để tiến vào một triều nguyên ánh sáng.
  Trăng hòa bình soi núi đồi Bê -- lem.
  Và muôn phương thôi những ngày tao loạn.
  Nào Si...
  loạn.
  Ai ai đến đàng xa.
  Ai ai đến đàng xa.
  Hùng hơn mặt nhật. Ai đến kìa đẹp trời hoa.
  Ô ô ô kìa ô kìa ô ô kìa ô ô kìa.
  Ô ô kìa ô ô kìa.
  Có suối sữa thơm ứ vạn dòng.
  Hoa cỏ tưng bừng vui đồng nội.
  Ô kìa thanh thót vọng trên không.
  Ai về ai về xem ánh sáng.
  Păng păng păng păng.
  Păng păng păng păng.
  Păng păng păng păng.
  Păng păng păng păng păng.
  Păng păng păng păng păng.
  Trời Si -- on tưng bừng như mở hội.
  Hoa đăng về thắm lên tình hôn phối.
  Hỡi loài người!
  Hỡi loài người phút trời đất giao duyên.
  Hm Hm __ _ _ _ _ _
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
  %page-count = 10
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
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1
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
