% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bài Ca Mới" }
  poet = "Ý: Tv. 97"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  r8
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  d4 ^> d,8 |
  e d b'4 |
  b8 b ~ b4 |
  r8 c4 ^> g8 |
  a g e'4 |
  e8 e ~ e4 |
  r8 c4 ^> c8 |
  e c a4 |
  a8 d4 d8 ~ |
  d c a d |
  g,2 ~ |
  g4 \bar "|." \break
  
  d'8 g, ~ |
  g g c b |
  a2 ~ |
  a4 r8 b -. |
  c -. d -. a4 |
  d,8 e4 d8 |
  g4 r8 a ~ |
  a a a a |
  a4 r8 fs ~ |
  fs fs c' c |
  c2 |
  a8 ^^ b4 ^^ a8 ^^ |
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(12 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  d2
  \bar "||" \break
  
  \partial 4 d,8 e ~ |
  e d a'4 ^> |
  a b8 a ~ |
  a g c4 ^> |
  c2 |
  r8 a b a |
  e'8. ^> e16 e8^> d |
  r4 c8 a |
  fs4 d8 a' ~ |
  a b a a |
  g2 ~ |
  g4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r8 d4 ^> d,8 |
  e d e4 |
  fs8 g ~ g4 |
  r8 c4 ^> g8 |
  a g a4 |
  b8 c ~ c4 |
  r8 e,4 ^> e8 |
  e e fs4 |
  fs8 g4 g8 ~ |
  g g g fs |
  d2 ~ |
  d4
  
  r4
  R2*2
  r8 d' -. b -. g -. |
  fs2 |
  d8 e4 d8 |
  g4 r8 e ~ |
  e e e g |
  fs4 r8 e ~ |
  e ds e e |
  e2 |
  e8 ^^ g4 ^^ g8 ^^ |
  fs2
  
  d8 e ~ |
  e d e ^> (g) |
  fs4 d8 e ~ |
  e d e4 ^> |
  e2 |
  r8 a b a |
  gs8. ^> a16 c8 ^> b |
  r4 e,8 c |
  d4 d8 e ~ |
  e g fs fs |
  g2 ~ |
  g4
}

nhacDiepKhucBas = \relative c' {
  r8 d4 ^> d,8 |
  e d cs4 |
  d8 g ~ g4 |
  r8 c4 ^> g8 |
  a g fs4 |
  g8 c ~ c4 |
  r8 a4 ^> a8 |
  gs a d4 |
  c8 b4 b8 ~ |
  b <c e,> <c e,> <c d,> |
  <b g>2 ~ |
  <b g>4
  
  r4
  R2
  r4 fs8 a ~ |
  a b g e |
  d2 |
  d8 e4 d8 |
  g4 r8 c ~ |
  c c cs cs |
  d4 r8 c!? ~ |
  c b bf bf |
  a2 |
  a8 ^^ e4 ^^ e8 ^^ |
  d2
  
  d8 e ~ |
  e d c4 ^> |
  d b'8 c ~ |
  c b bf4 ^> |
  a2 |
  r8 fs g f! |
  e8. ^> c16 e8 ^> g |
  r4 a8 a |
  d,4 d8 cs ~ |
  cs! cs d d |
  g,2 ~ |
  g4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Hãy hòa lên một khúc hát mới,
  Tấu nhạc vang dội khắp thế giới
  Cùng thần thánh chung lời
  Mừng Chúa tới hiển trị đất trời
  \set stanza = "1."
  Tiếng đàn dệt với cung tơ
  nhịp chiêng vang rền
  Hòa chung niềm vui
  Suy tôn Vua muôn vua,
  phụng thờ Chúa các chúa
  quyền uy tuyệt đối.
  \set stanza = "2."
  Đại dương gầm vang lên
  Núi non hãy múa hát
  Và sông lạch hỡi hãy vỗ tay
  Hãy reo hò mừng vui trước tôn nhan Ngài.
}

loiDiepKhucAlto = \lyricmode {
  Hãy hòa lên một khúc hát mới,
  Tấu nhạc vang dội khắp thế giới
  Cùng thần thánh chung lời
  Mừng Chúa tới hiển trị đất trời
  trống chiêng vang rền
  Hòa chung niềm vui
  Suy tôn Vua muôn vua,
  phụng thờ Chúa các chúa
  quyền uy tuyệt đối.
  Đại dương gầm vang lên
  Núi non hãy múa hát
  Và sông lạch hỡi hãy vỗ tay
  Hãy reo hò mừng vui trước tôn nhan Ngài.
}

loiDiepKhucBas = \lyricmode {
  Hãy hòa lên một bài ca mới,
  Tấu nhạc vang dội cả thế giới
  Cùng thần thánh chung lời
  Mừng Chúa tới hiển trị
  <<
    { đất trời. }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    mọi nơi.
	}
  >>
  Nhịp theo tiếng chiêng vang rền
  Hòa chung niềm vui
  Suy tôn Vua muôn vua,
  phụng thờ Chúa các chúa
  quyền uy tuyệt đối.
  Đại dương gầm vang lên,
  Đồi non hãy múa hát
  Và sông lạch hỡi hãy vỗ tay
  Hãy reo hò mừng vui trước tôn nhan Ngài.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 20\mm
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
}

TongNhip = {
  \key g \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
