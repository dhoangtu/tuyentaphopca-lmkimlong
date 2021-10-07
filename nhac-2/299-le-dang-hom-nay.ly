% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lễ Dâng Hôm Nay" }
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
nhacPhienKhuc = \relative c' {
  \key ef \major \time 2/4
  \partial 8 c8 |
  g'4. af16 g |
  g8 f ef f |
  g4. d16 g |
  f8 g d c |
  c2 ~ |
  c8 bf16 ef d8 f |
  g g16 af f8 f16 (g) |
  c4 r8 c |
  g4 \tuplet 3/2 { g8 af d, } |
  d4 \tuplet 3/2 { f8 g d } |
  c2 ~ |
  c4 r \bar "||"
}

nhacDiepKhucSop = \relative c' {
  \key c \major
  \time 3/4
  e4. f8 e d |
  
  \time 2/4
  d4. e16 (d) |
  c8 c d e |
  
  \time 3/4
  f4 d8 d d (e) |
  g2 e8 e |
  a4. c8 b (a) |
  g4. g8 f (e) |
  
  \time 2/4
  d4. d8 |
  f g e d |
  
  \time 3/4
  c2 r8 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \key c \major
  \time 3/4
  c4. d8 c c |
  
  \time 2/4
  b4. b8 |
  c c b c |
  
  \time 3/4
  d4 a8 a b (c) |
  d2 c8 c |
  c4. a'8 g (f) |
  e4. e8 d (c) |
  
  \time 2/4
  a4. c8 |
  b b b b |
  
  \time 3/4
  c2 r8
}

nhacDiepKhucBas = \relative c' {
  \key c \major
  \time 3/4
  R2.
  
  \time 2/4
  g4 g8 g |
  a8. g16 f8 e |
  
  \time 3/4
  d4 f8. e16 d8 c |
  b2 c8 c |
  f4 d ^> e8 (f) |
  g4 c, ^> d8 (e) |
  
  \time 2/4
  f d f a |
  g4. <f g,>8 |
  
  \time 3/4
  <e c>2 r8
}

% Lời
loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Lạy Chúa, Chúa công minh khi Ngài phân xét
  vì chúng con đã phản nghịch Ngài.
  Làm bao điều gian ác khi dám lìa bỏ Chúa,
  chúng con sai lỗi nặng nề, nhơ uế mọi bề.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Lạy Chúa, lễ thiêu sinh nay còn đâu nữa,
  con chốn nao tiến của đầu mùa,
  người lãnh đạo không có, ngôn sứ tìm chẳng thấy,
  đó đây hương khói lạnh lùng, dân chúng cơ cùng.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Lạy Chúa, chúng con nay khiêm hạ dâng kính,
  lòng đớn đau hối hận thực tình,
  cầu mong Ngài thương đoái theo với lượng từ ái,
  Chúa đâu ưa lễ thịt cừu, hay máu chiên bò.
}

loiPhienKhucBon = \lyricmode {
  \set stanza = #"4."
  Lạy Chúa, chúng con nay đoan nguyền theo Chúa
  lòng trí luôn hướng về Ngài,
  hằng trông tìm Nhan Thánh,
  xin Chúa đừng ẩn tránh,
  chiếu theo ân nghĩa ngàn trùng, thương chúng con cùng.
}

loiDiepKhucSop = \lyricmode {
  Nhưng ước chi hôm nay lễ vật đoàn con dâng hiến
  làm đẹp lòng Chúa
  Vì lạy Chúa hết những ai tin cậy ngài
  nào phải thất vọng ê chề.
}

loiDiepKhucBas = \lyricmode {
  Nay mong chi lễ chúng con dâng lên sẽ làm đẹp lòng Ngài.
  Vì lạy Chúa này những ai cậy tin Chúa
  nào phải thất vọng
  <<
    { ê chề. }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    thảm thê.
	  }
  >>
      
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
    \new Lyrics \lyricsto beSop \loiPhienKhucBon
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

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
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
