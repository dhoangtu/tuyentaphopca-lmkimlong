% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Vực Sâu" }
  poet = "Tv. 129"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 4 r4 |
  r a8 (g) |
  f4 r |
  r d'8 d |
  cs r16 d d8 d |
  
}

nhacPhienKhucAlto = \relative c' {
  a8 a |
  c8. c16 c8 c |
  d4 r |
  r bf'8 bf |
  a r16 g g8 g |
  
}

nhacPhienKhucBas = \relative c {
  r4 |
  r f8 (e) |
  d4 d8 d |
  g8. g16 g8 g |
  a r16 b! b8 b |
  d4 r8 a |
  
}

% Lời
loiPhienKhucSop = \lyrics {
  Chúa ơi! Kêu lên Ngài, Chúa hỡi, Chúa ơi!
  Xin Ngài lắng tai nghe thấu tiếng con van nài.
  Nếu Chúa chấp tội con thì nào ai đứng vững?
  Nhưng Ngài là Đấng khoan hồng
  nên muôn đời kính tôn phụng thờ.
  Luôn luôn trông cậy vào lời xưa Chúa hứa.
  Hơn người lính canh luôn ngóng chờ rạng đông.
  Hơn quân canh mong hừng sáng Ít -- ra -- en trông đợi Chúa.
  Nơi tình Chúa thương ơn Cứu Rỗi luôn dư đầy.
  Sẽ đến Cứu Độ và làm cho dân Chúa thoát vòng tội khiên.
}

loiPhienKhucAlto = \lyrics {
  \override Lyrics.LyricText.font-shape = #'italic
  Từ vực sâu con kêu lên Chúa,
  \repeat unfold 70 { _ }
  tội khiên.
}

loiPhienKhucBas = \lyrics {
  Chưa ơi! Từ vực sâu con kêu lên Chúa, Chúa ơi Chúa hỡi!
  Xin Ngài lắng tai nghe thấu tiếng con van nài.
  Vì lạy Chúa, nếu Chúa chấp tội thì nào ai đứng vững
  Nên muôn đời kính tôn phụng thờ.
  Này hồn con luôn luôn trông cậy vào lời xưa Chúa hứa.
  Hơn người lính canh luôn ngóng chờ rạng đông.
  Hơn quân canh mong hửng rạng Ít -- ra -- en trông tới Ngài.
  Nơi tình Chúa thương ơn Cứu Rỗi luôn dư đầy.
  Vì này Chúa sẽ đến cứu độ và làm cho dân Ngài
  thoát ách tội khiên.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 8\mm
  bottom-margin = 8\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  %page-count = 1
  %systems-per-page = 4
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
        printPartCombineTexts = ##f
      }
      <<
        \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucAlto }
        \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
        \new NullVoice = beAlto \nhacPhienKhucAlto
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  } 
}
