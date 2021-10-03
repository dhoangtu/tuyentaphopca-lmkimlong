% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hãy Tỉnh Thức Luôn" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhuc = \relative c'' {
  c8. g16 b8 a ~ |
  a4 r8 f ~ |
  f f f g |
  d4 e8. e16 |
  c8 e g a ~ |
  a4 f8. f16 |
  e8 g a b |
  c2 \bar "||"
}

nhacDiepKhucSop = \relative c'' {
  c8. c16 c8 c, |
  e g4 g8 |
  a2 |
  a8. f16 fs8 b ~ |
  b b g g |
  e2 |
  e'8. e16 e8 c |
  c f4 e8 |
  d2 |
  d8. d16 b8 a ~ |
  a g d' b |
  c2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  c8. c16 c8 c, |
  c e4 d8 |
  c2 |
  e8. a,16 e'8 ds ~ |
  ds e b b |
  c2 |
  e8. e16 e8 e |
  a a4 c8 |
  b2 |
  a8. g16 d8 c ~ |
  c e f f |
  d2
}

nhacDiepKhucBas = \relative c' {
  c8. c16 c8 c, |
  c c4 c8 |
  f2 |
  c8. d16 c8 b ~ |
  b e g g |
  a2 |
  g8. g16 g8 a |
  f d4 d8 |
  g2 |
  fs8. g16 gs8 a ~ |
  a c, f g |
  c2
}

% Lời
loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Hãy tỉnh thức luôn và cầu nguyện đêm ngày.
  Hãy sẵn sàng như tôi tớ đợi chủ về là mở cửa ngay.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Thắp đèn sáng lên và dự phòng thêm dầu.
  Phút phút chờ Tình Quân đến hãy sẵn sàng dù trong đêm thâu.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Chớ tự trấn an: Đời còn dài, lo gì.
  Kiếp sống phù du, ân oán thử hỏi rồi hồn mang theo chi?
}

loiPhienKhucBon = \lyricmode {
  \set stanza = "4."
  Nấm mộ phế hoang cỏ phủ chưa xanh mầu đã biến lần trong quên lãng.
  Ảo ảnh cuộc đời con chi đâu.
}

loiDiepKhucSop = \lyricmode {
  Chúa sẽ đến thình lình như tia chớp,
  như kẻ trộm nhắm lúc ta không ngờ.
  Chúa sẽ đến gọi vào cõi thiên thu.
  Thức giấc đi thôi đừng mãi ngủ mê.
}

loiDiepKhucBas = \lyricmode {
  Chúa sẽ đến thình lình như tia chớp,
  như kẻ trộm nhắm lúc ta không nhớ.
  Chúa sẽ gọi vào cõi thiên thu.
  Thức giấc đi thôi chớ hoài ngủ mê.
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
    \override Lyrics.LyricSpace.minimum-distance = #2.0
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
