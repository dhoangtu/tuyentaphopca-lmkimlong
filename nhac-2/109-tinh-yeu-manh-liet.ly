% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tình Yêu Mãnh Liệt" }
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

nhacDiepKhucSop = \relative c'' {
  \partial 8 r8 |
  R2.
  r4 c8 c4 c8 |
  e,4. e8 \tuplet 3/2 { c'8 c a } |
  b2 \tuplet 3/2 { e8 e e } |
  b4. b8 \tuplet 3/2 { d d d } |
  a4 r8 b gs e |
  c'4. (b8) gs gs |
  a2 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r8
  R2.
  r4 e8 e4 c8 |
  b4. d8 \tuplet 3/2 { c e a } |
  gs2 \tuplet 3/2 { gs8 gs a } |
  f4. g8 \tuplet 3/2 { f f g } |
  e4 r8 b gs' e |
  a4. (f8) e d |
  c2 r8
}

nhacDiepKhucBas = \relative c {
  a8 |
  e'4. f8 \tuplet 3/2 { d e d } |
  a'4 a8 a4 a8 |
  gs4. gs8 \tuplet 3/2 { a a f } |
  e2 \tuplet 3/2 { e8 e c } |
  d4. e8 \tuplet 3/2 { d8 d b } |
  c4 r r |
  r8 a' f d e e |
  <a a,>2 r8
}

nhacPhienKhuc = \relative c' {
  \partial 8 e8 |
  a4. a8 \tuplet 3/2 { a8 a gs } |
  b2 r8 e, |
  c'4. c8 \tuplet 3/2 { c8 c b } |
  e2. |
  <<
    {
      \tuplet 3/2 { e8 e e } \tuplet 3/2 { d d d }
      \tuplet 3/2 { c c c } |
      b2
    }
    \notBePhu -2 {
      \tuplet 3/2 { c8 c c } \tuplet 3/2 { b b b }
      \tuplet 3/2 { a a a } |
      e2
    }
  >>
  r8 e |
  a4. a8 \tuplet 3/2 { a f e } |
  d2 r8 d |
  g4. g8 \tuplet 3/2 { g e c } |
  b2. |
  <<
    {
      \tuplet 3/2 { d'8 d d } \tuplet 3/2 { c c c }
      \tuplet 3/2 { b b b }
    }
    \notBePhu -2 {
      \tuplet 3/2 { b,8 b b } \tuplet 3/2 { e e e }
      \tuplet 3/2 { gs gs gs }
    }
  >>
  a2 \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Sức nóng ái tình là sức nóng lửa thiêu.
  Nước lũ thét gào, dù phong ba tuôn trào,
  cũng không dập tắt được tình yêu.
}

loiDiepKhucBas = \lyricmode {
  Tình yêu mãnh liệt hơn sự chết.
  Sức nóng ái tình là sức nóng lửa thiêu.
  Nước lũ thét gào, dù phong ba tuôn trào,
  cũng không dập được tình yêu.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Tình yêu khai sinh nơi Thượng Đế,
  tình yêu thiên thu không tàn phế.
  Khắp thế giới vui hân hoan nghe tin xuân về.
  Tình yêu đến biến đổi phân người,
  tình yêu đến rắc gieo nụ cười.
  Chúa giáng thế cho muôn dân trông mong lên trời.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Tình yêu dâng cao như ngọn sóng,
  tình yêu thiêu con tim rực nóng.
  Mắt ngó mắt, tay trao tay nghe xôn xao lòng.
  Tình yêu chiếu sáng cả gian trần,
  tình yêu đã giáng sinh một lần.
  Kiếp sống mới nay khai hoa thơm xinh vô ngần.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Tình yêu lung linh như giọt nắng,
  tình yêu lau khô bao lệ đắng.
  Cất tiếng hát xua đêm đen hoang mang yên lặng.
  Tình yêu xóa hết mọi u mờ,
  tình yêu thắp sáng khi đợi chờ.
  Khắp bốn hướng muôn con tim tin yêu tôn thờ.
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
  \key c \major \time 3/4
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
