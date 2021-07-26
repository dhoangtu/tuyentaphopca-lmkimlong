% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khúc Hát Mặt Trời" }
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \key f \major \time 2/4
  \partial 8 r8 |
  r2
  r
  r
  a4. bf8 |
  g4. a8 |
  f4 \tuplet 3/2 { e8 f e } |
  d4 r8 bf' |
  a4. a16 g |
  \slashedGrace a8 (bf4.) g8 |
  e8. g16 \tuplet 3/2 { bf8 bf a } |
  a2 ~ |
  a4 r |
  r2
  d2 |
  d4 e8 d |
  cs4. d8 |
  bf2 |
  a4 \tuplet 3/2 { d8 cs d } |
  e4 r8 a, |
  
}

nhacPhienKhucAltoMot = \relative c'' {
  \key f \major \time 2/4
  \partial 8 d8 |
  cs4 r8 d16 bf |
  g8. e16 g8 g |
  a4 r |
  f4. g8 |
  d2 ~ |
  d4 cs |
  d2 ~ |
  d8 d d4 _> ~ |
  d8 d \staccato d \staccato d \staccato |
  cs4 r |
  r8 e f e |
  d4 r |
  r2
  f |
  g ~ |
  g4 f8 e |
  d4 e8 d |
  cs4 \tuplet 3/2 { d8 e e } |
  cs4 r8 a |
  
}

nhacPhienKhucBasMot = \relative c' {
  \key f \major \time 2/4
  \partial 8 r8 |
  a4 r8 bf |
  bf2 |
  a4 r |
  d c |
  bf c8 bf |
  a4. g8 |
  f2 ~ |
  f8 fs g4 ^> ~ |
  g8 g \staccato g \staccato f \staccato |
  a4 r |
  r8 g a g |
  f4 r8 g16 ^> g ^> |
  g4. f8 |
  f a4 f8 |
  e4 e16 (f) d (d) |
  a4. a8 |
  g'8. f16 g8 a |
  a2 ~ |
  a4 r8 a |
  
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Hm __ _ _ _ _ _ _ _ _ Bóng ai đi lặng lẽ âm thầm
  như chiếc là rơi đêm.
  Hm __ _ _ _ _ _ _ _ sao trời lấp lánh.
  Ngoại giới chết rồi đây phút giờ thánh.
  Hồn lâng lâng chiêm ngưỡng cõi vô biên.
  Hồn say sưa trong non nước diệu huyền.
  Và ngất ngư trong tình yêu mầu nhiệm.
  Hồn gặp đây rồi Đấng hồn trìu mến.
  Ngài ngọt ngào hơn ngàn vạn mật hoa.
  Ngài từ bi hơn trời biển bao la.
  Và nhân hậu trên muôn muôn lòng mẹ.
  Lạy Thiên Chúa đêm đêm lìa khỏi xác.
  Về với Ngài hồn say đắm mê ly.
  Lời nói chẳng ra ý cảm tràn trề.
  Vì siêu việt Người ơi siêu việt quá.
  Ngoại...
}

loiPhienKhucAltoMot = \lyrics {
  (Intro...) _ _ _ _ _ _ _ _
  Hm __ _ _ _ _ Kìa ai, ai đi âm thầm như lá rơi đêm.
  Hm __ _ _ _ _ _ _ _ sao chói long lanh.
  Ngoại giới chết rồi đây phút giờ thánh.
  Hồn lâng lâng chiêm ngưỡng cõi vô biên.
  Hồn say sưa trong non nước diệu huyền.
  Và ngất ngư trong tình yêu mầu nhiệm.
  Hồn gặp đây rồi Đấng hồn trìu mến.
  Ngài ngọt ngào hơn ngàn vạn mật hoa.
  Ngài từ bi hơn trời biển bao la.
  Và nhân hậu trên muôn muôn lòng mẹ.
  Lạy Thiên Chúa đêm đêm lìa khỏi xác.
  Đêm về với Ngài hồn say đắm mê ly.
  Ta ý cảm tràn trề.
  Vì siêu việt Người ơi siêu việt lạ.
  Ngoại...
}

loiPhienKhucBasMot = \lyrics {
  _ _ _ _
  Hm __ _ _ _ _ _ _ _
  Kìa ai, ai đi âm thầm như lá rơi đêm.
  Chung quanh đây cảnh vật đã im lìm.
  Gió lên nhẹ và sao trời soi lấp lánh.
  Ngoại giới chết rồi đây phút giờ thánh.
  Hồn lâng lâng chiêm ngưỡng cõi vô biên.
  Hồn say sưa trong non nước diệu huyền.
  Và ngất ngư trong chính tình mầu nhiệm.
  Hồn gặp đây rồi Đấng hồn trìu mến.
  Ngọt ngào hơn ngàn vạn mật hoa.
  Ngài từ bi hơn biển trời bao la.
  Và nhân hậu trên muôn muôn lòng mẹ.
  Lạy Thiên Chúa đêm đêm lìa khỏi xác.
  Đêm đêm về với Chúa ôi say đắm mê ly.
  Ta ý cảm tràn trề.
  Vì siêu việt lạ.
  Ngoại...
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
        \clef treble \nhacPhienKhucSopMot
      }
      \new Lyrics \lyricsto "beSop" \loiPhienKhucSopMot
      >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAltoMot
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \nhacPhienKhucBasMot
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  } 
}
