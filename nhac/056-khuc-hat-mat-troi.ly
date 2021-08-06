% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khúc Hát Mặt Trời" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 4
  <>^\markup { \fontsize #6 \box \bold A }
  g8. g16 \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  c,4. a'8 |
  a4 g8 g |
  
}

nhacPhienKhucAlto = \relative c'' {
  \partial 4 g8. g16 |
  c,4. c8 |
  c4 b8 b |
  
}

nhacPhienKhucBas = \relative c {
  \partial 4 g8. g16 |
  c4. g8 |
  f'4 f8 f |
  e2 ~ |
  e4
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Hỡi vũ trụ bao la và huyền bí
  Cất tiếng lên, cất tiếng lên
  rung chuyển bốn phương nào
  Ca hòa đi tuyên xưng danh Thiên Chúa.
  Hỡi Mặt Trời oai hùng muôn ánh lửa
  Người ngày ngày xóa màn tối âm u,
  quét đi tất cả mù sương
  ngươi hiện ra huy hoàng
  hiện ra
  ngươi hiện ra huy hoàng
  tràn ý sống
  Trên không trung cao xanh là lồng lộng,
  Trên không trung cao xanh là lồng lộng,
  ngươi nhịp nhàng tiến bước
  tiến bước lượng thời gian.
  
  gian.
  
  Mỗi bình minh khi đêm tàn ngày đến
  ngươi hiện hình trên màn bạc trời đông.
  Ta say sư chiêm niệm sáng trong lòng
  hình ảnh của một mặt trời,
  một mặt trời công chính
  giáng trần nhận lãnh việc cứu đời
  Để giải phóng ngàn dân.
  Ta nao nao ôn nhớ đến vô vàn
  Ơn lành thánh
  Vì Ngài ta phong phú.
  
  Hỡi vũ...
}

loiPhienKhucAlto = \lyrics {
  ngươi hiện ra huy hoàng
  
  ngươi nhịp nhàng tiến bước
  tiến bước nhịp nhàng
  tiến bước hướng thời gian
  
  gian
  
  khi đêm tàn ngày đến,
  ngươi hiện hình trên màn bạc trời đông.
  
  Ta say sưa chiêm niệm sáng trong lòng
  hình ảnh của một mặt trời,
  một mặt trời công bình,
  một mặt trời công chính
  giáng trần nhận lãnh cứu đời
  Để giái phóng ngàn dân.
  Ta nao nao ôn lại cả muôn vàn
  Ơn lành thánh,
  vì Ngài ta phong phú.
  
  Hỡi vũ...
}

loiPhienKhucBas = \lyrics {
  Hỡi vũ trụ bao la và huyền bí
  Tự muôn đời sinh dựng bới Muôn Cao
  Nào mau lên tiếng làm rung chuyển mọi phương nao
  Ca hòa đi tuyên xưng danh hiền Chúa.
  Hỡi Mặt Trời oai hùng muôn ánh lửa rực soi muôn lối,
  Người ngày ngày dẹp tan mọi âm u,
  Và quét đi tất cả sương mù
  hiện ra ngươi hiện ra huy hoàng
  hiện ra tràn sống động
  cao xanh và lồng lộng
  cao xanh và lồng lộng
  ngươi nhịp nhàng tiến bước
  ngươi tiến bước hướng thời gian.
  
  gian.
  
  
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
  %page-count = 2
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
     \new Voice = "beSop" { \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucAlto } }
        \new NullVoice = nhacThamChieuPhienKhucSop \nhacPhienKhucSop
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSop
        \new NullVoice = nhacThamChieuPhienKhucAlto \nhacPhienKhucAlto
        \new Lyrics \lyricsto nhacThamChieuPhienKhucAlto \loiPhienKhucAlto
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
