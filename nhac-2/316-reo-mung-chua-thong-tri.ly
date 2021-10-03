% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Reo Mừng Chúa Thống Trị" }
  composer = "Nhạc: L. Deiss"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 8 r8 |
  R2.*2
  e4 e8 d ([b d]) |
  e4. (e4) r8 | \break
  R2.*3
  e,8 g a b _([a g] |
  b4.) a8 cs d |
  cs ([a cs] b4.) |
  e4 e8 d ([b d]) |
  e4. ~ e4. ~ |
  e4 r8 e,4 g8 |
  a4. a |
  e2. \bar "||" \break
  
  \partial 4 r4 |
  R2.*3
  e'4 e8 d ^(b d) |
  e4. ~ e |
  g,8 g g a4 a8 |
  e'4 e8 d4 (c8) |
  b4 a8 a (g fs) |
  e2. \break
  
  \partial 4. e8 d e |
  g g a b4 b8 |
  cs cs cs a g a |
  b4.
  e4 e8 |
  d ([b d]) e4. ~ |
  e4.
  r4. |
  R2.*3 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r8 |
  R2.*2
  g4 a8 b ([g fs]) |
  g4. ~ g4 r8 |
  R2.*3
  e8 g a b ([a g] |
  b4.) g8 a b |
  a ([fs e] g4.) |
  e4 g8 a4. |
  g4. ~ g4. ~ |
  g4 r8 e4 g8 |
  a4. a |
  e2. |
  
  r4
  R2.*3
  g4 a8 b _(g fs) |
  g4. ~ g |
  g8 g g a4 a8 |
  e'4 e8 d4 (c8) |
  b4 a8 a (g fs) |
  e2. |
  e8 d e |
  g g a b4 b8 |
  cs cs cs a g a |
  b4. g4 a8 |
  b ([g fs]) g4. ~ |
  g4.
  
}

nhacDiepKhucBas = \relative c' {
  
}

% Lời
loiDiepKhucSop = \lyricmode {
  Al -- le -- lu -- yah
  Al -- le -- lu -- yah
  Al -- le -- lu -- yah Al -- le -- lu -- yah
  Ngợi khen Đấng Cứu độ
  Al -- le -- lu -- yah
  \set stanza = "3-4."
  Giê -- su Ki -- tô tình mến rất cao trọng cho nhân trần
  \set stanza = "5."
  Đây Ngài đem thịt mình trao hiến
  nuôi dưỡng hết những ai được giải thoát
  Al -- le -- lu -- yah
}

loiDiepKhucBas = \lyricmode {
  Ngàn dân cùng reo mừng Thiên Chúa đến thống trị
  Al -- le -- lu -- yah
  \set stanza = "1-2."
  Sự sống đã thắng vinh tử thần
  Thập giá đã đánh bại hỏa ngục.
  Al -- le -- lu -- yah Al -- le -- lu -- yah
  Al -- le -- lu -- yah Ngợi khen Đấng Cứu độ
  Al -- le -- lu -- yah
  \set stanza = "3-4."
  Giê -- su Ki -- tô tình mến rất cao trọng cho nhân trần
  \repeat unfold 15 { _ }
  \set stanza = "5-6."
  Tô môi chúng con thắm hồn Ngài đã đổ máu chiên.
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
  \key g \major \time 3/4
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
