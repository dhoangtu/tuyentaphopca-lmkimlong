% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lạy Nữ Vương Thiên Đàng" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 r4 |
  r g ~ g8 e' d c |
  b4 c16 (b) a8 | \break
  g4 r8 g |
  a4 c |
  b r |
  R2
  r4 g8 c16 (d) |
  b8 c d16 (e) d8 |
  d4. b8 |
  a4 r8 a |
  b4 d |
  cs2 ~ |
  cs4 r |
  r8 g e' d16 c |
  b4. c16 (b) |
  a4 b8 c | \break
  d4 r8 g, |
  a4 c |
  b2 ~ |
  b8 b 
  e,
  e |
  c'4 b8
  c16 (b) |
  a2 ~ |
  a4 r8 a |
  b4 d |
  c2 ~ |
  c4 r |
  R2
  r8 e d c |
  b4 c8 b |
  a4. c16 (a) |
  g4 r8 g |
  a4 c |
  b r |
  R2
  r4 r8 b |
  e e d16 (e) d8 |
  c4. c8 |
  f f d4 ~ |
  d8 d g g |
  e4. a,8 |
  d4 d |
  c2 ~ |
  c4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r4 |
  r g ~ |
  g8 c b a |
  g4 e8 [c] |
  b4 r8 e |
  c4 g'8 (f) |
  d4
  d8 g16
  (a) |
  fs8 g
  a16 (b) a8 |
  a4
  e |
  d b'16 (c) b8 |
  a4 e8 (d) |
  cs4 r8 fs |
  d4 a'8 (f) |
  d2 ~ |
  d4 r |
  r8 g c b16 a |
  g4. g8 |
  c,4 g'8 g |
  fs4 r8 e |
  e4 e |
  gs2 ~ |
  gs4 r4 |
  R2
  r8 c, f g16 (f) |
  e4 r8 e |
  gs4 gs |
  a2 ~ |
  a4 r |
  R2
  r8 c b a |
  g4 g8 g |
  c,4. c8 |
  b4 r8 e |
  c4 g'8 (f) |
  d4 r |
  r r8 a' |
  d d b16 (c) b8 |
  a4 a8 f |
  e4. e8 |
  a a a4 ~ |
  a8 b b b |
  c4. e,8 |
  <a f>4 <a f> |
  <g e>2 ~ |
  <g e>4
}

nhacDiepKhucBas = \relative c {
  c4 ~ |
  c8 c' b a |
  g2 ~ |
  g4 fs8 fs |
  g4 r8 c |
  f,4 e8 (d) |
  g4 r |
  r c,8 cs |
  d d g4 ~ |
  g r8 g16 (a) |
  fs8 fs g gs |
  a4 r8 d |
  g,4 fs8 (e) |
  a2 ~ |
  a8 a d b16 a |
  g2 ~ |
  g4 r8 e |
  f4 e8 e |
  d4 r8 d |
  c4 a |
  e'2 ~ |
  e4 r |
  R2
  r8 a d e16 (d) |
  c4 r8 c |
  e,4 e |
  a2 |
  a8 d d b |
  c4 a16 (b) a8 |
  g2 ~ |
  g4 e8 e |
  f4 fs |
  g r8 c |
  f,4 e8 (d) |
  g4 r8 g |
  c c a16 (b) a8 |
  g4. g8 |
  c4 c8 b |
  c c a a |
  d,4. f8 |
  g4 (e8 g) |
  a (b) c c |
  f,4 g |
  c,2 ~ |
  c4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lạy Nữ Vương Thiên Đàng hãy vui mừng.
  Al -- le -- lu -- ia!
  Vì Đấng Mẹ đã đáng cưu mang trong lòng.
  Al -- le -- lu -- ia!
  Người đã sống lại thật như lời đã phán hứa.
  Al -- le -- lu -- ia!
  Xin cầu cùng Chúa cho chúng con.
  Al -- le -- lu -- ia!
  Thánh Ma -- ri -- a hãy hỉ hoan khoái lạc.
  Al -- le -- lu -- ia!
  Vì Chúa đã sống lại thật.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
}

loiDiepKhucAlto = \lyricmode {
  Lạy Nữ Vương Thiên Đàng hãy vui mừng.
  Al -- le -- lu -- ia!
  Vì Đấng Mẹ đã đáng cưu mang trong
  Mẹ đáng cưu mang trong lòng.
  Al -- le -- lu -- ia!
  Người đã sống lại thật như lời đã phán hứa.
  Al -- le -- lu -- ia!
  cầu cho chúng con.
  Al -- le -- lu -- ia!
  Thánh Ma -- ri -- a hãy hỉ hoan khoái lạc.
  Al -- le -- lu -- ia!
  Vì Chúa đã sống lại thật, sống lại thật.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
}

loiDiepKhucBas = \lyricmode {
  Lạy Nữ Vương Thiên Đàng hãy vui mừng.
  Al -- le -- lu -- ia!
  Vì Đấng Mẹ đã đáng, Đấng Mẹ cưu mang trong lòng.
  Al -- le -- lu -- ia!
  Người đã sống lại thật như lời đã phán xưa.
  Al -- le -- lu -- ia!
  Cầu cho chúng con.
  Al -- le -- lu -- ia!
  Lạy Thánh Nữ đồng trinh Ma -- ri -- a!
  Hãy hỉ hoan khoái lạc.
  Al -- le -- lu -- ia!
  Vì Chúa đã sống lại thật, vì Chúa sống lại thật.
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
  Al -- le -- lu -- ia!
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
  print-page-number = #f
  %page-count = #2
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
