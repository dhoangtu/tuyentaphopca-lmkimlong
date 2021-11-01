% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mẹ Đứng Đó" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4 r4 |
  R2*4
  f4. g8 |
  f g bf4 |
  a a |
  d4. d8 |
  cs d e4 |
  a, a |
  bf4. a8 |
  g f e d |
  a'4 f'8 (e) |
  d4 cs8 d |
  bf4 bf |
  a2 ~ |
  a4 r |
  R2*4
  f4. g8 |
  f g bf4 |
  a a |
  d4. d8 |
  cs d e4 |
  a, a |
  bf4. a8 |
  g f e d |
  a'4 a8 bf |
  a2 |
  cs |
  d ~ |
  d4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r4 |
  R2*4
  d4. e8 |
  d e g4 |
  f a8 (g) |
  f4. g8 |
  a a bf (g) |
  e4 a |
  bf4. a8 |
  g f e d |
  a'4 a8 (g) |
  f4 a8 a |
  d,2 ~ |
  d8 f e d |
  cs4 r |
  R2*4
  d4. e8 |
  d e g4 |
  f a8 (g) |
  f4. g8 |
  a a bf (g) |
  e4 a |
  bf4. a8 |
  g f e d |
  a'4 d,8 d |
  f4 (d8 f) |
  e4 (a8 g) |
  f2 ~ |
  f4 r
}

nhacDiepKhucBas = \relative c {
  d4 ~ |
  d f8 (g) |
  a4. g8 |
  f g a4 |
  d,2 ~ |
  d4 r |
  R2
  r4 a' |
  bf4. bf8 |
  a
  <<
    {
      d8 d4 |
      cs
    }
    {
      f,8 g4 |
      a
    }
  >>
  a |
  bf4. a8 |
  g f e d |
  a'4 a |
  bf a8 f |
  g4 e |
  a2 ~ |
  a4 d, ~ |
  d f8 (g) |
  a4. g8 |
  f g a4 |
  d,2 ~ |
  d4 r |
  R2
  r4 a' |
  bf4. bf8 |
  a8
  <<
    {
      d8 d4 |
      cs
    }
    {
      f,8 g4 |
      a
    }
  >>
  a4 |
  bf4. a8 |
  g f e d |
  a'4 f8 g |
  a2 |
  <a a,> |
  <a d,>2 ~ |
  <a d,>4 r
}

nhacPhienKhucSolo = \relative c'' {
  R2
  d4 bf8 a |
  g4 g16 (a) bf8 |
  a (g) f g |
  a4 a8 a |
  g4 f8 (e) |
  d e f d |
  e2 ~ |
  e4 e8 (g) |
  a4 a8 d |
  cs d e bf |
  a2 ~ |
  a8 f g bf |
  a4 f |
  e8 g a e |
  d2 ~ |
  d4 \bar "|."
}

nhacPhienKhucSop = \relative c'' {
  d2 ~ |
  d8 a d c |
  bf4 d |
  d bf |
  a d8 d |
  cs2 |
  d ~ |
  d8 bf d g, |
  a2 ~ |
  a4 r |
  R2
  r8 d e d |
  cs r r4 |
  r8 cs d d |
  bf4 d8 (cs) |
  d2 ~ |
  d4
}

nhacPhienKhucAlto = \relative c' {
  f4. g8 |
  f [e] d4 |
  d g |
  f2 |
  e4 f8 f |
  e2 |
  a ~ |
  a8 g e d |
  cs2 ~ |
  cs4 r |
  R2
  r8 f g f |
  e r r4 |
  r8 e f f |
  g4 f8 (g) |
  f2 ~ |
  f4
}

nhacPhienKhucBas = \relative c {
  d2 ~ |
  d4 e8 f |
  g2 |
  d'4. e16 d |
  cs4 d8 d |
  a4. (g8) |
  f2 ~ |
  f8 g g bf |
  a2 ~ |
  a4 r |
  R2
  r8 d, cs d |
  a' r r4 |
  r8 a d d |
  g, bf a4 |
  d,2 ~ |
  d4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Nhạc thương trầm buông hắt hiu.
  Đồi cao u hoài loang máu đào,
  Con Chúa đau thương treo trên thập giá
  hiến thân vì nhân loại tội tình.
  Đồng công cùng con dấu yêu,
  vì thương nhân loại bao khốn cùng,
  xin dẫn đưa bao tâm hồn lạc hướng về bên Mẹ.
  Mẹ ơi.
}

loiDiepKhucAlto = \lyricmode {
  Nhạc thương trầm buông hắt hiu.
  Đồi cao u hoài loang máu đào,
  Con Chúa đau thương treo trên thập giá
  hiến thân vì nhân loại nhân loại tội tình.
  Đồng công cùng con dấu yêu,
  vì thương nhân loại bao khốn cùng,
  xin dẫn đưa bao tâm hồn lạc hướng về bên Mẹ.
  Mẹ ơi.
}

loiDiepKhucBas = \lyricmode {
  Mẹ đứng đó khi hoàng hôn tím mầu.
  Đồi cao u hoài loang máu đào,
  Con Chúa đau thương treo trên thập giá
  hiến thân vì nhân loại tội tình.
  Mẹ đứng đó tâm hồn tê tái sầu.
  vì thương nhân loại bao khốn cùng,
  xin dẫn đưa bao tâm hồn lạc hướng về bên Mẹ.
  Mẹ ơi.
}

loiPhienKhucSoloMot = \lyricmode {
  \set stanza = "1."
  Hỡi ai qua đường ngừng bước đây mà chiêm ngắm:
  Chúa chí tôn cam chịu muôn nỗi khổ đau,
  vì thương toàn nhân loại muôn chốn muôn đời,
  ngày đêm khóc than trông chờ vinh phúc quê trời.
}

loiPhienKhucSoloHai = \lyricmode {
  \set stanza = "2."
  Ngước trông Mẹ lành thành kính dâng lời kêu khấn:
  Giữa thế nhân khổ sầu xin hãy ủi an
  để con hằng trung thành theo Chúa trọn đời,
  ngày mai sáng tươi bên Mẹ ca khúc khải hoàn.
}

loiPhienKhucSoloBa = \lyricmode {
  \set stanza = "3."
  Bước đi trong đời ngàn khó nguy còn vương lối,
  mắt đắm say trông về Thánh Giá thần linh.
  Lòng con bừng lên niềm tin mới cao vời,
  Nguyện xin náu thân bên Mẹ vui sống muôn đời.
}

loiPhienKhucSopMot = \lyricmode {
  Hm __ \repeat unfold 8 { _ }
  \set stanza = "1."
  Chúa chí tôn chịu muôn nỗi khổ đau
  muôn chốn muôn đời
  ngày đêm trông đợi quê trời.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 9 { _ }
  \set stanza = "2."
  Giữa thế gian xin Mẹ hãy ủi an.
  theo Chúa trọn đời,
  ngày mai bên Mẹ khải hoàn.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 9 { _ }
  \set stanza = "3."
  Mắt đắm say trông Thập giá thần linh,
  tin mới cao vời,
  nguyện xin bên Mẹ muôn đời.
}

loiPhienKhucBasMot = \lyricmode {
  Hm __ \repeat unfold 7 { _ }
  \set stanza = "1."
  Chúa chí tôn chịu muôn nỗi khổ đau,
  muôn đời muôn nơi
  ngày đêm trông đợi phúc quê trời.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 8 { _ }
  \set stanza = "2."
  Giữa thế gian xin Mẹ hãy ủi an
  theo Ngài mọi nơi,
  ngày đêm bên Mẹ hát khải hoàn.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 8 { _ }
  \set stanza = "3."
  Mắt đắm say trông Thập tự thần linh,
  tin Mừng đổi mới
  nguyện xin bên Mẹ sống muôn đời.
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff
      <<
      \new Voice = beSolo {
        \TongNhip \nhacPhienKhucSolo
      }
      \new Lyrics \lyricsto beSolo \loiPhienKhucSoloMot
      \new Lyrics \lyricsto beSolo \loiPhienKhucSoloHai
      \new Lyrics \lyricsto beSolo \loiPhienKhucSoloBa
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
        \new NullVoice = nhacThamChieu \nhacPhienKhucSop
        \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucSopHai
        \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucSopBa
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
