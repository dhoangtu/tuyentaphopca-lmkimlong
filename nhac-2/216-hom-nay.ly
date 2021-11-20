% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hôm Nay" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \autoPageBreaksOff
  \partial 4 b4 |
  b4. d8 |
  b b c b |
  a2 ~ |
  a4 r |
  R2
  r4 r8 d |
  d4 d8. b16 |
  g8 e' ~ e4 |
  e8. c16 a8 fs' ~ |
  fs fs e fs |
  g2 ~ |
  g4 r |
  r g,8 a |
  b b g16 (a) g8 |
  fs4. d'8 |
  d4 d8. b16 |
  g8 e' ~ e4 |
  e8. c16 a8 fs' ~ |
  fs fs e fs |
  g2 ~ |
  g4 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  g4 |
  g4. a8 |
  g g e d |
  cs2 ~ |
  cs4 r |
  R2
  r4 r8 a' |
  b4 b8. g16 |
  g8 g ~ g4 |
  c8. a16 a8 a ~ |
  a a c c |
  b2 ~ |
  b4 b |
  b g8 a |
  b b e,16 (g) e8 |
  d4. a'8 |
  b4 b8. g16 |
  d8 g ~ g4 |
  c8. a16 a8 a ~ |
  a a c c |
  b2 ~ |
  b4 r8
}

nhacDiepKhucBas = \relative c' {
  g4 |
  g4. fs8 |
  g g g g |
  a4 a |
  a4. e8 |
  a16 (b) a8 e fs |
  d4. fs8 |
  g4 g8. g16 |
  b8 c ~ c4 |
  a8. a16 c8 d ~ |
  d d d d |
  <d g,>2 ~ |
  <d g,>4 r |
  r g,8 a |
  b b c cs |
  d8. a16 fs8 d |
  g4 g8. g16 |
  b8 c ~ c4 |
  a8. a16 c8 d ~ |
  d <d d,> <d d,> <d d,> |
  <d g,>2 ~ |
  <d g,>4 r8
}

nhacPhienKhucSop = \relative c'' {
  \partial 8 g8 |
  g4 fs8. fs16 |
  a8 b4 g8 |
  d4 r8 a' |
  a4 g8. c16 |
  b8 a4 cs8 |
  d4 r8 d |
  d8. b16 g8 g |
  e' e e8. e16 |
  a,8 c b d |
  fs,4. fs8 |
  a a g4 ~ |
  g \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  g8 |
  g4 fs8. fs16 |
  a8 b4 g8 |
  d4 r8 a' |
  a4 g8. c16 |
  b8 a4 cs8 |
  d4 r8 b8 |
  b8. g16 e8 e |
  c' c c8. g16 |
  fs8 a g g |
  d4. d8 |
  c c b4 ~ |
  b
}

% Lời
loiDiepKhucSop = \lyricmode {
  Hôm nay Đức Ki -- tô đã sinh ra
  Hôm nay khắp trên trần thế
  các thiên thần Chúa tưng bừng ca hát.
   người công chính hớn hở reo mừng.
  Ca vang chúc vinh hiển Chúa
  chúc vinh hiển Chúa trên trời cao sáng.
}

loiDiepKhucAlto = \lyricmode {
  Hôm nay Đức Ki -- tô đã sinh ra
  Hôm nay khắp trên trần thế
  các thiên thần Chúa tưng bừng ca hát.
  Hôm nay người công chính hớn hở reo mừng.
  Ca vang chúc vinh hiển Chúa
  chúc vinh hiển Chúa trên trời cao sáng.
}

loiDiepKhucBas = \lyricmode {
  Hôm nay Vị Ki -- tô đã sinh ra,
  Hôm nay Vị Cứu Tinh vừa xuất hiện.
  Hôm nay ở trên dương thế
  các thiên thần Chúa tưng bừng ca hòa.
  người công chính hớn hở reo mừng,
  reo mừng hòa vang phục vinh hiển Chúa,
  phục vinh hiển Chúa trên nơi cao sáng.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Hôm nay một vì sao đã hiển hiện,
  Hôm nay chồi Giê -- sê đã nở hoa,
  Hôm nay khắp cùng bờ cõi trái đất đã nhìn thấy
  ơn cứu độ của Chúa chúng ta.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Hôm nay thỏa lòng mong ước bao đời,
  Hôm nay lời hứa xưa đã thực thi,
  Hôm nay Ngôi Lời của Chúa giáng thế
  chính là Đức Vua thái bình,
  là Đấng Cứu Tinh.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Hôm nay Vầng Hồng soi chiếu rạng ngời,
  Hôm nay trời đất giao hòa mừng vui,
  Hôm nay muôn người từ khắp thế giới
  đón nhận chứa chan phúc lành của Chúa khấng ban.
}

loiPhienKhucSopBon = \lyricmode {
  \set stanza = "4."
  Hôm nay hòa bình công chính tương phùng,
  Hôm nay thành tín ân tình hội chung,
  Hôm nay Chúa từ trời đã giáng thế
  chiếu dọi ánh quang dẫn đường về chốn phúc vinh.
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
  \key g \major \time 2/4
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
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\pageBreak

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}