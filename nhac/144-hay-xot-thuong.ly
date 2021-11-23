% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hãy Xót Thương" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  d4. d8 |
  b2 ~ |
  b8 a a fs |
  e4 g8 a |
  b2 |
  c4. a8 |
  b2 ~ |
  b8 g g e |
  d4 fs8 a |
  g2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  fs4. fs8 |
  g2 ~ |
  g8 fs d c |
  b4 b8 d |
  g2 |
  e4. e8 |
  ds2 ~ |
  ds8 e e c |
  b4 c8 c |
  b2
}

nhacDiepKhucBas = \relative c {
  d4. d8 |
  g2 ~ |
  g8 d d d |
  e4 e8 fs |
  g2 |
  a4. c8 |
  b2 ~ |
  b8 g c, c |
  d4 d8 d |
  g,2
}

nhacPhienKhucSop = \relative c'' {
  g8 fs16 (g) e8 b'16 (c) |
  a2 ~ |
  a8 fs fs a |
  e4. d8 |
  e fs g e |
  d2 ~ |
  d8 d <b' \=1^( g \=2_(>16 <c \=1) a \=2)> <b g>8 |
  <a fs>2 \bar "||"
}

nhacPhienKhucBas = \relative c' {
  R2
  r8 c cs e |
  d2 |
  r8 g, g g |
  a4. g8 |
  fs8. d16 e8 (fs) |
  g4. g8 |
  d2
}

% Lời
loiDiepKhucSop = \lyricmode {
  Hãy xót thương như Cha trên trời hằng thương xót.
  Hãy tha thứ như Cha trên trời luôn thứ tha.
}

loiDiepKhucBas = \lyricmode {
  Hãy xót thương như Cha trên trời hằng thương xót.
  Hãy tha thứ như Cha trên trời luôn thứ tha.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Xin cảm tạ Chúa Cha, Ngài thực tốt lành,
  vì lòng thương mến của Ngài bền vững thiên thu.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Xin cảm tạ Chúa Con chuộc tội cứu đời.
  Vì lòng thương mến của Ngài bền vững thiên thu.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Xin cảm tạ Thánh Linh nguồn mạch phúc lộc.
  Vì lòng thương mến của Ngài bền vững thiên thu.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Cảm tạ Chúa Cha
  Vì lòng thương mến của Ngài thực bền vững thiên thu.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Cảm tạ Chúa Con
  Vì lòng thương mến của Ngài thực bền vững thiên thu.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Cảm tạ Thánh Linh
  Vì lòng thương mến của Ngài thực bền vững thiên thu.
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
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
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

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff
      <<
      \new Voice = beBas {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

