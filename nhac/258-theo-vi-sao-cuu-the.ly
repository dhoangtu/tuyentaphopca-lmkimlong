% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Theo Vì Sao Cứu Thế" }
  composer = "Thơ: Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSopMot = \relative c'' {
  R2*5
  r8 c c c |
  
}

nhacPhienKhucAltoMot = \relative c' {
  R2*5
  r8 f g g |
  
}

nhacPhienKhucTenorMot = \relative c {
  R2
  r8 d16 d g8 e16 e |
  a8 f16 f bf8 g16 g |
  <c e,>4. bf16 a |
  <g f d>8 <g f d> r <c e,> |
  <f, c> a bf g |
  
}

nhacPhienKhucBasMot = \relative c {
  r8 c16 c f8 d16 d |
  g4 <bf g> |
  <c f,> <g d> |
  <g c,>8 <g g,>16 <g g,> <c c,>4 |
  r8 <bf bf,>16 <b! b,!> <c c,>8 <bf c,> |
  <a f> f d e |
  
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  No en No en No en No en
  Mọi ánh sáng đông tây
  No en No en No en No en
  hội về đây, hội về đây đi dồn vào quỹ đạo.
  
  \set stanza = "Solo:"
  Rừng già lên lộc mới một màu xanh
  làm đẹp cả chân trời.
  Hoa trong vườn cảm động quá
  hoa rơi vì gió lạ từ phương mô thổi tới
  những đống xương khô reo hoan hỉ
  Bỗng một đêm reo hoan hỉ
  Bỗng một đêm reo hoan hỉ
  Phá lên tiếng cười Ha Ha Ha Ha
  ánh sao le lói No en
  Rộng vòng tay ôm ấp bốn phương trời
  mười phương đất hợp tấu bài anh em.
  Thái hòa lên ngôi vị
  nắm tay theo vì sao Cứu Thế tiến bước về hào quang
  No en No
  đạo hội về đây hội về,
  hội về đây, hội về đây đi dồn vào quỹ đạo No en.
}

loiPhienKhucAltoMot = \lyrics {
  No en No en No en No en No en No en
  No en No en đến thế mạt một ngày hội về đây
  đi dồn vào quỹ đạo hội về đây đu dồn vào quỹ đạo
  
  \set stanza = "Ca đoàn:"
  No en No en A No en A No en no en No en A No en
  A No en A No en No en No en
  những đống xương khô reo hoan hỉ
  Bỗng một đêm reo hoan hỉ
  Bỗng một đêm reo hoan hỉ
  Ha Ha Ha Ha Nhìn về đồng vắng sương rơi
  ánh sao le lói
  No en
  Rộng vòng tay ôm ấp bốn phương trời mười phương đất
  hợp tấu bài anh em.
  Thái hòa lên ngôi vị
  nắm tay nhau theo vị sao Cứu Thế
  Tiến bước về cao quang
  No en No
  
  đạo hội về đây hội về đây
  đây hội về đây đi dồn vào quỹ đạo
  No en.
}

loiPhienKhucTenorMot = \lyrics {
  \repeat unfold 18 { _ }
  No en No en No en No en No en No en
  Từ hồng hoang thái cổ
  No en No en hội về đây hội về đây
  hội về đây đi dồn vào quỹ đạo
  về đây dồn vào quỹ đạo.
  
  No en No en A No en A No en no en No en A No en
  A No en A No en No en No en
  những đống xương khô reo hoan hỉ
  Bỗng một đêm reo hoan hỉ
  Bỗng một đêm reo hoan hỉ
  Ha Ha Ha Ha Nhìn về đồng vắng sương rơi
  ánh sao le lói
  No en
  Rộng vòng tay ôm ấp bốn phương trời mười phương đất
  hợp tấu bài anh em.
  Thái hòa lên ngôi vị
  nắm tay nhau theo vị sao Cứu Thế
  Tiến bước về cao quang
  No en No
  
  đạo hội về đây hội về đây
  đây hội về đây đi dồn vào quỹ đạo
  No en.
}

loiPhienKhucBasMot = \lyrics {
  \repeat unfold 18 { _ }
  No en No en Bao tinh hoa kim cổ
  No en No en No en No en No en No en
  hội về đây hội về đây
  hội về đi dồn vào quỹ đạo đi vào quỹ đạo.
  No en No en A No en A No en No en No en A No en
  A No en A No en No en No en
  Có những đống xương khô từ xa xưa thể kỷ
  một đêm reo hoan hỉ một đêm reo hoan hỉ
  Ha Ha phá lên tiếng cười Ha Ha
  Nhìn về đồng vắng sương rơi
  ánh sao chói lọi
  No en
  Rộng vòng tay ôm ấp bốn phương trời
  mười phương đất hợp tấu bài anh em.
  Thái hòa lên ngôi vị
  nắm tay nhau theo vị sao Cứu độ
  Tiến bước về cao quang
  No en No
  
  đạo hội về đây hội về đây
  quỹ đạo hội về đây tới quỹ đạo
  Ơ No en.
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
  %page-count = 5
}

TongNhip = {
  \key f \major \time 2/4
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
      instrumentName = #"S"
    } <<
      \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSopMot }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
    >>
    \new Staff \with {
      instrumentName = #"A"
    } <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacPhienKhucAltoMot }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff \with {
      instrumentName = #"T"
    } <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacPhienKhucTenorMot }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorMot
    >>
    \new Staff \with {
      instrumentName = #"B"
    } <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacPhienKhucBasMot }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
