% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trong Đêm Tuyết Sương" }
  poet = "Nhạc: Ngoại Quốc"
  composer = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  bf4 bf8 c bf4 f |
  bf c d2 |
  ef4 d8 c d4 bf |
  c2 bf |
  bf4 bf8 c bf4 f |
  bf c d2 |
  ef4 d8 c d4 bf |
  c2 bf |
  bf g4 c |
  bf a8 g f2 |
  bf4 bf c d8 c |
  bf4 d c2 |
  bf g4 c |
  bf a8 g f2 |
  bf4 bf c d8 c |
  bf4 (a) bf2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  f1 ~ |
  f4 r f g8 a |
  bf2. r8 a |
  g f g a bf2 |
  f f4 f8 ef |
  f g f2 f8 a |
  bf c bf4 af8 g f4 |
  g2 (f) |
  f (g) |
  g4 f d2 |
  g4 g g g |
  f g a8 [g] f [ef] |
  f2 d |
  g4 f d2 |
  g2. g4 |
  g (f) f2
}

nhacDiepKhucTenor = \relative c' {
  d1 |
  d4 d8 ef f2 |
  g f8 [ef] d [c] |
  d4. c8 d [f] ef [d] |
  c2 c4 c8 d |
  c2 bf |
  r2 r8 bf c [d] |
  ef2 (d) |
  d1 |
  d4 c bf2 |
  d4 f8 ef d4 c |
  d ef f8 [ef] d [c] |
  d2 bf |
  d4 c bf2 |
  d4 f ef2 |
  d4 c d2
}

nhacDiepKhucBas = \relative c' {
  r2 bf4 bf8 c |
  bf a g f ef4 d |
  c2 g'4 f |
  ef f bf,2 |
  af af'4 af8 g |
  af2 g8 [f] ef [d] |
  c2 r |
  bf'4 (a bf2) |
  bf,4 d ef e! |
  f2 bf4 a8 g |
  f ef d c bf4 bf |
  a f g a |
  bf d ef e! |
  f2 bf4 a8 g |
  f ef d c bf2 |
  ef4 d bf2
}

% Lời
loiDiepKhucSopMot = \lyricmode {
  \set stanza = "1."
  Trong đêm tuyết sương mùa đông băng giá.
  Bỗng âm vang tiếng nhạc Thiên Thần.
  Loan tin Chúa sinh hạ nơi hang đá.
  Ánh quang nay chiếu dọi xa gần.
  Sáng danh Chúa Cha trên cung trời.
  Và rạng danh Chúa con vừa giáng sinh.
  An bình khắp nơi cho cõi đời.
  Người người vui đón Vua hiển vinh.
}

loiDiepKhucSopHai = \lyricmode {
  \set stanza = "2."
  Mau theo ánh sao dọi lên soi lối.
  Tới Be -- lem kính thờ Vua Trời.
  Sinh ra giữa hang lừa bao tăm tối.
  Đấng muôn dân ngóng chờ bao đời.
}

loiDiepKhucSopBa = \lyricmode {
  \set stanza = "3."
  Hôm nay khắp nơi ngợp trong vui sướng.
  Hát lên đi thấu tận cung trời:
  Vinh quang Chúa lan tràn qua muôn hướng.
  Thế nhân nay đón hưởng an bình.
}

loiDiepKhucAlto = \lyricmode {
  A la la la la la la la la la la la la la la
  la la la la la la la la la la la
  A Rạng danh trên trời Vinh danh Chúa Con vừa hạ sinh
  để đem lại an bình. Tới cõi đời nơi nơi hiển vinh.
}

loiDiepKhucTenor = \lyricmode {
  A la la la la la la la la la la la la la lala la 
  la la la la la la la la la
  A Vang danh trên trời. Và sáng danh Chúa Con vừa hạ sinh
  để đem lại an bình.
  Tới cõi đời người hỡi đón Vua hiển vinh.
}

loiDiepKhucBas = \lyricmode {
  La la la la la la la la la la la la la la la la
  la la la la la la la la la
  A Rạng danh Thiên Chúa Cha
  sáng danh Chúa Con Đấng đã sinh ra đời,
  ra đời đem lại bình an cho mọi nơi.
  Tới đây muôn người hân hoan đón mừng Vua hiển vinh.
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
  page-count = #2
  %ragged-bottom = ##f
}

TongNhip = {
  \key bf \major \time 2/2
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
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSopMot
      \new Lyrics \lyricsto beSop \loiDiepKhucSopHai
      \new Lyrics \lyricsto beSop \loiDiepKhucSopBa
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacDiepKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
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
    \override Lyrics.LyricSpace.minimum-distance = #0.4
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
