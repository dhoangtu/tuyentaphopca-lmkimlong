% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mầu Nhiệm Của Tình Thương" }
  poet = "Thơ: Lm. Xuân Ly Băng"
  composer = "Nhạc: Lm. Kim Long"
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
    r2 bf4 \bar "||"
    \key bf \major
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
    a8. fs16 fs8 g8
  }
  \alternative {
    {
      a2 ~ |
      a4 r |
      r g ^> (g8) g a b
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
      g4. g8 ^\pp a g |
      fs4 r2 |
      r2 g4 ^\f |
      a bf4. c8 |
      c2. |
      bf4. bf8 c d |
      g,2. \bar "||"
    }
  }
  
  \time 2/4
  \key g \major
  \repeat volta 2 {
    \once \override Score.RehearsalMark.font-size = #0.1
    \tweak extra-offset #'(8 . 0)
    \mark \markup { \musicglyph #"scripts.segno" }
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
  g2 ~
  g4 e ~
  e a ~
  a b8
  a |
  g2 ~ |
  g8 g fs e |
  ds4 d!8 (c) |
  b b4 d8 |
  g2 ~ |
  g4 r |
  R2*2
  
  \time 3/4
  r2 g4 |
  \key bf \major
  g4. a8 g4 |
  fs2 d4 |
  ef4. ef8 d4 |
  c2 c4 |
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
  r g ^> ~ |
  g8 g fs e |
  d2 ~ |
  d4 r |
  R2
  
  \key bf \major
  \time 3/4
  ef'4. c8 d g, |
  g4. g8 ^\pp ef ef |
  d4 r2 |
  r2 g4 ^\f |
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
  r r8 c |
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
  b2 |
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
  <<
    {
      \voiceOne
      d'8 d4 c8 |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      fs,4 e8 fs
    }
  >>
  \oneVoice
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
  
  \time 3/4
  <g g,>2. ~ |
  \key bf \major
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
  fs a4 b8 |
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
  bf4. bf8 ^\pp g ef |
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
  g2 |
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
  c8. ^> a16 ^> b8 ^> c ^> |
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
  Rừng thời gian lá rụng, cây tàn héo cô liêu
  Mênh mông đến lạnh hồn,
  Tháng năm buồn đơn lẻ,
  Khóc dội rừng Si -- on,
  Mong vì Sao Cứu Thế.
  Gió hỏi gió cùng bay
  Mây thủ thỉ cùng mây
  Rừng thời gian lá
  mây
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) _ _ _
  \revert Lyrics.LyricText.font-shape
  Bỗng một đêm lạnh lùng, một đêm lạnh lùng
  Chồi Giê -- sê đâm bông,
  Một vì sao xuất hiện.
  Trời Bê -- lem chớp sáng, khắp trời Bê -- lem chớp sáng,
  Đạo thiên sứ hoan ca ca vang,
  Chúa Cứu thế sinh ra.
  Mừng Thánh Nhi xuất hiện
  Phượng thờ Vua vinh hiển
  Nhạc No -- el réo rắt, khúc nhạc No -- el réo rắt
  Hòa trong gió đêm sương
  Mầu nhiệm của tình thương.
  thương.
}

loiDiepKhucAlto = \lyricmode {
  Hm __ \repeat unfold 5 { _ }
  thời gian lá rụng, cây tàn tạ cô liêu
  Mênh mông đến lạnh hồn,
  Tháng năm buồn đơn lẻ,
  Khóc dội rừng Si -- on,
  Mong vì Sao Cứu Thế.
  Gió hỏi gió cùng bay
  Mây thủ thỉ cùng mây
  Rừng thời gian lá
  mây
  Bỗng một đêm lạnh lùng, một đêm lạnh lùng
  Chồi Giê -- sê đâm bông,
  Một vì sao xuất hiện.
  Trời Bê -- lem chớp sáng, khắp trời Bê -- lem chớp sáng,
  Đạo thiên sứ hoan ca
  cô đơn nơi đồng vắng
  Chúa Cứu thế sinh ra.
  Mừng Thánh Nhi xuất hiện
  xuất hiện
  Phượng thờ Vua vinh hiển
  Nhạc No -- el réo rắt, khúc nhạc No -- el réo rắt
  Hòa trong gió đêm sương
  ngươi ơi ngươi có hiểu
  Mầu nhiệm của tình thương.
  thương,
  mầu nhiệm của tình thương.
}

loiDiepKhucBas = \lyricmode {
  Hm __ \repeat unfold 9 { _ }
  Suối buồn ôm thung lũng, rên siết nhạc căm hờn
  Mênh mông đến lạnh hồn,
  Năm tháng sầu lẻ loi,
  Khóc dội rừng Si -- on,
  Mong vị Cứu Thế.
  Bao giờ Sao xuất hiện,
  Khi nào Người mới đến?
  Khi nào Người mới đến?
  Vòng thời gian viên mãn giữa đêm lạnh lùng
  Đây một vì sao đã hiển hiện
  Trời khắp Bê -- lem chớp sáng,
  ngời sáng Bê -- lem các Thiên thần hòa ca
  cô liêu nơi đồng vắng
  Ngài đã sinh ra.
  Gió bảo gió cùng đi
  Mây nhắn mây lại quỳ Vua vinh hiển
  khúc nhạc No -- el réo rắt,
  nhạc khúc No -- el réo rắt,
  réo rắt No -- el giữa đêm trời đầy sương.
  Người ơi ngươi có hiểu
  Mầu nhiệm tình thương.
  thương,
  mầu nhiệm của tình thương.
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
  %page-count = #4
  systems-per-page = 4
}

TongNhip = {
  \key g \major \time 2/4
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
