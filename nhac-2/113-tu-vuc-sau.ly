% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Vực Sâu" }
  poet = "Ý: Tv. 129"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 r4 |
  r a ~ |
  a8 r16 a c8 (bf) |
  a2 ~ |
  a4 d ~ |
  d8 r16 d e8 (d) |
  cs4 a8 d |
  d c bf (a) |
  a4 r8 g |
  a c c4 |
  d4. cs8 |
  d2 ~ |
  d4 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r4 |
  r f ~ |
  f8 r16 f f8 (g) |
  e4 e8 e |
  g g g gs |
  a2 ~ |
  a4 g8 g |
  f a g (f) |
  d a d
  e |
  f (g) a4 ~ |
  a g |
  f2 ~ |
  f4
}

nhacDiepKhucBas = \relative c {
  a8 a |
  c c c cs |
  d2 ~ |
  d8 e16 (d) cs4 ~ |
  cs8 d16 (c!) bf4 ~ |
  bf8 r16 bf bf8 (d) |
  a2 ~ |
  a8 a d (e) |
  f2 ~ |
  f4 r8 f |
  e4 a, |
  d2 ~ |
  d4
}

nhacPhienKhuc = \relative c'' {
  \partial 4 g8. a16 |
  f8 g16 (a) e8 (c) |
  d4 d8. f16 |
  e8 a a bf |
  g4 c8 c |
  d8. g,16 g8 g |
  a4 g8. g16 |
  f8 g16 (a) e8 (c) |
  d4\bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ôi, ôi Chúa ôi.
  Ôi, ôi Chúa ôi.
  Nguyện Chúa lắng nghe lời con,
  lời con kêu lên Chúa lạy Chúa.
}

loiDiepKhucAlto = \lyricmode {
  Ôi, ôi Chúa ôi từ vực sâu con kêu lên Chúa.
  Nguyện Chúa lắng nghe lời con, lời con kêu lên Chúa lạy Chúa.
}

loiDiepKhucBas = \lyricmode {
  Từ vực sâu con kêu lên Chúa, Chúa ôi,
  Chúa ôi, ôi Chúa ôi
  nhậm lời con Chúa ôi lạy Chúa.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Khi Chúa nhìn xét tội tình nào ai người đứng vững,
  Chúa ôi. Nhưng nơi Chúa giầu lòng từ bi
  nên muôn người vẫn phụng thờ.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Con vẫn bền vững đợi chờ vì tin lời Chúa phán hứa xưa.
  Như quân lính đợi chờ hừng đông con trông đợi Chúa mỏi mòn.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Như những người lính tuần hàng đợi trông hừng đông mau sáng lên.
  Đây dân Chúa miệt mài đợi trông ân thiêng giải thoát tội tình.
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
