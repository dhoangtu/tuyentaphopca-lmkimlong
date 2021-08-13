% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tôi Vui Mừng" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  \partial 4 r4 |
  r c8 c |
  b4 r |
  r8 c r c |
  a a4 a8 |
  g4 r8 c |
  b b c4 |
  d2 ~ |
  d4 d8 f |
  d d16 (c) a8 (g) |
  d2 ~ |
  d4 r |
  r g8 (c |
  c) a a g |
  g d'4 e8 |
  d4 d8. (c16) |
  c2 ~ |
  c4 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r4
  r e8 e |
  d4 r |
  r8 e r e |
  f f4 f8 |
  e4 r8 e |
  g g g4 |
  a2 |
  g ~ |
  g8 e c4 |
  d2 ~ |
  d4 r |
  r8 d4 e8 |
  f4 f8 (e) |
  d4 g ~ |
  g8 f f f |
  e2 ~ |
  e4
}

nhacDiepKhucTenor = \relative c' {
  c8 c |
  g4. g8 |
  g a16 (g) f8 g |
  c,2 ~ |
  c ~ |
  c8 c' b a |
  g g c4 ~ |
  c d8 (c) |
  b2 ~ |
  b4 r |
  r8 g4 c8 |
  d4 f |
  g2 ~ |
  g4 r8 c ~ |
  c b b c |
  d8. c16 b8 b |
  c2 ~ |
  c4
}

nhacDiepKhucBas = \relative c' {
  c8 c |
  g4. g8 |
  g a16 (g) f8 g |
  c,2 ~ |
  c ~ |
  c8 c' b a |
  g4 e8 e |
  d d4 f8 |
  g2 ~ |
  g4 r |
  r8 g,4 c8 |
  d4 f |
  g2 ~ |
  g4 r8 c ~ |
  c b b c |
  d8. d,16 g8 g |
  <g c,>2 ~ |
  <g c,>4
}

nhacPhienKhucSop = \relative c' {
  \partial 4 c8. d16 |
  e8 e e4 |
  g8 c c a16 (g) |
  d8. d16 d8 g |
  g2 |
  e4 e |
  f16 (e) d8 c c16 (d) |
  g4 r8 e' |
  d8. b16 c8 d |
  g,4. c8 |
  b d4 c8 |
  c2 ~ |
  c4 \bar "||"
}

nhacPhienKhucBas = \relative c' {
  
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Tôi vui mừng ớ chúng ta mau đi về,
  đi về Nhà Thiên Chúa.
  Chân chúng ta nay đã dừng.
  Hỡi Giê -- ru -- sa -- lem,
  hỡi Giê -- ru -- sa -- lem.
}

loiDiepKhucAlto = \lyricmode {
  Tôi vui mừng ớ chúng ta mau đi về,
  đi về Nhà Thiên Chúa.
  Ta nay đã dừng.
  Hỡi Giê -- ru -- sa -- lem,
  hỡi Giê -- ru -- sa -- lem.
}

loiDiepKhucTenor = \lyricmode {
  Tôi vui mừng khi nghe có người nhủ rằng:
  Chúng ta đi về Nhà Thiên Chúa ta.
  Dừng ở cửa thành ngươi.
  Hỡi Giê -- ru -- sa -- lem,
  Giê -- ru -- sa -- lem.
}

loiDiepKhucBas = \lyricmode {
  \set stanza = "ĐK:"
  Tôi vui mừng khi nghe có người nhủ rằng:
  Chúng ta đi về mau đi về Nhà Thiên Chúa.
  Dừng ở của thành ngươi.
  Hỡi Giê -- ru -- sa -- lem,
  Giê -- ru -- sa -- lem.
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Kìa Giê -- ru -- sa -- lem
  được thiết kế vững vàng tựa một thành đô.
  Nơi đây các chi họ của Chúa
  tiến lên mừng Danh Thánh Ngài theo luật Is -- ra -- el.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Nguyện Giê -- ru -- sa -- lem và lớp lớp lũy thành
  đều được bình an.
  Anh em sống trong niềm hạnh phúc
  những lâu đài trong khắp thành
  tôi cầu chúc khang an.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Vì yêu thương anh em
  và quý mến cung vàng điện ngọc của Chúa.
  Tôi xin chúc đô thành bình yên
  tháng năm được vui thái hòa trong hồng phúc vô biên.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
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
  %page-count = #1
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  %score-system-spacing = #'((basic-distance . 15))
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
      \new Voice = "beSop" { \clef treble \TongNhip \nhacDiepKhucSop }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacDiepKhucAlto }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacDiepKhucTenor }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
    >>
    \new Staff <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacDiepKhucBas }
      \new Lyrics \lyricsto beBass \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2.5
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice = "beSop" { \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucBas } }
        \new NullVoice = nhacThamChieuPhienKhucSop \nhacPhienKhucSop
        \new Lyrics \with {
          \override VerticalAxisGroup.
            nonstaff-relatedstaff-spacing.padding = #1.5
        }
        \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopHai
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopBa
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
