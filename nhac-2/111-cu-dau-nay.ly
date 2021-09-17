% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Cứ Dấu Này" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 2 a8 a d, (f) |
  g4 g8 g c (d) |
  d2. ~ |
  d4 b!16 (d) b (a) e (g) a8 |
  a4 a8 a c8 (d) |
  d4 c8 c e \afterGrace d ({
    \override Flag.stroke-style = #"grace"
    c)} |
  \revert Flag.stroke-style
  a4 (g2) ~ |
  g4 e8. e16 a8 fs16 (e) |
  d2. ~ |
  
  \time 2/4
  \partial 4. d4.
  
  \time 3/4
  \once \override Score.RehearsalMark.font-size = #0.5
  \mark \markup { \musicglyph #"scripts.coda" }
  %<> \tweak extra-offset #'(1 . -1.5)
  d2. ~ |
  d2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  a8 a d, (f) |
  g4 g8 g c (d) |
  d2. ~ |
  d4 b!16 (d) b (a) e (g) a8 |
  a4 a8 a g4 |
  a a8 a g [g] |
  c,2. ( |
  d4) e8. e16 a8 fs16 (e) |
  c4 bf4. bf8 |
  a4.
  d4 b!4. b8 |
  a2
}

nhacDiepKhucBas = \relative c' {
  a8 a d, (f) |
  g4 g8 g c (d) |
  d4 b!8 b d b16 (a) |
  g2. ~ |
  g4 f8 f e4 |
  d2. ~ |
  d4 e8 d c16 (d) g8 |
  g4 e8. e16 a8 fs16 (e) |
  d4 g4. g8 |
  d4.
  d4 g4. g8 |
  <fs d>2
}

nhacPhienKhucSop = \relative c'' {
  R2*2
  r4 a8 g ~ |
  g bf g4 |
  a2 ~ |
  a4 r |
  r f8 g ~ |
  g a f e |
  
  \time 3/4
  d2 \bar "|."
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Nhận biết các con là môn đệ của Thầy:
  là các con hằng thương mến nhau.
  \set stanza = "1-3."
  Là hãy thương mến nhau như Thầy thương mến các con.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Người nào yêu mến Ta thì tuân giữ lệnh truyền.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Thầy cầu cho các con được hiệp nhất nên một.
}

loiDiepKhucBas = \lyricmode {
  Cứ dấu này người ta nhận biết,
  nhận biết các con là môn đệ Thầy:
  là đoàn con hằng thương mến nhau.
  \set stanza = "1."
  Thầy truyền cho các con điều răn mới của Thầy.
  \set stanza = "1-3."
  Là hãy thương nhau hỡi đoàn con.
}

loiPhienKhucSopMot = \lyricmode {
  
}

loiPhienKhucSopHai = \lyricmode {
  
}

loiPhienKhucSopBa = \lyricmode {
  
}

loiPhienKhucSopBon = \lyricmode {
  
}

loiPhienKhucBasMot = \lyricmode {
  
}

loiPhienKhucBasHai = \lyricmode {
  
}

loiPhienKhucBasBa = \lyricmode {
  
}

loiPhienKhucBasBon = \lyricmode {
  
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
      \new NullVoice = beSop \nhacDiepKhucAlto
      \new Lyrics \lyricsto beSop \loiDiepKhucAlto
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}