% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Kính Chào Nữ Vương" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
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

nhacDiepKhucSop = \relative c' {
  \partial 4 f8 (e) |
  d4. g8 |
  f (e) f g |
  a4 a8 a |
  d4 g, |
  a f8 e |
  d4 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  f8 (e) |
  d4. cs8 |
  d4 d8 d |
  cs4 e8 f |
  g (f) e (d) |
  e (f) d cs |
  d4
}

nhacDiepKhucBas = \relative c {
  f8 (e) |
  d4. a8 |
  bf4 bf8 bf |
  a4 cs8 d |
  bf4 bf |
  a a8 a |
  d4
}

nhacPhienKhuc = \relative c' {
  \partial 4 f8 (e) |
  d c d bf |
  a2 |
  a8 a' g (f) |
  e4. bf'8 |
  a g e f |
  d4 \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Kính chào Nữ Vương Mẹ nhân ái
  là nguồn sống niềm vui suối ngọt ngào.
}

loiDiepKhucBas = \lyricmode {
  Kính chào Nữ Vương Mẹ nhân ái
  là nguồn sống niềm vui suối ngọt ngào.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Chúng con, con cháu E -- và ở chốn lưu đày
  ngước trông lên Mẹ khấn cầu.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Chúng con trong vũng lệ sầu
  ngày thánh cơ cầu ngước trông xin Mẹ chữa bầu.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Đến sau qua kiếp lưu đày
  Mẹ dẫn lên trời ngắm trông Con Mẹ suốt đời.
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
      \new Lyrics \lyricsto beAlto \loiDiepKhucSop
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
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override LyricHyphen.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
