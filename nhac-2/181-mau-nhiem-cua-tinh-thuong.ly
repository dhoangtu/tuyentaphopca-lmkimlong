% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mầu Nhiệm Của Tình Thương" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
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
nhacDiepKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  R2*4
  r4 g ~ |
  g8 g a b
  \repeat volta 2 {
    fs4. e8 |
    d \once \stemDown d'4 c8 |
    b2 ~ |
    b4 r |
    R2*2 \bar "||"
    
    \time 3/4
    \key bf \major
    r4 r bf |
    bf4. c8 a4 |
    a2 bf4 |
    g4. fs8 g4 |
    ef2 g4 |
    d4. d8 g4 |
    a2. |
    a4. g8 c d |
    d2. \bar "||"
    
    \time 2/4
    \key g \major
    e8. c16 e8 c |
    d2 ~ |
    d4 r |
    R2
    a8. fs16 fs8 \slashedGrace { fs16 ( } g8)
  }
  \alternative {
    {
      a2 ~ |
      a4 r |
      r g ^> (g8) g [a b]
    }
    {
      a2 ~ |
      a4 r |
      r8
      \notBePhu -2 {
        g16 g c8 d
      }
      \bar "||"
      \key bf \major
      \time 3/4
      ef4. c8 d g, |
      \set Score.repeatCommands = #'((volta #f))
      g4. g8 a ^\pp g |
      fs4 r2 |
      r2 g4 |
      a bf4. c8 |
      c2. |
      bf4. bf8 c d |
      g,2. \bar "||"
    }
  }
  
  \time 2/4
  \key g \major
  \repeat volta 2 {
    b8. c16 d8 e |
    e4. e8 |
    a,8. b16 c8 d |
    d4. g,8 |
    b c4 b8 |
    a2 ~ |
    a4 r8 d |
    d4 r8 d ~ |
    d d d c |
    b2 ~ |
    b4 r |
    r r8 b d c4 b8 |
    a2 ~ |
    a4 r |
    r4 r8 d, |
    d fs4 g8 |
    a2 |
    R2
    b8. c16 d8 e |
    e4. e8 |
    a,8. b16 c8 d |
    d4. g,8 |
    b c4 b8 |
    a2 ~ |
    a ~ |
    a4 r8 e |
    fs4 \slashedGrace { fs16 ( } a8) fs |
  }
  \alternative {
    {
      g2 ~
    }
    {
      g2 ~ |
      g ~ |
      g ~ |
      g4 r
    }
  }
  \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \stemDown
  g2 ~
  \tweak extra-offset #'(0 . -1.7)
  ^\markup { \rest #"2" } |
  g4 e ~
  \tweak extra-offset #'(0 . -1.7)
  ^\markup { \rest #"2" } |
  e a ~
  \tweak extra-offset #'(0 . -1.7)
  ^\markup { \rest #"2" } |
  a b8
  \tweak extra-offset #'(0 . -1.7)
  ^\markup { \rest #"2" }
  a |
  g2 ~ |
  g8 g fs e |
  %\stemNeutral
  ds4 d!8 c |
  b b4 d8 |
  g2 ~ |
  g4 r |
  R2*2
  
  \key bf \major
  \time 3/4
  r4 r g |
  g4. a8 g4 |
  fs2 g4 |
  ef4. ef8 d4 |
  d2 c4 |
  bf4. bf8 bf4 |
  d2. |
  c4. c8 g' g |
  fs2. |
  
  \key g \major
  \time 2/4
  c'8. a16 c8 a |
  b2 ~ |
  b4 r |
  R2
  fs8. d16 c8 b |
  d2 ~ |
  d4 r |
  r g ~ |
  g8 \tweak font-size 0 g [\tweak font-size 0 a \tweak font-size 0 b] |
  d,2 ~ |
  d4 r |
  R2
  
  \key bf \major
  \time 3/4
  ef'4. c8 d g, |
  g4. g8 ef ef |
  d4 r2 |
  r2 g4 |
  fs g4. a8 |
  a2. |
  g4. g8 g fs |
  g2. |
  
  \key g \major
  \time 2/4
  g8. a16 b8 b |
  c4. g8 |
  fs8. g16 a8 a |
  b4. d,8 |
  g a4 g8 |
  fs4. fs8 |
  fs fs e (fs) |
  g4 r8 b ~ |
  b b b a |
  g2 ~ |
  g4 r |
  r r8 g |
  b a4 g8 |
  fs4. e8 |
  d4 r |
  r r8 b |
  b d4 e8 |
  c2 |
  R2
  g'8. a16 b8 b |
  c4. g8 |
  fs8. g16 a8 a |
  b4. d,8 |
  g a4 g8 |
  fs4. fs8 |
  fs fs g (fs) |
  e4 r8 cs |
  d4 c8 c |
  b2 ~ |
  b4 b8 b |
  e4. c8 |
  d2 ~ |
  d4 r
}

nhacDiepKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r4
  <<
    {
      b4 ^> ~ |
      b8 g ^> a ^> b ^> |
      c4. cs8 |
    }
    {
      g4 ~ |
      g8 e fs g |
      a4. g8 |
    }
  >>
  d'8 d4 c8 |
  <b g>2 ~ |
  <b g>4 r |
  R2*2
  r4
  <<
    {
      b4 ^> ~ |
      b8 g ^> a ^> b ^> |
      c4. cs8 ^> |
      d ^> fs,4 a8
    }
    {
      g4 ~ |
      g8 e fs g |
      a4. g8 |
      fs d4 d8
    }
  >>
  
  \key bf \major
  \time 3/4
  <g g,>2. ~ |
  <g g,>4 r c, |
  d4. d8 g,4 |
  c2 b!4 |
  c4. d8 ef4 |
  g2 g4 |
  fs4. fs8 g4 |
  ef4 ef8 ef ef4 |
  d2. |
  
  \key g \major
  \time 2/4
  R2
  r4 r8 g |
  fs a4 ^> b8 |
  d,2 ~ |
  d4 r |
  r4 r8 fs |
  d g4 a8 |
  b2 ~ |
  b4 r |
  r r8 d, |
  c b4 d8 |
  g2 ~ |
  
  \key bf \major
  \time 3/4
  g4 r2 |
  r2 c,4 ^\f |
  d g4. a8 |
  bf4. bf8 g ef |
  d2. ~ |
  d4 r8 d ^> c ^> d ^> |
  ef4 ef4. ^> d8 |
  g2. |
  
  \key g \major
  \time 2/4
  r4 r8 g |
  c ^> a ^> b ^> c ^> |
  d4. fs,8 |
  g8. g16 g8 g |
  e c4 cs8 |
  d2 ~ |
  d8 c' c c |
  b (c) d4 |
  r8 d, e fs |
  g2 \breathe |
  e'8. c16 e8 c |
  d2 ~ |
  d |
  R2
  fs,8. a16 fs8 e |
  d2 ~ |
  d8 d c (b) |
  a4. a'8 |
  d,8. d16 e8 fs |
  g4 r8 g |
  c8. ^> a16 b8 ^> c ^> |
  d4. fs,8 |
  g8. g16 g8 g |
  e c4 cs8 |
  d2 ~ |
  d8 d' d d |
  c (b) a4 ~ |
  a8 d, d d |
  g2 |
  g4 g8 g |
  <c c,>4. <a c,>8 |
  <b g g,>2 ~ |
  <b g g,>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Rừng thời gian lá rụng cây tàn héo cô liêu
  Mênh mông đến lạnh hồn tháng năm sầu đơn lẻ,
  khóc dội rừng Si -- on
  Mong vì sao Cứu Thế.
  Gió hỏi gió cùng bay
  Mây thủ thỉ cùng mây
  Rừng thời gian lá
  mây
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) _ _ _
  \revert Lyrics.LyricText.font-shape
  Bỗng một đêm lạnh lùng, một đêm lạnh lùng
  chồi Yes -- sé đâm bông,
  một vì sao xuất hiện.
  Trời Bê -- lem chớp sáng khắp trời Bê -- lem chớp sáng
  đạo Thiên sứ hoan ca ca vang,
  Chúa Cứu thế sinh ra
  Mừng Thánh nhi xuất hiện
  Phượng thờ Vua vinh hiển
  Nhạc No -- el réo rắt khúc nhạc No -- el réo rắt
  hòa trong gió đêm sương
  mầu nhiệm của tình thương.
  thương.
}

loiDiepKhucAlto = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  \repeat unfold 86 { _ }
  cô liêu nơi đồng vắng
  \repeat unfold 10 { _ }
  xuất hiện
  \repeat unfold 21 { _ }
  ngươi ơi ngươi có hiểu
  \repeat unfold 5 { _ }
  Mầu nhiệm của tình thương.
}

loiDiepKhucBas = \lyricmode {
  Hm __ \repeat unfold 9 { _ }
  Suối buồn ôm thung lũng rên siết nhạc căm hờn
  Mênh mông đến lạnh hồn
  năm tháng sầu lẻ loi
  khóc dội rừng Si -- on mong vị Cứu Thế.
  Bao giờ sao xuất hiện?
  Khi nào Người mới đến?
  Khi nào Người mới đến?
  Vòng thời gian viên mãn giữa đêm lạnh lùng
  Đây một vì sao đã hiển hiện
  Trời khắp Bê -- lem chớp sáng,
  ngời sáng Bê -- lem các Thiên Thần hòa ca
  cô liêu nơi đồng vắng
  Ngài đã sinh ra.
  Gió bảo gió cùng đi
  Mây nhắn mây lại quỳ Vua vinh hiển
  khúc nhạc No -- el réo rắt,
  nhạc khúc No -- el réo rắt,
  réo rắt No -- el giữa đêm trời đầy sương.
  Người ơi ngươi có hiểu
  Mầu nhiệm tình thương.
  thương.
  Mầu nhiệm của tình thương.
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
}

TongNhip = {
  \key g \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
