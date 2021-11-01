% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nếu Có Thể" }
  poet = \markup {
    \column {
      \line { "Ý: Lc 22,42. 23,46. Mc 15,14" }
      \line { "    Dt 10,8-9. Ga 5,30. 6,38"  }
    }
  }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 a4 |
  d d8 d |
  a ([d b a]) |
  g4 fs8 (g) |
  a a a4 |
  g8 a fs (e) |
  d4 r8 d |
  f f a (bf) |
  g4 r8 d |
  f f a (bf) |
  a g f (g) |
  a4 f |
  d4 \bar "|."
}

nhacDiepKhucBas = \relative c {
  r4 |
  r d |
  f f8 f |
  c8 ([e d c]) |
  a4 a8 (c) |
  d8 d d4 |
  d8 a' g (f) |
  d4 r8 d |
  f f a (bf) |
  a4 r8 d, |
  f f a (bf) |
  a4 a, |
  d4
}

nhacPhienKhuc = \relative c' {
  \partial 4 d8 d |
  c d a (c) |
  d4 g8 g |
  f e d g |
  a2 ~ |
  a8 a d d |
  a (d) b (a) |
  fs g a (b) |
  a4. a8 |
  g a
  \once \phrasingSlurDashed
  fs \(e\) |
  d2 ~ |
  d4 \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lạy Cha nếu có thể được thì xin cho con khỏi uống chén này.
  Đừng theo như ý con, một xin vâng ý Cha đã định trước muôn đời.
}

loiDiepKhucBas = \lyricmode {
  Lạy Cha nếu có thể được thì xin cho con khỏi uống chén này,
  Đừng theo như ý con, một xin vâng ý Cha trọn đời.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Cha không nhận lễ toàn thiêu, không ưng thuận chiên bò ky tế
  thì nay con đến để làm theo ý Cha: hiến dâng trót cuộc _ đời.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Bao công việc vui lòng Cha, Con thi hành vuông tròn mau mắn,
  Vì con không đến để làm theo ý Con, nhưng theo ý Cha vẹn toàn.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Sao Cha đành tâm bỏ Con, khi quân thù tứ bề xông đánh,
  Này con xin phó dâng ở trong tay Cha, trót cả tấm linh _ hồn.
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
  \key c \major \time 2/4
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
