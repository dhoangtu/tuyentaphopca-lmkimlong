% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lời Con Kêu Khấn" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c' {
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  R2*2
  d8 d e f |
  g4 g8 (a) |
  c b c d |
  e4 f8 ^(e) |
  d2 ~ |
  d8 r a a |
  b4 b |
  b8. ^> g16 c8 c |
  d4 ^> d |
  c8 d e (d16 c) |
  g4. e'8 |
  d d b4 |
  c2 ~ |
  c4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  R2*2
  \repeat unfold 2 { \skip 2 }
  g8 g g g |
  g4 a8 _(c) |
  b2 ~ |
  b8 r a a |
  a4 gs |
  r c8 c |
  c4 b |
  c8 d e (d16 c) |
  g4. g8 |
  f f f4 |
  e2 ~ |
  e4
}

nhacDiepKhucBas = \relative c {
  c8 c d e |
  f2 ~ |
  f4 r |
  r g8 (f) |
  e f e d |
  c4 b8 (c) |
  g'2 |
  g8. ^> e16 a8 a |
  d,4 ^> e |
  r c'8 c |
  d,4 e |
  r c8 d |
  e (d16 c) b8 c |
  d d g,4 |
  c2 ~ |
  c4
}

nhacPhienKhucSop = \relative c'' {
  \partial 4 b4 |
  c8 c a4 |
  b a8 a |
  d, f e (d) |
  e4 e'8. d16 |
  c8 e d c |
  b4 a8 a |
  g8. g16 d'8 d |
  c2
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacPhienKhucBas = \relative c' {
  \skip 4
  \skip 2
  \skip 2
  \skip 2
  \skip 4
  c'8. b16 |
  a8 gs gs a |
  e4 f8 f |
  e8. e16 d8 g |
  e2
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  \override LyricText.extra-offset = #'(0 . -1)
  Tựa trầm hương thơm ngát
  tỏa bay về Tôn nhan Chúa Chúa ơi.
  Tay con vươn lên
  cho bàn tay con vươn lên được như lễ vật
  tiến dâng khi chiều rơi.
}

loiDiepKhucBas = \lyricmode {
  \override LyricText.extra-offset = #'(0 . -1)
  Nguyện lời con kêu khấn
  tỏa bay tới Tôn nhan Ngài,
  Ngài hỡi
  Cho bàn tay con vươn lên,
  tay con vươn lên được như lễ vật
  hiệp dâng khi chiều rơi.
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Xin Chúa giữ miệng con,
  xin canh phòng cửa môi con
  Giúp con đừng vấn vương tội tình,
  cho tâm hồn được mãi thắm xinh.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Con ngước mắt ngữa trông,
  miên man cầu Chúa dủ thương,
  Giữ cho mạng sống con an toàn,
  không sa vào dò lưới ác nhân.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Con cất tiếng nài van,
  xin thương vội đến ủi an.
  Thấu cho từng tiếng con kêu cầu,
  con trông nhờ tình Chúa thẳm sâu.
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
  %page-count = #1
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  %score-system-spacing = #'((basic-distance . 15))
}

TongNhip = {
  \key c \major \time 2/4
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
  \new ChoirStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 14)
                            (padding . 1))
  }
  <<
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = nhacThamChieuAlto \nhacDiepKhucSop
      \new Lyrics \lyricsto nhacThamChieuAlto \loiDiepKhucSop
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice = "beSop" { \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucBas } }
        \new NullVoice = nhacThamChieuPhienKhucSop \nhacPhienKhucSop
        \new Lyrics \with {
          \override VerticalAxisGroup.
            nonstaff-relatedstaff-spacing.padding = #1.5
        }
        \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopHai
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopBa
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
