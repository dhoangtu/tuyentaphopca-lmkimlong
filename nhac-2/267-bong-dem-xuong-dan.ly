% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bóng Đêm Xuống Dần" }
  composer = "Cổ điệu: Ukraina"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  bf4 a8 bf g4 \bar ".|:"
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 | \break
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 | \break
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  d' c8 d bf4 |
  d c8 d bf4 |
  d c8 d bf4 |
  d c8 d bf4 |
  g' g8 g f8 (ef) |
  d4 d8 d c (bf) |
  c4 c8 c d (c) |
  g4 g8 g g4 |
  d8 e! fs g a bf |
  c d c4 bf |
  d,8 e! fs g a bf |
  c4 d8 c bf4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 \bar ":|."
  bf a8 bf g4 |
  g2. |
  g |
  g |
  d'4 c8 d bf r \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  R2.*4
  g2. |
  f |
  ef |
  d |
  g |
  f |
  ef |
  d |
  g4 g8 g g4 |
  g4 g8 g g4 |
  g4 g8 g g4 |
  g4 g8 g g4 |
  bf4 a8 bf g4 |
  bf4 a8 bf g4 |
  bf4 a8 bf g4 |
  bf4 a8 bf g4 |
  g4 g8 g g4 |
  g4 g8 g g4 |
  g4 g8 g g4 |
  g4 g8 g g4 |
  d2. |
  ef4 fs g |
  d2. |
  e!4 fs g |
  d2. |
  d2. |
  d |
  ef |
  d |
  d |
  d |
  d ~ |
  d |
  bf'4 a8 bf g r
}

nhacDiepKhucTenor = \relative c' {
  R2.*8
  ef2. |
  d |
  c |
  g |
  c4 c8 c c4 |
  d4 d8 d d4 |
  ef ef8 ef ef4 |
  d d8 d d4 |
  d2. |
  e! |
  f4 ef d |
  g8 (f) ef4 d |
  d ef8 ef d (c) |
  d4 d8 d d4 |
  ef ef8 ef  g ef |
  d4 d8 d d4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  g2. |
  a |
  g |
  g |
  g |
  g |
  bf4 a8 bf g4 |
  g2. ~ |
  g ~ |
  g2 ~ g8 r
}

nhacDiepKhucBas = \relative c {
  R2.*12
  ef4 ef8 d ef4 |
  g g8 g g4 |
  c c8 c c4 |
  g g8 g g4 |
  g g8 g g4 |
  g g8 g g4 |
  g g8 g g4 |
  g g8 g g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  bf a8 bf g4 |
  d2. |
  d |
  d |
  d2 e!4 |
  f2. |
  ef |
  d |
  c |
  g |
  g |
  g |
  bf4 a8 bf g4 ~ |
  g2. ~ |
  g2 ~ g8 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  La la la la la la la la la la la la la la la la
  Bóng đêm xuống dần tuyết rơi trắng ngần.
  Bóng mây lững lờ ánh sao khuất mờ.
  Bỗng đâu khắp trời ánh quang sáng ngời.
  Tiếng muôn sứ thần báo cho thế trần.
  Phút vui đến rồi hát vang núi đồi:
  Chính con Chúa Trời giáng sinh cứu đời.
  Tấu vang khúc đàn quyến theo gió ngàn.
  Đến đây kính thờ Chúa đang đón chờ.
  La la la la la la la la la la la la
  la la la la la la la la la la la la la la
  la la la la la la la la la la
  Tấu vang khúc đàn quyến theo gió ngàn.
  Tới đây kính thờ Chúa đang đón chờ.
  La la la la Hãy mau đón mời
  Hm Hm Hm Tán dương Chúa Trời.
}

loiDiepKhucAlto = \lyricmode {
  La la la la la la la la
  Phút vui đến rồi hát vang núi đồi:
  Chính con Chúa Trời giáng sinh cứu đời.
  Tấu vang khúc đàn quyến theo gió ngàn.
  Đến đây kính thờ Chúa đang đón chờ.
  La la la la la la la la la la la la
  la la la la la la la la la la la la
  Hm Hm Hm Hm Hm Hm Hm Hm
  Tán dương Chúa Trời.
}

loiDiepKhucTenor = \lyricmode {
  La la la la
  Phút vui đến rồi hát vang núi đồi:
  Chính Con Chúa Trời giáng sinh cứu đời.
  La la Đến đây thờ Chúa đang chờ.
  La la la la la la la la la la la la la la la la la
  Phút vui đến rồi hát vang núi đồi:
  Chính Con Chúa Trời giáng sinh cứu đời.
  Hm Hm Hm Hm Hm Hm
  Khắp dân cõi đời. Hm
}

loiDiepKhucBas = \lyricmode {
  Phút vui đến rồi hát vang núi đồi:
  Chính Con Chúa Trời giáng sinh cứu đời.
  Tấu vang khúc đàn quyến theo gió ngàn.
  Đến đây kính thờ Chúa đang đón chờ.
  Ước mong tháng ngày giữa đêm thánh này.
  Phúc thiêng thắm mầu xóa tan bóng sầu.
  La la la la la
  Hm Hm Hm Hm Hm Hm Hm
  Đến đây kết lời.
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
  %page-count = #4
  %ragged-bottom = ##f
}

TongNhip = {
  \key bf \major \time 3/4
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
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
