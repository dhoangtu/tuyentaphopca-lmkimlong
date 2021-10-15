% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bài Hát Mới" }
  poet = "Thơ: Lm. Xuân Ly Băng"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4 d
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  |
  g4. fs8 g4 |
  a2 e4 |
  e e8 (fs) a4 |
  d2 \slashedGrace { b16 ( } c4) |
  b a g |
  e'2 d4 |
  c a4. fs8 |
  g2 r4 \bar "|." \break
  
  \time 2/4
  R2*2
  d'8. cs16 d8 b |
  a4. a8 |
  g e'4 ^> d8 |
  d4 r8 d, |
  ef4. d16 g |
  a4. a16 c |
  d4 d16 (ef) d (c) |
  a4. c8 |
  d2 ~ |
  d4
  \once \override Score.RehearsalMark.extra-offset = #'(3 . 0)
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  d, \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  \partial 8 r8 |
  R2*4
  b'!8. d16 b8 a |
  e!4. d8 |
  g fs4 g8 |
  a2 |
  R2*4 \break
  
  \key g \major
  b8. g16 c8 d |
  a4. \slashedGrace { fs16 ( } e8) |
  a d,4 g16 (a) |
  
  \time 3/4
  b2
  \once \override Score.RehearsalMark.extra-offset = #'(2 . 0)
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  d,4
  \bar "||" \break
  
  \time 2/4
  R2
  b'8 b d b16 (a) |
  g4. fs8 |
  g g g16 (a) e8 |
  d4. g8 |
  a g a16 (g) e8 |
  e4. e8 |
  d4 fs8 g |
  a4. a8 |
  a c4 cs8 |
  d2 ~ |
  d4 d,
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  d4 |
  g4. fs8 g4 |
  a2 e8 (d) |
  cs4 cs cs |
  a2 g4 |
  g fs f! |
  e (g) g |
  g fs4. d8 |
  d2 r4 |
  
  \time 2/4
  g8. fs16 g8 e |
  d4. e8 |
  a4 a8 g |
  fs4. fs8 |
  g c4 ^> b8 |
  b4 a ~ |
  a g ~ |
  g g8 ^> g ^> |
  fs4 g8 g |
  g4. g8 |
  fs2 ~ |
  fs4 d |
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  r8
  R2*4
  g8. fs16 g8 d |
  cs4. c!8 |
  b! a4 b8 |
  d2 |
  R2*4
  
  \key g \major
  g8. e16 d8 d |
  cs4. cs8 |
  d16 (c) b4 d8 |
  
  \time 3/4
  d2 d4 |
  
  \time 2/4
  R2*2
  d8 d e d16 (c) |
  b4. b8 |
  a4 b |
  d8 b d cs |
  cs4. cs8 |
  b4 d |
  e4. ef8 |
  d g4 g8 |
  fs2 ~ |
  fs4 d
}

nhacDiepKhucBas = \relative c {
  d4 |
  g4. fs8 g4 |
  a2
  <<
    {
      b4 |
      a a g |
      fs2 fs4 |
      g a b |
      c2 g4 |
    }
    {
      gs4 |
      a a, a |
      d2 d4 |
      g, d' d |
      c2 d4
    }
  >>
  
  <<
    \new Voice = "splitpart" {
      \voiceTwo
      \stemUp
      c' c4. c8 |
    }
    {
      \voiceOne
      \stemDown
      a,8 a d4. d8
    }
  >>
  \oneVoice
  <b' g g,>2 r4 |
  
  \time 2/4
  R2
  b8. as16 b8 g |
  fs4. g8 |
  d d'4 c8 |
  b8. a16 c8 d |
  g,4 fs ~ |
  fs g |
  ef ef8 ^> ef ^> |
  d4 bf8 bf |
  c4. ef8 |
  d2 ~ |
  d4 d |
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  g8 |
  ef d4 fs8 |
  g4. g8 |
  bf bf4
  \afterGrace c8 ({
    \override Flag.stroke-style = #"grace"
    d16)}
  \revert Flag.stroke-style
  d2 ~ |
  d8 d g, g |
  a4 r |
  R2
  r4 r8 d, |
  g ef4 d8 |
  g4. bf8 |
  a g4 c8 |
  d2 ~ |
  
  \key g \major
  d4 fs,8 (g) |
  a8. e16 a8 (g) |
  fs8. g16 e8 d |
  
  \time 3/4
  g2 d4 |
  
  \time 2/4
  b'8 b d b16 (a) |
  g4. d8 |
  b'8 b r d, |
  e8 e r g |
  fs8. fs16 g8 e |
  d4 fs8 g |
  a8. a16 g8 (fs) |
  g4 d8 (e) |
  c8. c'16 a8 g |
  fs (e) a a, |
  d2 ~ |
  d4 d
}

% Lời
loiDiepKhucSop = \lyricmode {
  \set stanza = "ĐK:"
  Mẹ ơi! Mùa xuân đến nhộn nhịp cả phố phường.
  Thắp lên hai hàng nến con xin Mẹ tình thương.
  
  Xuân về trên đại lộ hòa nở suốt công viên.
  Ngoài kia trời giông tố, trời giông tố
  con xin Mẹ bình yên.
  Mẹ
  Ôi Đức Tin diễm kiều về ương lòng năm tháng.
  Dâng Mẹ khối băng tâm sầu chín rồi xin hái.
  Mẹ
  Chim xuân hót trên cành
  kìa chim xuân hót trên cành
  và đây mùa hoa đào nở
  bao giờ trời lên xanh nhạc buồn thôi thương nhớ.
  Mẹ
}

loiDiepKhucAlto = \lyricmode {
  Mẹ ơi! Mùa xuân đến nhộn nhịp cả phố phường.
  Thắp lên hai hàng nến con xin Mẹ tình thương.
  \set stanza = "1."
  Xuân về trên đại lộ mùa xuân trên đại lộ
  hòa nở suốt công viên.
  Hm __ _ con xin Mẹ, con xin Mẹ vĩnh yên.
  Mẹ
  Ôi Đức Tin diễm kiều về ươm lòng năm tháng.
  Dâng Mẹ khối băng tâm sầu chín rồi xin hái.
  Mẹ
  Chim xuân hót trên cành, trên cành
  và đây mùa hoa đào nở
  bao giờ trời xanh nhạc buồn thôi thương nhớ.
  Mẹ
}

loiDiepKhucBas = \lyricmode {
  Mẹ ơi! Mùa xuân đến nhộn nhịp cả mười phương.
  Thắp lên hai hàng đèn con xin Mẹ ghé tình thương.
  Xuân về trên đại lộ
  hoa nở suốt công viên nở suốt công viên.
  Hm __ _ _ con xin Mẹ, con xin Mẹ vĩnh yên.
  Mẹ
  \set stanza = "2."
  Mây bỏ trời cô liêu thuyền đi trơ bến vắng
  Đức Tin diễm kiều.
  Dòng thơ lệ đầu năm héo hon tình Do Thái.
  Băng tâm sầu chín rồi, chín rồi xin hái.
  Mẹ
  \set stanza = "3."
  Chim xuân hót trên cành kìa chim xuân,
  kìa chim xuân trên cành mùa hoa đào nở
  mùa hoa nở đây hoa nở thắm xanh,
  thắm xanh nhạc buồn hết sầu nhớ.
  Mẹ
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
  %page-count = #1
}

TongNhip = {
  \key g \major \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

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
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
