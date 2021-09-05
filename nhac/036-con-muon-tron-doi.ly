% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Con Muốn Trọn Đời" }
  composer = "Thơ: Đỗ Xuân Quế"
  %arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  g8. a16 d,8 f |
  g4 g8 bf |
  c4. a16 (g) |
  \slashedGrace {f16 (d} f4) g8 g |
  a2 |
  d8. f16 g,8
  \tweak extra-offset #'(0 . 1)
  _\markup { \tiny \rest #"4" }
  bf |
  \once \stemUp c4
  \tweak extra-offset #'(0 . 1)
  _\markup { \tiny \rest #"4" }
  d,8 f |
  g4 e16 (d) g8 |
  c,4. e8 |
  f2
  <>^\markup {
    \halign #2 \fontsize #2 \bold "Tận"
  }
  \bar "|."
  
  R2*2
  r8 a a bf |
  g4. a8 |
  bf2 |
  c4 d16 (f d c) |
  bf4 c16 (d c bf) |
  g4 e16 (d) g8 |
  b,!4. c8 |
  c2
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacPhienKhucAltoMot = \relative c' {
  \skip 2
  \skip 4 c8 f |
  e4. d8 |
  d4 e8 e |
  f2 ~ |
  f4 r |
  r d8 d |
  e4 c8 [d] |
  a4 bf |
  a2
  
  R2*2
  r8 f' f g |
  e4. ef8 |
  d2 |
  e4 f8. (e16) |
  d4 e8. (d16) |
  c4 c8 [c] |
  g4. g8 |
  g2
}

nhacPhienKhucBasMot = \relative c {
  R2
  r8 f e (d) |
  c (g) c c |
  d4 c8 c |
  f8. f16 g8 a |
  bf4 r |
  r8 e, f (d) |
  c (g) c b! |
  c4 c |
  <c f,>2
  
  f4 g16 (a g f) |
  d4 f16 (g f d) |
  c4 c8 g |
  c4 e8 (f) |
  \slashedGrace { \once \stemDown a8 ^(} g2) ~ |
  g2 ~ |
  g4 r |
  r8 e c e |
  g <d g,> <f g,>4 |
  <e c>2
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  \set stanza = "1."
  Con muốn trọn đời con,
  trọn đời con trung thành tin yêu Chúa.
  \override Lyrics.LyricText.font-shape = #'italic
  Con hiến trọn đời con,
  \revert Lyrics.LyricText.font-shape
  trọn đời con theo tiếng gọi
  \once \override LyricText.self-alignment-X = #RIGHT "linh  " ân.
  Tung bay thẳng lên Núi Thánh.
  Vui sướng hưởng thánh tình
  bên Chúa Trời cao sang.
}

loiPhienKhucSopHai = \lyrics {
  \set stanza = "2."
  Con muốn là nụ hoa,
  là nụ hoa dâng về tôn nhan Chúa.
  \override Lyrics.LyricText.font-shape = #'italic
  Con muốn là giọng ca,
  \revert Lyrics.LyricText.font-shape
  là giọng ca bay tới trời
  \once \override LyricText.self-alignment-X = #RIGHT "cao  " xa.
}

loiPhienKhucBasMot = \lyrics {
  \set stanza = "1."
  Muốn trọn đời con trung thành tin yêu Chúa,
  nguyện tin yêu Chúa.
  Hiến trọn đời theo lời gọi linh ân.
  Con muốn là cánh bằng
  bay thẳng lên Núi Thánh.
  thánh tình bên Chúa Trời cao sang.
}

loiPhienKhucBasHai = \lyrics {
  \set stanza = "2."
  Muốn là nụ hoa dâng về tôn nhan Chúa,
  về tôn nhan Chúa.
  Giọng ca hòa vang dội trời cao xa.
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
        \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
