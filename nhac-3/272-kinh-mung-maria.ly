% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Kính Mừng Maria" }
  composer = "Lm. Kim Long"
  tagline = ##f
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

% Nhạc
nhacPhienKhuc = \relative c'' {
  a8 bf16 (a) g8 a16 (g) |
  f4 e8 (f) |
  g g4 a8 |
  d,2 |
  a8. a16 f' (e) d8 |
  e4 e8 (g) |
  bf bf4 bf8 |
  a2 \bar "||"
}

nhacDiepKhucSop = \relative c'' {
  R2
  a8 d, e e |
  e f4 g8 |
  a2 |
  g8 (a) f e |
  f2 ~ |
  f4 r |
  a8 d, e e |
  e f4 g8 |
  a2 |
  d8 e16 (d) cs8 cs |
  d2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  R2
  a8 d, e e |
  d d4 d8 |
  cs2 |
  d4 d8 cs |
  d2 ~ |
  d4 r |
  a'8 d, e e |
  d d4 d8 |
  cs2 |
  d8 g e e |
  f2
}

nhacDiepKhucBas = \relative c' {
  d8 g, a a |
  a8. (bf16) a8 a |
  g4 d8 bf' |
  a8. e16 g8 a |
  bf4 a8 a |
  d,2 |
  d'8 g, a a |
  a8. (bf16) a8 a |
  g4 d8 bf' |
  a8. e16 g8 a |
  bf8. g16 a8 <a a,> |
  <a d,>2
}

% Lời
loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Thiên Chúa sai sứ thần
  truyền tin cho Đức Mẹ,
  Và Mẹ đã chịu thai
  bởi phép Chúa Thánh Linh.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Tôi chính tôi tá Ngài,
  rầy xin theo ý Ngài,
  Lời thần sứ vừa loan
  hãy tiến diễn với tôi.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Khi ấy Ngôi (i) Lời đầu thai trong xác phàm,
  Và Người đã hạ sinh để sống giữa chúng tôi.
}

loiDiepKhucSop = \lyricmode {
  Kính mừng Ma -- ri -- a đầy ơn phúc,
  Chúa ở cùng Mẹ.
  Kính mừng Ma -- ri -- a, Mẹ Thiên Chúa,
  xin đoái nhìn đoàn con.
}

loiDiepKhucAlto = \lyricmode {
  Kính mừng Ma -- ri -- a đầy ơn phúc,
  Chúa ở cùng Mẹ.
  Kính mừng Ma -- ri -- a, Mẹ Thiên Chúa,
  xin đoái nhìn đoàn con.
}

loiDiepKhucBas = \lyricmode {
  Kính mừng Ma -- ri -- a,
  Ma -- ri -- a đầy ơn phúc,
  Mẹ được Thiên Chúa ở với Mẹ.
  Kính mừng Ma -- ri -- a, Ma -- ri -- a,
  Mẹ Thiên Chúa, Mẹ ơi xin đoái nhìn tới đoàn con.
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
  %systems-per-page = 5
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
