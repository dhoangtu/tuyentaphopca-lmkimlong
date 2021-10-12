% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Đoàn Người Diễm Lệ" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  r8 e16 e a8 b |
  <gs e>8 e16 e c'8 d |
  <b f>8. b16 <e b e,>16 d c b | \break
  r8 e,16 e a8 b16 (a) |
  gs4. gs8 |
  a4 e8 c' |
  b2 ~ |
  b8 b16 a a8 d |
  e4. e8 |
  e (d) b c16 (b) |
  a2 ~ |
  a4 r |
  R2
  r4 e8 a |
  f8 (e4) b'8 |
  b2 |
  cs8. cs16 cs8 d |
  e4. b8 |
  b d4 b8 |
  a2 ~ |
  a4 r \bar "|." \break
  
  a8 g g e |
  c'4. b8 |
  a d4 c8 |
  b2 |
  b8 g a b |
  e,4. c'8 |
  b4 b8 c |
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(13 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  a2 \bar "||" \break
  
  a16 (b) g8 a b |
  e,4. b'8 |
  a d4 c8 |
  b2 |
  a8 b a16 (g) e8 |
  c'4. b8 |
  e4 c8 b |
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(13 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  a2 \bar "||" \break
  
  d8 g, a16 (g) d8 |
  e4. b'8 |
  b d4 c8 |
  b2 |
  e8 d e c |
  b4. c8 |
  c (b) gs b |
  a2
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  R2*3
  <a e>4 r |
  r8 b,16 b d8 e16 (d) |
  c4. c8 |
  f4 f8 a |
  gs4 r |
  r8 b16 a a8 b |
  c8. a16 gs8 gs |
  a2 ~ |
  a4 r |
  R2
  r4 c,8 d |
  c4. d8 |
  e2 |
  e8. e16 a8 b |
  cs4. fs,8 |
  fs4 e8 d |
  cs2 ~ |
  cs4 r
}

nhacDiepKhucBas = \relative c' {
  <a a,>8 r <d d,> r |
  <b e,>4 r8 <d f,>8 |
  <d g,>4 <d gs,> |
  <c a> r8 d,16 d |
  e4. e16 e |
  f8 f16 (a) a,8 a |
  d4 d8 d |
  e4 r8 d'16 c |
  c4. b16 a |
  a8 d e <d e,> |
  <c f,>2 ~ |
  <c f,>4 r8 e, |
  a4 d,8 e |
  a,2 ~ |
  a8 a a' a |
  gs4 fs8 (gs) |
  a4 r |
  a8. a16 a8 as |
  b4 <gs e>8 <gs e> |
  <a a,>2 ~ |
  <a a,>4 r |
  
  R2
  a8 g g e |
  f4 d |
  e2 |
  R2
  c'8 a b a |
  gs4 e8 e |
  a2 |
  
  R2
  c8 a b e, |
  f4 d |
  e2 |
  R2
  a8 g a16 (g) e8 |
  c'8. (b16) e,8 e |
  a2 |
  
  R2
  c8 b c16 (b) d,8 |
  e4 f8 (a) |
  e2 |
  R2
  e'8 d e e, |
  f4 e8 e |
  a2
}

% Lời
loiDiepKhucSop = \lyricmode {
  \repeat unfold 15 { _ }
  \set stanza = "ĐK:"
  Đoàn người đông diễm lệ vừa đi vừa hát ca.
  Tay cầm cành thiên tuế áo trắng như tuyết pha.
  Từ đau khổ bao la tôn vinh Con Thiên Chúa
  tề tựu trước ngai tòa.
  
  \set stanza = "1."
  Chúng con nơi trần thế xin hợp tiếng hoan ca,
  kính mừng chư quí vị Tử Đạo Việt Nam nhà.
  
  \set stanza = "2."
  Suốt gần ba thế kỷ gian khổ dám xông pha,
  nay triều thiên hùng vĩ rạng rỡ khắp sơn hà.
  
  \set stanza = "3."
  Xin cầu cho hậu duệ noi gương sáng cha ông,
  Đức Tin quyết bảo vệ Đức Ai tỏa sáng ra.
}

loiDiepKhucAlto = \lyricmode {
  _ Đoàn người đông diễm lệ vừa đi vừa hát ca.
  Tay cầm cành thiên tuế áo như tuyết pha.
  Từ đau khổ bao la tôn vinh Con Thiên Chúa
  tề tựu trước ngai tòa.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 7 { _ }
  Đoàn người đông, đoàn người đông diễm lệ
  vừa đi vừa hòa ca.
  Tay cầm cành, tay cầm cành thiên tuế tuyết pha.
  Từ khắp miền huyết lệ, từ trong đau khổ bao la
  tôn vinh Con Thiên Chúa trước ngai tòa.
  
  Chúng con nơi trần thế hoan ca,
  kính mừng chư quí vị Việt Nam ta.
  
  Suốt gần ba thế kỷ xông pha,
  nay triều thiên rạng rỡ cả sơn hà.
  
  Xin cầu cho hậu duệ cha ông,
  Đức Tin quyết bảo vệ tỏa rạng ra.
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
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  print-page-number = #f
  %page-count = #2
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
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
