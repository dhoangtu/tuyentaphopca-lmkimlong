% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Chúa Đã Sai Tôi Đi" }
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  %intro
  
  \partial 4 d8. d16 |
  b8 b b4 ~ |
  b8 a b g |
  d4. g16 g |
  fs8 g4 a8 |
  b4 b8 b |
  a4. cs8 |
  d2 ~ |
  d4 r |
  r2
  r8 d, bf' bf |
  a a16 a g8 c |
  d2 ~ |
  d4 b8. b16 |
  b8 g g a |
  c c ~ c4 |
  c8. c16 c8 e |
  c a d d ~ |
  d2 ~ |
  d4 r |
  r r8 bf |
  c8. c16 c8 bf |
  
}

nhacPhienKhucAltoMot = \relative c' {
  
}

nhacPhienKhucBasMot = \relative c {
  %intro
  \partial 4 d8. d16 |
  g8 g g4 ~ |
  g8 a g g |
  fs4. e16 e |
  d8  b4 d8 |
  g4 g8 g |
  fs4. e8 |
  d2 |
  d8. bf'16 |
  g8 a ~ |
  a f! g16 (fs) c8 |
  d2 ~ |
  d8 d ef ef |
  d d16 d c8 d |
  g4 g8. g16 |
  fs8 e e d |
  c c ~ c4 |
  a8. a16 a8 gf |
  a e' d d ~ |
  d4 r8 d |
  bf'8. bf16 a8 g |
  d'2 ~ |
  d2 ~ |
  
}

nhacPhienKhucSopHai = \relative c'' {
  
}

nhacPhienKhucBasHai = \relative c' {
  
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Chúa đã sai tôi đi loan báo Tin mừng
  loan Tin mừng tình thương Chúa cho nhân loại mọi nơi
  Ngài thánh hiến tôi ngay trong lòng thân mẫu
      Sai tôi đi dệt tình thương bốn hướng
      Muôn con tim hát chung bài yêu thương
      Ân phúc thắp sáng hy vọng
      Nào người người hãy nắm tay hát mừng
      nắm tay hát mừng trời đất kết duyên.
}

loiPhienKhucSopMotA = \lyrics {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  
  Sai tôi đi dọn đường cho Chúa đến
  Hô vang lên giữa sa mạc hoang vu
  Thung lũng hãy lấp cho đầy
  Và mọi người sẽ thấy ơn Cứu độ
  thấy ơn Cứu độ của Chúa chúng ta.
}

loiPhienKhucBasMot = \lyrics {
  Chúa đã sai tôi đi loan báo Tin mừng
  loan Tin mừng tình thương Chúa cho nhân loại mọi thời
  Ngài đã chọn tôi từ xa ngàn đời
  Ngài thánh hiến tôi ngay trong lòng thân mẫu
  <<
    {
      Sai tôi đi dệt tình thương muôn phương
      Muôn con tim hòa chung khúc yêu thương
      Từ thánh giá khơi nguồn sống
      Và tin yêu vùi lấp đau thương
      Nào người người hãy nắm tay hát mừng
      hãy hát mừng
      nắm tay hát mừng phút kết duyên.
    }
    \new Lyrics {
	  \set associatedVoice = "beBass"
	    Sai tôi đi dọn đường cho Chúa đến
	    Hô vang lên sa mạc cát hoang vu
	    Đồi núi hãy mau bạt xuống
	    Đường quanh co hãy uốn cho ngay
	    Và mọi người sẽ thấy ơn Cứu độ
	    ơn Cứu độ của Chúa chúng ta.
    }
  >>
}

loiPhienKhucSopHai = \lyrics {
  Xin Ngài một ý thơ hay cung nhạc
  Con chỉ là tiếng kêu trong sa mạc
  Để tôi hòa lên câu hát mới
  suốt đời truyền rao cho thế giới
  Tình Ngài nhuần thấm muôn nơi.
}

loiPhienKhucSopBa = \lyrics {
  Xin được làm chứng nhân
  luôn trung thực đâu sợ gì khó nguy
  hay cơ cực
  Nhìn gian trần đi trong bóng tối
  Lấy tình Ngài tôi xin dẫn lối
  Tựa vầng Hồng mãi rạng soi.
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
  system-system-spacing = #'((basic-distance . 15)
                             (minimum-distance . 15)
                             (padding . 2))
  score-system-spacing = #'((basic-distance . 15)
                             (minimum-distance . 15)
                             (padding . 2))
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
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice = "beSop" { \TongNhip \partCombine 
          \nhacPhienKhucSopMot
          \notBePhu -2 { \nhacPhienKhucAltoMot } }
        \new NullVoice = nhacThamChieuPhienKhucSopMot \nhacPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSopMot \loiPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSopMot \loiPhienKhucSopMotA
      >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBasMot
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  }
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSopHai
          \notBePhu -2 { \nhacPhienKhucBasHai }
        \new NullVoice = nhacThamChieuPhienKhucSopHai \nhacPhienKhucSopHai
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSopHai \loiPhienKhucSopHai
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  } 
}
