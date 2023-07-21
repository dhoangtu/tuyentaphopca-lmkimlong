% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xuân Chầu Mẹ" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  R2
  \repeat volta 2 {
    R2
    c8. c16 a8 g |
    g2 ~ |
    g8 b gs b |
    d4. d8 |
    cs cs d16 (e d8) |
    b2 ~ |
    b4 a8 (c) |
    b g4 a8 |
    fs4 b8 c |
    a4. fs8
  }
  \alternative {
    {
      g2 ~ |
      g4 r
    }
    {
      g2 ~
    }
  }
  g4 r8 d' |
  d4. b16 (a) |
  g8 b16 a g8 a |
  \slashedGrace { a16 ( } d4.) d8 |
  d b16 (a) g4 \fermata ~ |
  g g8 g |
  a4. a8 |
  a4. a8 |
  c c4 cs8 |
  d4. d8 |
  d d b16 ([d b]) a |
  g4 c8 c |
  b2 ~ |
  b4 r \bar "|."
  g8. fs16 g8 a |
  b4. (a16 g) |
  d8. d16 e (g) a8 |
  a2 |
  a8. c16 d8
  \afterGrace e8 ({
    \override Flag.stroke-style = #"grace"
    d16)}
  \revert Flag.stroke-style
  |
  b8. (a16) e8 g |
  \slashedGrace { a16 (b } a4.) fs8 |
  g2 ~ |
  g4. g8 |
  \repeat volta 2 {
  g e4 g8 |
  a4. c8 |
  c a4 c8 |
  d2 ~ |
  d4 a8 (c) |
  b d e, (g) |
  a2 ~ |
  a8 d e16 (d) a8 |
  d4. b16 (a) |
  g8 g a16 ([b a]) g |
  a4 e16 (g a b) |
  }
  \alternative {
    {
      g2 ~ 
      g4 r8 g |
    }
    {
      g4. r8 \bar "|."
    }
  }
}

nhacDiepKhucAlto = \relative c'' {
  R2
  a8. a16 fs8 e |
  e4 c8 c |
  b2 ~ |
  b8 d e g |
  a4 a8 (b) |
  e, e a4 |
  g4. g8 |
  fs g e r |
  r4 e8 e |
  ds4 ds8 ds |
  e4. c8 |
  b2 ~ |
  b4 r |
  b2 ~ |
  b8 b'16 -. b -. a8 r |
  r fs16 -. fs -. g8 r |
  r e -. r e -. |
  r8 a16 -. a -. b8 -. a16 -. a -. |
  g8 r r4 |
  r g8 g |
  ef4. ef8 |
  d4 d ^> |
  e8 (g) a a |
  a a g4 |
  fs4 fs8. fs16 |
  g4 g8 g |
  g2 ~ |
  g4 r |
  g8. fs16 g8 a |
  b4. (a16 g) |
  d8. d16 e (g) a8 |
  a2 |
  a8. c16 d8
  \afterGrace e8 ({
    \override Flag.stroke-style = #"grace"
    d16)}
  \revert Flag.stroke-style
  |
  b8. (a16) e8 g |
  \slashedGrace { a16 (b } a4.) fs8 |
  g2 ~ |
  g4. g8 |
  g e4 g8 |
  a4. e8 |
  d c4 g'8 |
  fs2 ~ |
  fs4 r |
  r b,8 (d) |
  e e d (g) |
  fs4. fs8 ^> |
  g ^> fs ^> e ^> d ^> |
  e4 cs |
  d c |
  b2 ~ |
  b4 r |
  b4. r8
}

nhacDiepKhucBas = \relative c' {
  g8. g16 e8 d |
  d4. g8 |
  a a, d4 |
  e8 e d e |
  g4. g8 |
  fs fs g4 ~ |
  g8 a16 (g) e8 (fs) |
  g4. e8 |
  ds e c r |
  r4 e8 e |
  b4 b8 b |
  c4. d8 |
  g2 |
  g8. g16 e8 d |
  <g g,>2 ~ |
  <g g,>8
  <<
    {
      g16 -. g -. fs8 r |
      r a16 -. a -. g8 r |
      r g -. r g -. |
      r fs16 -. fs -. g8 -. [c16 -. c -.] |
      b8 
    }
    {
      g,16 g d'8 r |
      r d16 d e8 r |
      r cs r e |
      r d16 d g8 [fs16 fs] |
      g8
    }
  >>
  r r \fermata ef ^\f ^> |
  <<
    {
      \voiceOne
      r4 g8 g |
      g4. g8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d2 ~ |
      d4 c8 ^> c
    }
  >>
  \oneVoice
  <<
    {
      fs4 fs ^> |
      g4 g8 g |
      fs a b4 |
      c c8. c16 |
      b4
    }
    {
      d,4 d |
      c e8 e |
      d d g4 |
      d d8. d16 |
      e4
    }
  >>
  <e' g, c,>8 <ef g, c,> |
  <d g, g,>2 ~ |
  <d g, g,>4 r |
  
  R2
  g,8. fs16 g8 a |
  b4. (a16 g) |
  d8. d16 e (g) a8 |
  a2 |
  g8. a16 c8 b |
  a a d <c d,> |
  <b g>2 ~ |
  <b g>4 r8 g |
  g e4 g8 |
  a4. a8 |
  a a ([g]) e |
  d2 ~ |
  d4 r |
  r g |
  c8 c b (c) |
  d4. c8 ^> |
  b ^> a ^> g ^> fs ^> |
  g4 <g e> |
  <fs d>4. <fs d>8 |
  <g d g,>2 ~ |
  <g d g,>4 r8 g |
  <g d g,>4. r8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Thắp nến bên tòa Mẹ con đợi mùa xuân,
  con đợi mùa xuân về
  để ngâm bài thơ lệ khi thức dận hồn quê.
  quê.
  Tiếng pháo giao thừa, pháo giao thừa đang nổ,
  Tiếng pháo giao thừa lạnh lùng trong đêm khuya,
  hồn con như sóng vỗ, sóng vỗ,
  sóng vỗ vào bờ bến năm xưa.
  Xuân về trên quê cũ, Vườn nhà nở muôn hoa.
  Lòng con cũng chớm nở một mùa xuân đậm đà.
  Con xin Mẹ năm nay cho con mùa gặt mới.
  Để con hái vần say, con hái vần say
  trong tình là trong tình yêu vời vợi.
  Con
  vợi.
}

loiDiepKhucAlto = \lyricmode {
  Thắp nến bên tòa Mẹ, bên tòa Mẹ
  con đợi mùa xuân, con đợi mùa xuân về,
  con đợi xuân về ngâm thơ lệ khi thức dận hồn quê.
  quê.
  păng păng păng păng păng păng păng păng
  păng păng păng păng păng păng
  lạnh lùng trong đêm khuya hồn con như sóng vỗ,
  sóng vỗ vào bờ, vào bờ bến năm xưa.
  Xuân về trên quê cũ, vườn nhà nở muôn hoa.
  Lòng con cũng chớm nở một mùa xuân đậm đà.
  Con xin Mẹ năm nay cho con mùa gặt mới.
  để con hái vần say vần thơ say trong tình yêu,
  tình yêu vời vợi.
  vợi.
}

loiDiepKhucBas = \lyricmode {
  Thắp nến bên tòa Mẹ, thắp nến ở tòa Mẹ.
  Con đợi mùa xuân
  con đợi mùa xuân sẽ trở về,
  con đợi xuân về ngâm thơ lệ khi thức dận hồn quê.
  Thắp nến bên tòa
  quê.
  păng păng păng păng păng păng păng păng
  păng păng păng păng păng păng 
  lạnh lạnh lùng trong đêm khuya hồn con như sóng vỗ,
  sóng vỗ vào bờ, vào bờ bến năm xưa.
  Xuân về trên quê cũ vườn nhà nở muôn hoa.
  Lòng con cũng chớm nở mùa xuân đậm đà.
  Con xin Mẹ năm nay cho con mùa gặt mới.
  Để con hái vần say hái thơ say trong tình yêu,
  mến yêu vời vợi.
  Con
  vợi.
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
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
      \new Lyrics \lyricsto "splitpart" {
        \override Lyrics.LyricText.font-shape = #'italic
        lùng trong đêm
      }
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
