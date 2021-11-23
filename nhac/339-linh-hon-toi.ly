% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Linh Hồn Tôi" }
  poet = "Lc. 1, 46 - 46"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 g8 f |
  g4. f8 |
  d8. d16 bf'8 c |
  d4 g,8 g |
  c4. c8 |
  d8. d16 bf (a) g8 |
  a2 ~ |
  a4 g8 f!? |
  g4. f8 |
  d8. d16 g8 a |
  bf4 g8 g |
  c4. c8 |
  d8. d,16
  <<
    {
      \voiceOne
      a'8 bf16 (a) |
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      a16 (g) fs8 |
    }
  >>
  \oneVoice
  g2 ~ |
  g4
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r4 |
  R2
  r4 d8 c |
  d4. f8 |
  ef8. d16 g8 a |
  bf4 g8 g |
  ef4. (g8) |
  fs4 r |
  R2
  r4 d8 c |
  d4. f8 |
  ef8. d16 ef8 g |
  fs8. g16 ef8 c |
  bf2 ~ |
  bf4
}

nhacDiepKhucBas = \relative c' {
  r4 |
  r bf8 a |
  bf4. a8 |
  g8. f16 ef8 (d) |
  c4. f8 |
  bf,8. bf16 ef8 ef |
  c2 |
  d4 r |
  r bf'8 a |
  bf4. a8 |
  g8. f16 ef8 (d) |
  c4. bf8 |
  a8. bf16 c8 d |
  g,2 ~ |
  g4
}

nhacPhienKhucSop = \relative c'' {
  \partial 4 d8 ef16 c |
  d8 bf g bf |
  c a16 (g) fs8 d |
  d4. g8 |
  f f bf4 ~ |
  bf r8 g |
  g g16 (bf) c c d8 |
  fs,4 fs8. a16 |
  a8 c d bf16 (a) |
  g2 ~ |
  g4 \bar "|."
}

nhacPhienKhucBas = \relative c'' {
  bf8 c16 a |
  bf8 g d g |
  ef [c] d [d] |
  d4. g8 |
  f [ef] d4 ~ |
  d r8 g |
  g g16 (bf) a a g8 |
  d4 d8. cs16 |
  d8 a' fs [fs] |
  g2 ~ |
  g4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Linh hồn tôi dâng lời ngợi khen Thiên Chúa,
  lòng mừng vui trong Chúa, Đấng Cứu Độ tôi.
  Ôi từ đây muôn đời gọi tôi diễm phúc,
  vì Ngài thương trông đến phận tôi tớ này.
}

loiDiepKhucAlto = \lyricmode {
  Linh hồn tôi dâng lời ngợi khen Thiên Chúa
  Đấng Cứu Độ tôi.
  Ôi từ đây tán dương vì Ngài trông đến phận tôi tớ này.
}

loiDiepKhucBas = \lyricmode {
  Linh hồn tôi dâng lời xin ca
  ngợi thiên tòa vì Đấng Cứu Độ tôi.
  Ôi từ đây tán dương tôi
  khôn lường trông nhìn phận tôi tớ này.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Ôi Đấng toàn năng đã làm cho tôi muôn điều kỳ diệu,
  danh Ngài là Thánh
  Tình Ngài trải qua muôn thế hệ
  dành cho ai luôn kính sợ Ngài.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Tay Chúa biểu dương sức mạnh uy phong tiêu diệt bọn người
  kiêu ngạo tự mãn
  Triệt hạ kẻ cao sang thế lực
  và nâng cao ai biết khiêm nhường.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Bao lũ giầu sang đuổi về tay không bao người nghèo hèn
  ban đầy hồng phúc
  Lời nguyền thuở xưa xin nhớ lại
  mà ra tay bênh đỡ dân Ngài.
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

TongNhip = {
  \key bf \major \time 2/4
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
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucBas }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucMot
      \new Lyrics \lyricsto beSop \loiPhienKhucHai
      \new Lyrics \lyricsto beSop \loiPhienKhucBa
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
