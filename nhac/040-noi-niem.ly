% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nỗi Niềm" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  poet = "Ý: Tv. 18-19"
  %arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c' {
  %intro
  
  \partial 4. r8 r4 |
  r \tuplet 3/2 { f8 e d } |
  e4 r |
  r 
}

nhacPhienKhucAltoMot = \relative c' {
  %intro
  
  
}

nhacPhienKhucBasMot = \relative c {
  %intro
  
  
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Đất đây là đâu?
  Đất đây là đâu?
  Lòng lữ thứ lên cơn sầu thê thiết.
  Ca -- mê -- lô xa rồi,
  Ca -- mê -- lô xa rồi
  còn đâu ngày oanh 
}

loiPhienKhucSopHai = \lyrics {
  Đây, đây là đâu?
  Đây, đây là đâu?
  Chiều sương lành lạnh gió gieo sầu,
  lòng lữ thứ sầu dậy sầu thê thiết.
  Ca -- mê -- lô xa rồi,
  Ca -- mê -- lô xa rồi
  còn đâu ngày oanh liệt,
}

loiPhienKhucBasMot = \lyrics {
  
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
  page-count = 1
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
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine
            \nhacPhienKhucSopMot
            \notBePhu -2 { \nhacPhienKhucAltoMot }
      \new NullVoice = nhacThamChieuSopMot \nhacPhienKhucSopMot
      \new Lyrics \lyricsto nhacThamChieuSopMot \loiPhienKhucSopMot
      \new Lyrics \lyricsto nhacThamChieuSopMot \loiPhienKhucSopHai
    >>
    \new Staff <<
        \new Voice = "beBas" {
          \clef bass \TongNhip \nhacPhienKhucBasMot
        }
        \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
