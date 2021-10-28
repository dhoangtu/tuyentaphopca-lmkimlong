% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khiêm Nhường Phục Vụ" }
  composer = "Lm. Kim Long"
  arranger = " "
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  R2*2
  c8 c c a |
  bf4. bf8 |
  c d4 bf8 |
  g4 g8 g |
  c a16 (g) d8 f |
  g2 ~ |
  g4 r8 c, |
  c f r d |
  a' a g f |
  bf4. g8 |
  g c r bf |
  d g, bf bf |
  a2 |
  r8 f g a |
  d, d16 d g8 f |
  c4. c'8 |
  c (a16 g) f8 f |
  g2 |
  r8 c g16 (bf) c8 |
  c4. a8 |
  a a c a |
  g2 ~ |
  g8 e16 (f) g8 g |
  c,2 |
  r8 g' g a16 (g) |
  f4. g8 |
  a4 f8 f |
  bf8. g16 g8 c |
  f,2 ~ |
  f4 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  a8 a a f |
  g4. e8 |
  f4. e8 |
  d4. d8 |
  f4 f |
  e2 ~ |
  e4 r |
  r8 d bf f' |
  e4 r8 c |
  c f r d |
  c c c c |
  f4. g8 |
  g c r g |
  f f e e |
  f2 |
  r8 f g a |
  d, d16 d g8 f |
  c4. c'8 |
  c (a16 g) f8 f |
  g2 |
  r8 c g16 (bf) a8 |
  g4. g8 |
  f f a f |
  d2 ~ |
  d8 d c b! |
  c2 |
  r8 c c f16 (e) |
  d4. d8 |
  f4 a,8 c |
  f8. f16 e8 e |
  c2 ~ |
  c4 r8
}

nhacDiepKhucBas = \relative c' {
  R2
  bf8 bf bf g |
  a4. f8 |
  g4. g8 |
  a bf bf,4 |
  c2 ~ |
  c4 f8 (a) |
  g bf g bf |
  c4 r8 c, |
  c f r g |
  f f e ef |
  d4. g8 |
  g c r g |
  d d c c |
  f2 ~ |
  f4 r |
  r r8 d |
  a' (bf) a g |
  f4 r8 a |
  bf (c) g c |
  f,4 r8 f |
  e c d (e) |
  f4 r8 f |
  bf bf g bf |
  c4 r8 g |
  a (bf) a (g) |
  f e e c |
  d8. bf'16 a8 g |
  f4 f8 ef |
  d <bf' d,>
  <<
    {
      \voiceOne c8 (bf)
    }
    \new Voice = "splitpart" {
	    \voiceTwo c,4
    }
  >>
  <a' f f,>2 ~ |
  <a f f,>4 r8
}

nhacPhienKhuc = \relative c'' {
  \partial 8 a |
  a bf
  \once \phrasingSlurDashed
  a \(g\) |
  g4. bf8 |
  d c bf bf16 (c) |
  g8. g16 g8 g16 (c) |
  f,2 ~ |
  f8 f e16 (f) a8 |
  g8. d16 d8 g |
  c,2 ~ |
  c8 a' bf16 (a) f8 |
  g8. bf16 bf8 bf |
  d4 g,8 (bf) |
  c a16 (g) e8 g |
  f2 ~ |
  f4 r \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chúa ghé mắt dủ thương phận tôi tớ mọn hèn
  vì tình mến thương Ngài thẳm sâu.
  Ngài gọi con và hướng dẫn con từng bước,
  Ngài chọn con và xức dầu thánh hiến con.
  Dù con chỉ là người đầy tớ vô dụng
  dẫu có làm được chi,
  không phải do con nhưng do ơn Chúa trong con,
  để cảm mến Ngài con xin suốt đời khiêm tốn
  phục vụ Chúa và Hội Thánh Ngài.
}

loiDiepKhucAlto = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Chúa ghé mắt dủ thương, dủ thương,
  dủ thương phận tôi mọn hèn
  vô cùng thẳm sâu.
}

loiDiepKhucBas = \lyricmode {
  Chúa ghé mắt dủ thương, dủ thương phận tôi tớ mọn hèn
  thẳm sâu, vô cùng thẳm sâu.
  Ngài gọi con đã hướng dẫn con từng bước,
  Ngài chọn con đã đổ dầu thánh hiến con.
  Dù con đây vô dụng dầu có làm nổi gì
  không phải là do con một do ơn Ngài trong con,
  để cám mến Ngài con xin trọn đời
  sẽ luôn khiêm hạ phục vụ Ngài, Hội Thánh Ngài.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Noi gương Đức Ki - tô:
  Ngài đến không phải để được người hầu kẻ hạ,
  nhưng để hiến thân phục vụ muôn người.
  Trong bữa Tiệc Ly Ngài từng quỳ xuống
  rửa chân cho từng môn đệ.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Noi gương Đức Ma -- ri -- a:
  Người đã khiêm nhường chỉ nhận là phận nữ tỳ,
  xin để Chúa mau thực hiện những gì thiên sứ truyền tin
  một niềm thành kính hiệp công cứu độ muôn người.
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
  %page-count = #2
  %systems-per-page = 5
  ragged-last-bottom = ##t
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
      \new NullVoice = beAlto \nhacDiepKhucAlto
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
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override LyricHyphen.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
