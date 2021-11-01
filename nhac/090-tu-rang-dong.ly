% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Rạng Đông" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 b8 b |
  d2 ~ |
  d8 e d g, |
  c2 |
  c8 ^> cs d4 ~ |
  d8 g, c b |
  a2 ~ |
  a4 r |
  r8 g g a16 (g) |
  fs8 d'4 d8 |
  d b c c |
  a a e'4 ~ |
  e8 d e (fs) |
  g2 ~ |
  g4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r4 |
  r a8 a |
  b4 b8 d, |
  e2 ~ |
  e4 fs8 fs |
  g e a g |
  fs2 ~ |
  fs4 r |
  r8 d d cs |
  d a'4 c8 |
  b g g g |
  e e b' fs |
  g4 c |
  c8 (d16 c b4) ~ |
  b
}

nhacDiepKhucBas = \relative c {
  r4 |
  r d8 d |
  g4. f!8 |
  e e a4 ~ |
  a
  <<
    {
      d8 c |
      b4 a8 a |
      a2 ~ |
      a8
    }
    {
      d,8 d |
      e4 c8 cs |
      d2 ~ |
      d8
    }
  >>
  d d e16 (d) |
  b4 b8 a |
  d4 e8 (fs) |
  g4. e8 |
  c' c c c |
  b4 a8 (d,) |
  g2 ~ |
  g4
}

nhacPhienKhuc = \relative c'' {
  \partial 4 g8 g |
  b4. c8 |
  a b fs16 (g) a8 |
  d,4 d8 a' |
  a4. g8 |
  c c a a |
  d2 |
  b8. as16 b8 d |
  d, fs16 (g) \slashedGrace { a16 (b } a4) ~ |
  a8 a c d |
  fs,4. a8 |
  g2 ~ |
  g4 \bar "||"
}

nhacDiepKhucBaBeSop = \relative c'' {
  <>^\markup {
    \halign #0.5 \bold \huge \raise #3 "Tiểu khúc"
    \normalsize \raise #3 "(có thể hát với 2 bè phụ họa)"
  }
  \partial 4 g8 g |
  b4. c8 |
  a b fs16 (g) a8 |
  d,4 d8 a' |
  a4. g8 |
  c c a a |
  d2 |
  b8. as16 b8 d |
  d, fs16 (g) \slashedGrace { a16 (b } a4) ~ |
  a8 a c d |
  fs,4. a8 |
  g2 ~ |
  g4 \bar "|."
}

nhacDiepKhucBaBeTenor = \relative c' {
  r4
  r g8 g |
  a4 a8 (g) |
  fs2 ~ |
  fs4 fs8 g |
  a4 c8 (e) |
  d4 a8 a |
  d4 r8 g, |
  a8. g16
  e'8 (d) |
  \once \stemDown
  \once \override Stem.length = #9
  c4. b8 |
  c d a c |
  \stemDown
  \override Stem.length = #9
  b2 ~ |
  b4
}

nhacDiepKhucBaBeBas = \relative c {
  r4 |
  r g8 g |
  c4. cs8 |
  d2 ~ |
  d4 d8 e |
  a,4 a'8 (g) |
  fs4 fs8 fs |
  g4 r8 b, |
  c8. b16 c8 (d) |
  a4. a8 |
  d d d d |
  g,2 ~ |
  g4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Từ rạng đông tới khi hoàng hôn
  Uy danh Chúa thực đáng suy tôn.
  Vì Ngài siêu việt trên muôn dân
  và vinh quang Ngài vượt quá trời cao vút.
}

loiDiepKhucAlto = \lyricmode {
  Từ rạng đông tới hoàng hôn
  Uy danh Chúa thực đáng suy tôn.
  Vì Ngài siêu việt trên muôn dân
  và vinh quang Ngài vượt quá cõi trời cao vút.
}

loiDiepKhucBas = \lyricmode {
  Từ rạng đông tới trời hoàng hôn
  Uy danh Chúa được suy tôn.
  Vì Ngài siêu việt siêu việt trên muôn dân
  và Chúa lướt qua cõi trời cao vút.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Từ bụi đất Chúa nâng đỡ kẻ thấp hèn,
  Từ phân tro, Ngài cất nhắc người nghèo túng
  cho ngồi chung với hàng khanh tướng,
  hàng khanh tướng của dân Ngài.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Nào người thế co ai sánh nổi với Ngài,
  Từ cao xa Ngài ghé mắt nhìn trời đất.
  Danh Ngài muôn thế hệ tôn kính,
  thần dân hết lời tán dương.
}

loiDiepKhucBaBeSop = \lyricmode {
  Từ bụi đất Chúa nâng đỡ kẻ thấp hèn,
  từ phân tro Ngài cất nhắc người nghèo túng.
  Cho ngồi chung với hàng khanh tướng,
  hàng khanh tướng của dân Ngài.
}

loiDiepKhucBaBeBas = \lyricmode {
  Từ bụi đất thấp hèn, từ phân
  <<
    { tro }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
      thổ
    }
  >>
  cất cao người nghèo túng
  và cho ngồi với hàng, hàng khanh tương của dân Ngài.
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
  %page-count = #1
}

TongNhip = {
  \key g \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

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
    %\override Lyrics.LyricText.font-size = #+2.2
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
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucBaBeSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucBaBeSop
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef bass
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucBaBeTenor
        \nhacDiepKhucBaBeBas
      \new NullVoice = beBas \nhacDiepKhucBaBeBas
      \new Lyrics \lyricsto beBas \loiDiepKhucBaBeBas
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
