% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tù Sion Được Dẫn Về" }
  poet = "Tv. 125"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \partial 4 r4
  R2
  r4 a8 d |
  
  \key d \major
  fs,8. g16 a8 b |
  a2 |
  a8. a16 a8 a |
  e' e4. |
  e8. e16 e8 e8 |
  fs d4. |
  d8 b16 (a) e8 g |
  a4 r |
  R2*2
  a8. a16 a8 a |
  e' e4. |
  e8. e16 e8 e |
  fs d4. \bar "||"
  
  R2*8
  a8 a r a |
  b g4 fs8 |
  e2 |
  b'8 b r cs |
  a b4 cs8 |
  d4 r \bar "||"
  
  \key f \major
  R2*2
  r4. a8 |
  g d'4 bf8 |
  a2 \bar "||"
  
  \key d \major
  a8. a16 a8 a |
  e' \once \stemDown e4. |
  e8. e16 e8 e |
  fs d4. \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  r4
  R2
  r4 a8 d |
  
  \key d \major
  fs,8. g16 a8 b |
  a2 |
  a8. a16 a8 g |
  fs e4. |
  g8. a16 b8 cs |
  d fs,4. |
  d'8 b16 (a) e8 e |
  fs4 r |
  R2*2
  a8. a16 a8 g |
  fs e4. |
  g8. a16 b8 cs |
  d fs,4. |
  
  R2*8
  fs8 fs r fs |
  g e4 d8 |
  cs2 |
  g'8 g r e |
  fs g4 e8 |
  d4 r |
  
  \key f \major
  R2*2
  r4. a'8 |
  g d'4 bf8 |
  a2 |
  
  \key d \major
  a8. a16 a8 g |
  fs <a e>4. |
  g8. a16 b8 cs |
  d fs,4.
}

nhacPhienKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  d8 f |
  g8. f16 a8 g16 (f) |
  d2 ~ |
  
  \key d \major
  d4 r |
  R2
  a'8. g16 fs8 e |
  d cs4. |
  e8. fs16 g8 a |
  d, d4. |
  R2
  r8. d'16 g,8 a16 (g) |
  e8 e a fs16 (e) |
  d2 |
  a'8. g16 fs8 e |
  d cs4. e8. f16 g8 a |
  d, d4. |
  
  \key f \major
  a'8. bf16 g8 g |
  f2 |
  e8. g16 f8 e |
  d2 |
  c8 d c16 (bf) a8 |
  a2 |
  e'8 e d16 (e) c8 |
  d2 ~ |
  
  \key d \major
  d4 r |
  R2*5
  
  \key f \major
  r4 d8 f |
  g8. f16 a8 g16 (f) |
  d2 ~ |
  d4 r |
  R2
  
  \key d \major
  a'8. g16 fs8 e |
  d cs4. |
  e8. fs16 g8 a |
  <a d,> <a d,>4.
}

% Lời
loiPhienKhucSop = \lyrics {
  Ta ngỡ ngàng như trong giấc mơ.
  Miệng rộn ràng lời hoan ca.
  Môi vang vang câu hát mừng.
  Đó thiên hạ nhỏ to:
  Lòng dạt dào niềm hân hoan.
  Ôi uy công tay Chúa làm.
  Ai đi gieo vãi trong lệ sầu.
  Mai đây sẽ gặt trong vui sướng.
  Đem hạt giống tung gieo.
  Họ vừa về vừa reo vang.
  Tay ôm bao bông lúa vàng.
}

loiPhienKhucBas = \lyrics {
  Tù Si -- on được Chúa dẫn về.
  Miệng rộn ràng lời hoan ca.
  Môi vang vang câu nhạc mừng.
  Chúa làm cho họ việc rất lạ lùng.
  Lòng dạt dào niềm hân hoan.
  Ôi uy công tay Ngài làm.
  Xin Chúa thương thay đổi phận chúng con lưu đầy.
  Như nước chảy dạt dào trong con suối miền nam.
  Họ vừa đi vừa rớt châu lệ.
  Họ vừa về vừa reo vang.
  Tay ôm bao bông hạt vàng.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 5\mm
  bottom-margin = 5\mm
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
