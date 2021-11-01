% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Tái Tạo Lòng Con" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 b16 (a) d8 |
  g,4. fs8 |
  g g e4 |
  d2 |
  r8
  <<
    {
      c' c b |
      a4. fs8 |
      d b'4 a8 |
      g2 ~ |
      g8
    }
    {
      g8 g g |
      fs4. d8 |
      d g4 fs8 |
      d2 ~ |
      d8
    }
  >>
  \bar "|."
}

nhacDiepKhucBas = \relative c' {
  r4 |
  r b16 (a) d8 |
  g, e a4 |
  b8 g a fs |
  e2 |
  r8 d' d c |
  b8. a16
  <<
    {
      c8 c |
      b2 ~ |
      b8
    }
    {
      d,8 d |
      g2 ~ |
      g8
    }
  >>
}

nhacPhienKhuc = \relative c'' {
  \partial 4. g4 fs8 |
  b4. b8 |
  a d e, (g) |
  a4. a16 (c) |
  d8 d e16 (d) e (g) |
  d4 r8 b |
  a d e, g |
  a4. b16 (a) |
  g8 a16 (g) e8 d |
  g2 ~ |
  g4 \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Xin tái tạo lòng con nên trong sạch.
  Canh tân tinh thần cho bền vững kiên trung.
}

loiDiepKhucBas = \lyricmode {
  Xin tái tạo lòng con, tái tạo nên trong sạch.
  Canh tân tinh thần bền vững kiên trung.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Thân lạy Chúa xin đừng nỡ đuổi con, đuổi con xa cách Thánh Nhan.
  Xin đừng cất khỏi lòng con Thánh Thần Chúa đã tặng ban.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Bao mừng rỡ khi được Chúa dủ thương, nhiệt tâm vâng ý Chúa luôn.
  Con sẽ dắt dìu tội nhân trở về lối đường thẳng ngay.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Đâu Ngài có ưa gì lễ toàn thiêu, dù con cung kính tiến dâng.
  Nhưng Ngài sẽ chẳng khinh chê cõi lòng hối hận thực tâm.
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
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #2
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
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
