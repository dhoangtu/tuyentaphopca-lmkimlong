% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ngồi Tựa Dòng Sông" }
  composer = "Tv. 136"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \partial 4 r4 |
  R2
  r4 e8. e16 |
  c'8 c a8. a16 |
  b8 b4. ~ |
  b4 d8. c16 |
  d8 e a,16 (c) b (a) |
  e4 e8. e16 |
  b'8 b gs8. gs16 |
  a8 a4. ~ |
  a4 r |
  R2*4 \bar "||"
  
  \key a \major
  cs8. cs16 cs8 cs |
  d4. b8 |
  b d4 cs8 |
  cs2 |
  a8. b16 b8 b |
  gs4. d'8 |
  d cs4 b8 |
  e2 ~ |
  e4 \bar "|."
}

nhacPhienKhucAltoMot = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r4
  R2
  r4 e8. e16 |
  e8 e a8. a16 |
  a8 gs4. ~ |
  gs4 d'8. c16 |
  d8 e a,16 (c) b (a) |
  e4 e8. e16 |
  f8 f e8. e16 |
  c8 c4. ~ |
  c4 r |
  R2*4
  
  \key a \major
  a'8. a16 a8 a |
  b4. a8 |
  gs b4 b8 |
  a2 |
  fs8. fs16 fs8 fs |
  e4. fs8 |
  b a4 a8 |
  gs2 ~ |
  gs4
}

nhacPhienKhucBasMot = \relative c {
  \set Staff.printKeyCancellation = ##f
  a8. g16 |
  a8 d e e |
  e4 e8. e16 |
  a,8 a f'8. f16 |
  e8 e4. ~ |
  e4 r |
  R2
  r4 e8. e16 |
  d8 d e8. e16 |
  a,8 a4. ~ |
  a4 a'8 a |
  f8. e16 a8 a |
  b4 c8 c |
  a8. b16 f'8 e |
  e2
  
  \key a \major
  R2
  b,8. b16 b8 b |
  e4. e8 |
  a, a4 a8 |
  d2 |
  e8. e16 e8 d |
  b4 fs'8 fs |
  e2 ~ |
  e4
}

% Lời
loiPhienKhucSopMot = \lyrics {
  Lệ sầu lã chã vọng về Si -- on.
  Trên hàng tơ liễu rủ não nề.
  Huyền cầm gác đó lòng buồn đê mê.
  
  \set stanza = "1."
  Mau vui lên đi nhé, dạo đàn hát ta nghe.
  Điệu Si -- on quen thuộc, vẫn xướng ca thuở trước.
}

loiPhienKhucSopHai = \lyrics {
  \repeat unfold 23 { _ }
  \set stanza = "2."
  Giê -- ru -- sa -- lem hỡi,
  lòng này nếu quên ngươi.
  Nguyện tay ta tê bại,
  lưỡi dính trong họng mãi.
}

loiPhienKhucBasMot = \lyrics {
  Ngồi tựa dòng sông Ba -- by -- lon.
  Lệ sầu lã chã vọng về Si -- on.
  Huyền cầm gác đó lòng buồn đê mê.
  \set stanza = "1."
  Quân canh tù đòi ta ca xướng,
  lũ lý hình giục rán vui lên:
  Mau vui lên đi nhé,
  hãy dạo đàn mà nghe.
  Cung Si -- on quen thuộc hát thuở trước.
}

loiPhienKhucBasHai = \lyrics {
  \set stanza = "2."
  Nơi quê người làm sao ta hát,
  những khúc nhạc mừng Chúa dân ta.
  Giê -- ru -- sa -- lem hỡi,
  nếu lòng này mà quên.
  Tay ta ra tê bại lưỡi dính mãi.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
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
  %page-count = 3
  %systems-per-page = 4
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
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
        \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSopMot
          \notBePhu -2 { \nhacPhienKhucAltoMot }
        \new NullVoice = beSop \nhacPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBasMot
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
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
