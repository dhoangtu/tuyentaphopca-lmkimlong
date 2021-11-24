% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xuân Đã Đến" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  
}

nhacDiepKhucAlto = \relative c' {
  
}

nhacDiepKhucBas = \relative c' {
  
}

nhacPhienKhucSop = \relative c'' {
  
}

nhacPhienKhucAlto = \relative c'' {
  
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lặng nghe lòng đất đêm nay,
  lặng nghe lòng đất đêm nay,
  Rộn ràng tiếng pháo,
  tiếng pháo báo ngày xuân sang.
  Trong huyệt thời gian đã tàn rồi,
  Hoa niên của một (i) tuổi vàng,
  tuổi vàng Mẹ ơi.
  Xuân đã đến rồi,
  rừng muôn cây lá nảy chồi đơm bông.
  Đây vườn thơm phức hoa hương.
  lòng con nở một bông hồng đầu xuân.
  Kính chào Mẹ Chúa muôn xuân,
  nghe con, nghe con cầu nguyện,
  nghe con cầu nguyện trong trầm hương hoa.
}

loiDiepKhucAlto = \lyricmode {
  Lặng nghe lòng đất đêm nay,
  lòng đất đêm nay,
  Rộn ràng tiếng pháo báo ngày xuân sang.
  gian đã tàn rồi,
  Hoa niên của một (i) tuổi vàng,
  tuổi vàng Mẹ ơi.
  Xuân đã đến rồi,
  rừng muôn cây lá nảy chồi đơm bông.
  Đầy vườn thơm phức hoa hương,
  lòng con nở một bông hồng đầu xuân.
  Kính chào Mẹ Chúa muôn xuân,
  nghe con, nghe con cầu nguyện,
  nghe con cầu nguyện,
  cầu nguyện Mẹ trong hương hoa.
}

loiDiepKhucBas = \lyricmode {
  Lặng nghe lòng đất đêm nay,
  lặng nghe lòng đất đêm nay,
  Rộn ràng tiếng pháo chào nay xuân sang.
  Tàn rồi trong huyệt thời gian
  đã tan tuổi vàng của một tuổi vàng.
  Mẹ ơi.
  Sáng nay xuân đã đến rồi
  Rừng muôn cây lá nãy chồi trổ bông.
  Đây vườn thơm phức hoa hương
  lòng con nở một nở một bông đầu xuân.
  Kính chào Mẹ của muôn xuân,
  nghe con nghe con,
  cầu nguyện, nghe con cầu nguyện trong hương hoa.
}

loiPhienKhucSop = \lyricmode {
  Con xin ơn Mẹ bao la,
  ơn Mẹ bao la cho con mến Mẹ,
  cho con mến Mẹ thiết tha muôn trùng.
  Thuyền con đừng lạc bến thương,
  đừng lạc bến thương,
  Đàn đừng lạc giọng,
  đàn đừng lạc giọng giữa triều ái ân.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  print-page-number = #f
  %page-count = #1
  %systems-per-page = 5
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
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
      \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override LyricHyphen.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
