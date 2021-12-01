% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mục Đồng Hỡi" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \partial 4 g8 g |
  d'4. d8 |
  b c4 b8 |
  a4 a8 a |
  fs4. e8 |
  d g4 a8 |
  b4 c8 c |
  c2 |
  b8 a4 d8 |
  g,2 ~ |
  g4 r |
  R2
  r8 d' ^\mp g, b |
  a2 ~ |
  a8 a g fs |
  g4 r |
  R2
  r8 g ^> a ^> b ^> |
  c2 |
  b8 ^> d4 d8 |
  e c a4 ~ |
  a r8 a |
  fs g4 a8 |
  b4. a8 |
  a d,4 a'8 |
  g2 ~ |
  g4 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  r4 |
  r fs8 fs |
  g a4 g8 |
  fs4 e8 e |
  d4. c8 |
  b d4 d8 |
  g4 a8 a |
  a2 |
  g8 fs4 fs8 |
  g2 ~ |
  g4 r |
  R2
  r8 d' g, b |
  a2 ~ |
  a8 a g fs |
  g4 r |
  R2
  r8 g fs g |
  a2 |
  g8 b4 b8 |
  c a fs4 ~ |
  fs r8 e |
  d b4 d8 |
  g g d [e] |
  d c4 c8 |
  b2 ~ |
  b4
}

nhacPhienKhucTenor = \relative c {
  r4 |
  r d8 d |
  e2 ~ |
  e4 c8 cs |
  d4 r |
  r8 b' g fs |
  g2 ~ |
  g8 fs ^> a ^> d, ^> |
  e4 r |
  r e'4 ^\f |
  d b8 g |
  c c4 c8 |
  b2 |
  r8 fs fs g |
  a4. d,8 |
  b' a4 b8 |
  g2 ~ |
  g4 r4 |
  r8 d ^> e ^> fs ^> |
  g4 g |
  c,4. e8 |
  d ^> d ^> a4 |
  r8 g g' (fs) |
  g4. g8 |
  fs4 fs |
  \stemDown g2 ~ |
  g4
}

nhacPhienKhucBas = \relative c {
  r4 |
  r d8 d |
  e2 ~ |
  e4 c8 cs |
  d4 r |
  r8 b' g fs |
  g2 ~ |
  g8 fs a d, |
  e4 r |
  r c'4 |
  b g8 e |
  a a ([g)] fs |
  g2 |
  r8 d d e |
  cs4. d8 |
  g d4 d8 |
  g,2 ~ |
  g4 r4 |
  r8 d' e fs |
  g4 g |
  c,4. e8 |
  d d a4 |
  r8 g g' (fs) |
  g d b c |
  d4 d |
  <d g,>2 ~ |
  <d g,>4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Mục đồng hỡi các anh đã thấy chi?
  Hãy nói đi, tin lại cho ta biết,
  trên dương gian ai vừa xuất hiện.
  \set stanza = "1."
  Thấy Vị Cứu Tinh với muôn đạo binh.
  Rạng danh Thiên Chúa, rạng danh Thiên Chúa trên trời.
  An bình nơi dương thế cho nhân loại Chúa thương.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 23 { _ }
  \set stanza = "2."
  Thấy một Nữ Trinh với một Hài Nhi.
}

loiPhienKhucAlto = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Mục đồng hỡi
  \repeat unfold 16 { _ }
  hiển
  \repeat unfold 24 { _ }
  an bình
}

loiPhienKhucBasMot = \lyricmode {
  Mục đồng hỡi, hãy nói đi.
  Nói cho ta biết anh đã gặp ai?
  \set stanza = "1."
  Chúng tôi đã gặp thấy Đấng Cứu Tinh
  và đoàn Thiên Sứ hợp tiếng ca hát mừng.
  Rạng danh Thiên Chúa, Chúa Cả sáng danh trên trời
  và dưới thế
  \override Lyrics.LyricText.font-shape = #'italic
  (an bình)
  \revert Lyrics.LyricText.font-shape
  cho ai Chúa thương.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 14 { _ }
  \set stanza = "2."
  Chúng tôi đã gặp thấy Đức Nữ Trinh
  và một Hài Nhi là Đức Vua thái bình.
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
  page-count = #1
  %systems-per-page = 5
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new NullVoice = beAlto \nhacPhienKhucAlto
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
      >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef "bass"
        \new Voice \TongNhip \partCombine 
        \nhacPhienKhucTenor
        \notBePhu -2 { \nhacPhienKhucBas }
      \new NullVoice = beBas \nhacPhienKhucBas
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
