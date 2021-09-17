% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Cứ Dấu Này" }
  composer = "Lm. Kim Long"
  arranger = " "
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 r4 |
  R2
  r8. g16 e'8 e |
  d2 |
  c8 d a16 (c) a8 |
  g4 r8 g |
  e'4. (f16 e) |
  d4 g,8 b |
  d4. (e16 d) |
  c2 ~ |
  c4 r |
  R2*2
  r4. c,8 |
  e (f) g a |
  g4. a8 |
  g a c c |
  b4 \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  r4
  R2
  r8. g16 c8 c |
  b2 |
  g8 f c [c] |
  b4 r8 d |
  g2 |
  fs4 g8 [g] |
  f2 |
  e2 ~ |
  e4 r |
  R2*2
  r4. c8 |
  c (d) e f |
  e4. f8 |
  e f g f |
  d4
}

nhacDiepKhucBas = \relative c {
  e8 e16 (d) |
  c8. c16 e8 d |
  g2 ~ |
  g8 d g f |
  e d f fs |
  g4 r8 g |
  c,4 (b8 c) |
  d4 e8 <g e> |
  <a\=1^( d,\=2_(>4 <b\=1) g\=2_)>
  <c c,>2 ~ |
  <c c,>4 g8 a |
  a c a (g) |
  d8. f16 g8 e16 (d) |
  c2 ~ |
  c4 r8 g |
  c (d) c (b) |
  c4 e8 d |
  g4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Nhận biết các con là môn đệ của Thầy:
  là các con hằng thương mến nhau.
  \set stanza = "1-3."
  Là hãy thương mến nhau như Thầy thương mến các con.
}

loiPhienKhucBasMot = \lyricmode {
  Cứ dấu này người ta nhận biết,
  nhận biết các con là môn đệ Thầy:
  là đoàn con hằng thương mến nhau.
  \set stanza = "1."
  Thầy truyền cho các con điều răn mới của Thầy.
  \set stanza = "1-3."
  Là hãy thương nhau hỡi đoàn con.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 22 { _ }
  \set stanza = "2."
  Người nào yêu mến Ta thì tuân giữ lệnh truyền.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 22 { _ }
  \set stanza = "3."
  Thầy cầu cho các con được hiệp nhất nên một.
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
  page-count = #1
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -3 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}