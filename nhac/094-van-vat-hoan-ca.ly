% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vạn Vật Hoan Ca" }
  poet = "Lời kinh: Thánh Phanxicô"
  composer = "Thơ dịch: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

nhacIntroSop = \relative c'' {
  \key c \major \time 2/4
  \partial 4 r4 |
  r \tuplet 3/2 { <e c g>8 <e c g> <e c g> } |
  <f b, g>4 \tuplet 3/2 { <d a f>8 <d a f> <d a f> } |
  <e c g>4. <c a f>8 |
  <d a f>4 \tuplet 3/2 { <b g f d>8 <b g f d> <b g f d> } |
  <c g e>2 ~ |
  <c g e>4 \bar "||"
}

nhacIntroBas = \relative c {
  \key c \major \time 2/4
  c8. c16 |
  g'2 |
  \tuplet 3/2 { g,8 g g } d'4 |
  \tuplet 3/2 { c8 c c } f4 |
  \tuplet 3/2 { d8 d d } g8 g, |
  c4 \tuplet 3/2 { c8 e g } |
  c4
}

% Nhạc phiên khúc
nhacPhienKhucSolo = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \time 2/4
  R2*81
  r4
  \time 3/4
  R2.*15
  
  \time 2/4
  R2*26
  \key f \major
  c4. (a16 g) |
  f8. (e16 f8 g) |
  c, c r a' |
  \slashedGrace { a16 ( } g2 ~) |
  g4 r |
  R2*2
  c,4. (e16 f) |
  a8 g r \slashedGrace { a16 ( } g8) |
  c4 c8 c |
  ef4. c16 (g) |
  g2 |
  \slashedGrace { f16 (e } f4.) g8 |
  g f g,4 |
  c2 ~ |
  c4 c'8 g |
  a g c, (e16 f) |
  g2 ~ |
  g4 r |
  R2
  r4 e'8 c |
  e4. g,8 |
  c4 c8 a |
  c a16 (g) r8 e16 (f) |
  g4 g8 f |
  g f r g, |
  c2 ~ |
  c4 r
  
  R2*27
  \key af \major
  <>^\markup {
    \raise #3 \halign #0.8
    \fontsize #2 \bold "Chị Chết"
  }
  c'4. af16 (g) |
  f4 r8 c |
  g'2 ~ |
  g ~ |
  g4 r |
  R2
  bf8. g16 bf8 b! |
  c4. bf16 (c) |
  af4 g8 af16 (g) |
  f2 ~ |
  f4 r |
  
}

nhacPhienKhucSop = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key c \major \time 2/4
  \once \hide Staff.TimeSignature
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  \partial 4
  <>^\markup {
    \raise #3 \halign #1 \fontsize #2 \bold "Khai Đề"
  }
  c8. a16 |
  g2 ~ |
  g ~ |
  g8 g e' (d) |
  c2 ~ |
  c4 b8. b16 |
  c4 a16 (c) a (g) |
  \slashedGrace { e16 ( } f4.) a8 |
  g4 \tuplet 3/2 { e'8 e e } |
  f4 \tuplet 3/2 { d8 d d } |
  e4. c8 |
  b2 |
  c8 c4 a8 |
  g2 ~ |
  g4 \tuplet 3/2 { g8 g a } |
  f4 \tuplet 3/2 { f8 f g } |
  e8. d16 c8 a' |
  g2 |
  c8 b4 d8 |
  c2 ~ |
  c4 \bar "||" \break
  
  \partial 4
  <>^\markup {
    \raise #3 \halign #-0.3
    \fontsize #2 \bold "Tôn Huynh Mặt Trời"
  }
  r4
  \repeat volta 2
  {
    R2
    r4 c8. c16 |
    b8 b r c |
    a8. a16 g8 g |
    r4 g'8 e |
    f4. e8 |
    d2 ~ |
    d4 r |
    r r8 a16 (g) |
    e8 g4 c8 |
    b2 |
    r8 e f8. d16 |
    e8 c r c |
    d8. b16 c8 a ~ |
    a4 b8 g |
    a4. fs8 |
    g2 |
    b8. b16 b8 b |
    c2 |
    cs8. cs16 cs8 cs |
    d4. d8 |
    c8 a4 b8
  }
  \alternative
  {
    {
      b2 ~ |
      b4 r
    }
    {
      b2 ~ |
      b4 r \bar "|."
    }
  }
  \break
  
  <>^\markup {
    \raise #3 \halign #-0.3
    \fontsize #2 \bold "Chị Trăng, Chị Sao"
  }
  c4. g8 |
  \repeat volta 2
  {
    a (g) e (f) |
    g2 ~ |
    g4 g'8 e |
    f4. e8 |
    d2 ~ |
    d8 c c8. b16 |
    d8 d r d |
    d8. c16 e8 e |
    r d d4 ~ |
  }
  \alternative
  {
    {
      d8 c4 a8 |
      b2 |
      c4. g8
    }
    {
      d'8 \repeatTie c4 b8 |
      c2 ~ |
      c ~ |
      c8 \fermata \bar "||" \break
    }
  }
  
  
  \key ef \major
  <>^\markup {
    \raise #3 \halign #-0.2
    \fontsize #2 \bold "Anh Gió, Chị Mây"
  }
  r4. |
  \repeat volta 2
  {
    r8 c r c |
    d b! c4 ~ |
    c r |
    r8 d16 c ef8 c |
    b!4. b8 |
    c4. d16 c |
    \slashedGrace { g16 (af } g2 ~) |
    g8
    %\once \override NoteColumn.X-offset =  <>
    ef'16 c ef8 c |
    d4. d16 b! |
    d8 b! c4 |
    af8. g16 g8 c |
    f,4. ef8 |
    d g4 g8
  }
  \alternative
  {
    {
      c,2 ~ |
      c4 r
    }
    {
      c2 ~ |
      c4 r \bar ":|."
    }
  }
  \break
  
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  <>^\markup {
    \raise #3 \halign #-0.3
    \fontsize #2 \bold "Chị Nước Mênh Mông"
  }
  R2. |
  r4 r8 g' e'8. d16 |
  d4 d8 g, d'8. c16 |
  c2 g8 g |
  a2 f8 (e) |
  d2 r4 |
  r e8. e16 e8 e |
  f4 d8 d g g |
  a2. ~ |
  a4 r2 |
  r8 g c8. b16 b4 |
  e,4. f8 e a |
  a4 r8 g e'8. c16 |
  d8 d r g, d'8. b16 |
  c8 c4. r4 \bar "||" \break
  
  \key f \major \time 2/4
  \set Timing.beatStructure = #'(1 1)
  <>^\markup {
    \raise #3 \halign #-0.3
    \fontsize #2 \bold "Anh Lửa Rạng Ngời"
  }
  R2*2
  d16 (e) d8 c bf |
  a4 a8 g |
  a4. c8 |
  g2 |
  bf8. g16 bf8 c |
  c2 |
  c8. a16 c8 d |
  d2 |
  b!8 a d b16 (a) |
  g2 |
  f8. d16 f8 g |
  g2 |
  g8. e16 g8 a |
  a2 |
  fs8 e a fs16 (e) |
  d4. d8 |
  d d f (g16 f) |
  c4 c'8 a |
  d, (f) d f |
  g4 c8 a |
  d, (f) d f |
  g2 ~ |
  g4 \bar "|." \break
  
  <>^\markup {
    \raise #3 \halign #-0.3
    \fontsize #2 \bold "Mẹ Hiền Trái Đất"
  }
  % đàn
  c,8. c16 |
  e8 f r a |
  g4 r8 a16 g | \break
  
  R2*3
  r8 c r bf |
  c4 c8 a |
  c4. a8 |
  g2 ~ |
  g4 r |
  R2
  r4 c8 c |
  ef4. c16 (g) |
  g2 ~  g4 r |
  R2
  r8 a r a |
  g a g r |
  R2
  r8 c r bf |
  c4 g8 c |
  a (g) e (f) |
  \slashedGrace { a16 ( } g2 ~ ) |
  g8 c g g |
  c4 c8 a |
  c a16 (g) r8 e16 (f) |
  g4 r |
  r8 a g r |
  r a r a |
  g4 r \bar "|." \break
  
  <>^\markup {
    \raise #3 \halign #-0.3
    \fontsize #2 \bold "Người Tha Thứ Cho Người"
  }
  f8. g16 a8 g |
  f f r d' |
  c d r f |
  c2 ~ |
  c4 r |
  R2
  bf8. g16 bf8 c |
  d4. c8 |
  bf8. (g16) bf8 c |
  c2 ~ |
  c4 r |
  R2
  c16 (d) c8 a16 (g) a8 |
  c4. a8 |
  bf bf r g |
  a4 r8 f |
  g g r e |
  f2 ~ |
  f4 r |
  r r8 c |
  a'8. g16 g8 f |
  \slashedGrace { \stemDown f16 ^(a \stemNeutral } bf4.) g8 |
  \slashedGrace { \stemDown g16^(bf \stemNeutral } c2) |
  f8 f r d |
  d b!4 b8 |
  c2 ~ |
  c4 r \bar "|." \break
  
  \key af \major
  R2*2
  r4 r8 g |
  f g r g16 (f) |
  ef4 r8 f |
  df (c) f f |
  g2 ~ |
  g4 r8 g |
  f4 ef |
  f2 ~ |
  f4 r | \break
  R2*2
  r8 \tiny c f g \normalsize \bar "||"
  
  \key f \major
  a8. g16 g8 f |
  bf bf r g |
  d' c4 bf8 |
  a2 ~ |
  a4 r |
  r r8 bf ~ |
  bf a a a16 a |
  d8 (c4) b!8 |
  b!2 ~ |
  b!4 r \bar "||" \break
  
  \key c \major
  <>^\markup {
    \raise #3 \halign #-0.3
    \fontsize #2 \bold "Chung Khúc"
  }
  R2
  \repeat volta 2
  {
    e8. d16 c8 d |
    b2 |
    f'8. e16 d8 e |
    c4. c8 |
    a4 c16 (d) c8 |
    g2 ~ |
    g8 g f' e |
    d4 g8 g |
    c,2 ~ |
    c4 r |
    R2
    c8. e16 d8 d |
    f4 \tuplet 3/2 { f8 e e } |
    g2 |
    f8. d16 d8 e |
    e4. e8 |
    d2 |
    d8. b16 b8 c |
    c4. d8 |
    g, g4 a16 (g) |
    e2 ~ |
    e4 c8 c |
    f4 \tuplet 3/2 { e8 e e } |
    a4. g8 |
    g2 ~ |
    g4 r
  }
  \alternative
  {
    {
      r g8 g |
      e'4 \tuplet 3/2 { c8 c c } |
      f4. e8 |
      d2 ~ |
      d4 r |
      R2
    }
    {
      r4 e,8 e |
      a4 \tuplet 3/2 { g8 g g } |
      d'4. c8 |
      c2 ~ |
      c ~ |
      c4
    }
  }
  \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key c \major \time 2/4
  \once \hide Staff.TimeSignature
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  c8. a16 |
  g2 ~ |
  g ~ |
  g8 g g (f) |
  e2 ~ |
  e4 d8. d16 |
  e4 e8 e |
  c4. c8 |
  b4 \tuplet 3/2 { g'8 g g } |
  a4 \tuplet 3/2 { b8 b b } |
  c4. a8 |
  gs2 |
  e8 e4 d16 (c) |
  b2 ~ |
  b4 \tuplet 3/2 { b8 b c } |
  d4 \tuplet 3/2 { d8 c b } |
  c8. b16 a8 f' |
  e2 |
  e8 d4 f8 |
  e2 ~ |
  e4
  
  r4 |
  R2
  r4 e8. e16 |
  d8 d r c |
  f8. f16 e8 e |
  r4 e8 g |
  a4 (d8) c |
  b2 ~ |
  b4 r |
  r r8 f16 (e) |
  c8 e4 e8 |
  d2 |
  r8 g a8. a16 |
  g8 e r e |
  f8. f16 e8 c ~ |
  c4 g'8 e |
  e4 (d8) c |
  b2 |
  d8. d16 d8 d |
  g2 |
  e8. e16 e8 e |
  a4. b8 |
  e, fs4 fs8 |
  d2 ~ d4 r
  d2 ~ |
  d4 r
  
  R2*2
  r8 g16 e f8 d |
  e4 e'8 c |
  a4 (d8) c |
  b2 ~ |
  b8 r4 d,8 |
  a' a r4 |
  r8 a gs gs |
  r4 r8 a |
  g4 fs8 fs |
  g2 |
  R2
  e4 d8 (f) |
  e4 e8. e16 |
  f8 f r f |
  e \fermata
  
  \key ef \major
  r4. |
  r8 ef r ef |
  f d ef4 ~ |
  ef r |
  r8 bf'16 af c8 af |
  g2 |
  r8 g16 g af8 r |
  r d,16 d ef8 f16 ef |
  d8 r r4 |
  r8 af'16 af d,8 d |
  f4. ef8 |
  c4 c8 ef |
  d4. c8 |
  c c b!4 |
  c2 ~ |
  c4 r
  c2 ~ |
  c4 r
  
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  R2.
  r4 r8 g' c8. b16 |
  b4 g8 e f8. e16 |
  e2 e8 e |
  f2 d8 (c) |
  b2 r4 |
  r c8. c16 c8 c |
  d4 b8 b c e |
  f2. ~ |
  f4 r2 |
  r8 c e8. d16 d4 |
  c4. d8 c e |
  f4 r8 g c8. a16 |
  b8 b r g f8. f16 |
  e8 e4. r4
  
  \key f \major \time 2/4
  \set Timing.beatStructure = #'(1 1)
  c'16 (d) c8 bf a |
  g2 |
  a4 (g) |
  f c8 c |
  f4. f8 |
  e2 |
  g8. e16 g8 f |
  e4. (g8) |
  a8. f16 a8 g |
  f2 |
  d8 e d8. c16 |
  b!2 |
  d8. b!16 d8 c |
  bf4. (d8) |
  e8. c16 e8 c |
  cs2 |
  a8 d cs cs |
  d4. d8 |
  d d f (g16 f) |
  c4 e8 c |
  bf4 bf8 d |
  c4 c8 c |
  bf4 bf8 a |
  c2 ~ |
  c4 \bar "|." \break
  
  r4
  R2*5
  r8 g' r f |
  e4 e8 e |
  f4. f8 |
  e2 ~ |
  e4 r |
  R2
  r4 a8 a |
  g4. g16 (ef) |
  d2 ~ |
  d4 r |
  R2 |
  r8 f r f |
  e f e r |
  R2
  r8 g r f |
  e4 e8 e |
  f (d) c4 |
  c2 ~ |
  c8 g' e e |
  f4 f8 f |
  f4 r8 c |
  d4 r |
  r8 f d r |
  r f r f |
  e4 r
  
  R2
  r4 f8. g16 |
  a8 g f bf |
  g2 |
  e8. d16 e8 g |
  a4. a8 |
  g4. g8 |
  f4 f8 f |
  d4 f |
  e2 ~ |
  e4 r |
  g16 (a) g8 e16 (d) e8 |
  g4 c, |
  c4. f8 |
  d d r c |
  f4 r8 d |
  c c r bf |
  a2 ~ |
  a4 r |
  r4 r8 c |
  f8. c16 c8 c |
  bf8. f'16 g8 f |
  e4 f8. g16 |
  a8 d r bf |
  a g4 f8 |
  e2 ~ |
  e4 r
  
  \key af \major
  R2*2
  r4 r8 df8 |
  c df r df |
  c4 r4 |
  r8 bf af4 |
  df4. df8 |
  c4 af8 (df) |
  c4 bf |
  af2 ~ |
  af4 r |
  R2*3 \bar "||"
  
  \key f \major
  f'8. e16 e8 d |
  g g r d |
  bf' a4 g8 |
  f2 ~ |
  f4 r |
  r r8 g ~ |
  g f f f16 f |
  g4 f |
  d2 ~ |
  d4 r \bar "||" \break
  
  \key c \major
  R2
  c'8. g16 e8 f |
  d2 |
  d'8. c16 g8 f |
  e4. e8 |
  c4 c8 c |
  b8. b16 f'8 e |
  d4. g8 |
  f4 d8 (f) |
  e2 |
  d8. f16 e8 e |
  g2 ~ |
  g4 r8 g |
  c4 \tuplet 3/2 { c8 c c } |
  b2 ~ |
  b4 r |
  R2
  g8. e16 e8 f |
  f4. f8 |
  e8. e16 d8 c |
  b b4 b8 |
  c2 ~ |
  c4 g8 g |
  a4 \tuplet 3/2 { c8 c c } |
  d4 (c8) c |
  b2 ~ |
  b4 r |
  r e8 e |
  g4 \tuplet 3/2 { g8 g g } |
  a4 (d8) c |
  b2 ~ 
  b4 r |
  R2
  r4 c,8 c |
  d4 \tuplet 3/2 { c8 c c } |
  f4. f8 |
  e4 e8 e |
  f4 \tuplet 3/2 { f8 a f } |
  e4
}

nhacPhienKhucBas = \relative c' {
\override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key c \major \time 2/4
  \once \hide Staff.TimeSignature
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  c8. a16 |
  g4. e8 |
  f4 d8 g |
  c,2 ~ |
  c4 c8. c16 |
  g'4. g8 |
  c,4 c'8 c |
  a4. f8 |
  g4 r |
  \tuplet 3/2 { d8 d d } g4 |
  \tuplet 3/2 { c,8 c c } d8 ds |
  e2 |
  a,8 a'4 f8 |
  g2 ~ |
  g4 r |
  \tuplet 3/2 { d8 d d } g4 |
  \tuplet 3/2 { c,8 c c } f8 f |
  g4 \tuplet 3/2 { g8 f af } |
  g4 g, |
  c2 ~ |
  c4
  
  c'8 a |
  g8. (a16 f8) d |
  c2 |
  r8 g' a a |
  r4 r8 c |
  b8. b16 c8 c |
  f,4. fs8 |
  g4. g8 |
  d g e (d) |
  c2 ~ |
  c4 c'8 c |
  g8. (a16 f8) d |
  c4 r8 b |
  c8. c16 a4 |
  r8 g' a8. a16 |
  f4 e8 d |
  c4. d8 |
  g2 |
  g8. g16 f8 f |
  e4. e8 |
  a8. a16 g8 g |
  fs4. g8 |
  a d d, d |
  g2 ~ |
  g4 c8 a
  g2 ~ |
  g4 r
  
  R2*2
  r8 e'16 c d8 b |
  c4 c8 c |
  f,4. fs8 |
  g2 ~ |
  g8 r4 g8 |
  fs fs r4 |
  r8 f e e |
  r4 r8 f |
  e4 d8 d |
  g2 |
  R2
  g4 g8 <g g,> |
  <g c,>4 <g c,>8. <g c,>16 |
  <a f>8 <a f> r <af f> |
  <g c,> \fermata
  
  \key ef \major
  af16 g af8 f |
  g2 ~ |
  g4 r8 c |
  g af4 g8 |
  f4. f8 |
  g2 |
  r8 ef16 ef f8 r |
  r g16 g c8 d16 c |
  b!8 r r c16 c |
  f,8 f g4 |
  r8 g16 g c,8 c |
  f4 ef |
  f8. f16 f8 g |
  af (g) g,4 |
  c2 ~ |
  c8
  \once \override NoteColumn.X-offset = 2 <>
  af'16 g af8 f
  
  c2 ~ |
  c4 r
  
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  c'4. e,8 c' a |
  g2. ~ |
  g4 r8 e d g |
  a2 r4 |
  r d,8 d f8. f16 |
  g4 g8. g16 g8 g |
  c2 a4 |
  g2 r4 |
  f8 f a a c c, |
  f4 e8 d a'16 (c) a8 |
  g2 g4 |
  a2. |
  r8 f d e c4 |
  g'8 g r e d g |
  c, c4. r4
  
  \key f \major \time 2/4
  \set Timing.beatStructure = #'(1 1)
  R2
  bf'16 (c) bf8 a g |
  f4 e |
  f f8 e |
  d4 (f8) a, |
  c2 ~ |
  c4 r |
  c'8. c,16 d8 e |
  f4 r |
  d'8. d,16 e8 f |
  g8. g16 fs8 fs |
  g2 ~ |
  g4 r |
  g8. g,16 a8 b! |
  c4 r |
  a'8. a,16 b!8 cs |
  d b! a a |
  d4. d8 |
  d d f (g16 f) |
  c4 c8 f |
  g4 g8 f |
  e4 e8 f |
  g4 g8 <f d> |
  <e c>2 ~ |
  <e c>4
  
  r4
  R2*5
  r8 e r g |
  c,4 c'8 c |
  a ([g a]) b! |
  c2 ~ |
  c4 r |
  R2
  r4 f,8 f |
  <c' c,>4 <c ef,> |
  <bf g>2 ~ |
  <bf g>4 r |
  R2
  r8 f r f |
  c bf c r |
  R2
  r8 e r g |
  c,4 c8 c |
  f4 a8 (f) |
  c2 ~ |
  c8 c c' bf |
  a4 a8 f |
  e4 r8 a |
  g4 r |
  r8 d g r |
  r f r f |
  c4 r
  
  R2
  a'8. bf16 c8 bf |
  a a r g |
  c c r bf |
  c2 |
  f,8. c16 d8 f |
  g4. e8 |
  d8. (c16) d8 f |
  g4. d8 |
  c2 |
  c'16 (d) c8 a16 (g) a8 |
  c2 ~ |
  c8 c, f8 f |
  e8. e16 f8 r |
  r bf a r |
  r f d r |
  r bf g c |
  f,4 a8 c |
  f8. e16 d8 c |
  \slashedGrace { \stemDown c16 ^(d \stemNeutral } f2 ~) |
  f8 r16 e e8 e |
  d4. d8 |
  c2 |
  r8 bf c bf |
  f'4 g8 g, |
  c2 ~ |
  c4 r
  
  \key af \major
  R2*2
  r4 r8 bf' |
  af bf r bf, |
  c4 r |
  r r8 f |
  bf,4 f'8 f |
  ef4 f8 bf, |
  c4 c |
  <f f,>2 |
  f8. ef16 ef8 df |
  c4 r8 af |
  df df r bf |
  c2 ~ |
  
  \key f \major
  c4 r |
  R2*2
  r4 r8 c f4 e8. d16 |
  d2 ~ |
  d4 r8 f |
  e4 d |
  g2 ~ |
  <<
    {
      \voiceTwo g4 r
    }
    \new Voice = "splitpart" {
	    \voiceOne \tiny
	    r8
	    <>_\markup { \lower #3 \fontsize #2 "(Đàn...)" }
	    g16 [a8 b!] \normalsize
    }
  >>
  \bar "||" \break
  \oneVoice
  
  \key c \major
  c8. g16 f8 g |
  c,2 |
  g'8. d16 c8 d |
  g,2 |
  c8. b16 a8 c |
  f4 e8 (f) |
  g4. c8 |
  b4. c8 |
  d4 b8 (g) |
  a2 ~ |
  a4 r |
  b8. d16 c8 c |
  e4. b8 |
  a4 \tuplet 3/2 { a8 c c } |
  g2 ~ |
  g4 r c8. a16 a8 b |
  b4. c16 (d) |
  g,4 g |
  a4. f8 |
  g4 g, |
  c a8 a |
  e'2 ~ |
  e8 d \tuplet 3/2 { a'8 a g } |
  f4. g8 |
  g4 r8 g |
  d d4 e16 (d) |
  c2 ~ |
  c8 b \tuplet 3/2 { e8 e e } |
  d4. d8 |
  g2 ~ |
  g4 r8 g |
  c8. g16 f8 a |
  c,2 ~ |
  c8 a \tuplet 3/2 { e'8 e e } |
  <a d,>4 <b g,> |
  <<
    {
      \voiceOne
      g g8 g |
      a4 \tuplet 3/2 { a8 c a } |
      g4
    }
    \new Voice = "splitpart" {
	    \voiceTwo
	    c,2 ~ |
	    c ~ |
	    c4
    }
  >>
}

% Lời phiên khúc
loiPhienKhucSolo = \lyrics {
  \set stanza = " Solo:"
  "Hỡi (ơ)" Mẹ hiền (mà) Trái Đất.
  "Mẹ (ơ)" dưỡng nuôi ôm ấp
  Mẹ chở cả loài người.
  Mẹ sinh hoa (ơ) đồng nội tươi đẹp lắm (ơ) Mẹ ơi,
  Sáng danh Chúa Mẹ ơi, sáng danh Chúa (ơ) Mẹ ơi,
  sáng danh Chúa (ơ) Mẹ ơi!
  
  \set stanza = "Solo:"
  Hỡi Tử Thần, chị Chết.
  Ai người trên dương thế thoát khỏi bàn tay chị.
}

loiPhienKhucSop = \lyrics {
  Chúa muôn cao
  Ngài thánh thiện.
  Vạn lời kinh chỉ ca tụng Chúa thôi,
  vinh danh tôn đức, vinh danh tôn đức muôn đời,
  vinh danh muôn đời.
  Kêu tên Chúa Cả, kêu tên Chúa Cả
  ai người xứng danh, ai người xứng danh?
  Tôn huynh Mặt Trời hỡi tôn huynh Mặt Trời,
  Sáng danh Chúa, Chúa ơi!
  Mỗi ngày anh sáng soi,
  Anh chiếu rạng huy hoàng,
  anh chiếu rạng huy hoàng, sáng đẹp khắp trần gian.
  Anh mang uy danh Chúa,
  Anh mang uy danh Chúa khắp cõi trời cao sang.
  
  sang.
  
  Hỡi chị Trăng, chị Sao
  sáng danh Chúa biết bao.
  Trăng Sao kiều diễm quá, Trăng Sao kiều diễm quá
  lung linh trên trời cao. Hỡi chị
  _ trên trời cao.
  
  Hỡi anh Gió, chị Mây
  sáng danh Chúa nhân thay,
  trời cao gió mây chuyển khiến trời đất vần xoay,
  khiến trời đất vần xoay
  bảo toàn loài Chúa dựng,
  anh chị giúp mỗi ngày.
  ngày.
  
  Chị Nước mênh mông, hỡi chị Nước mênh mông
  tung hô Chúa vạn lòng.
  Tung hô, tung hô Chúa vạn lòng tung hô Chúa.
  Chị Nước mênh mông, chị trong ngần quý giá
  lợi ích thật vô song, lợi ích thật vô song.
  
  Hỡi anh Lửa rạng ngời,
  Sáng danh Chúa, Chúa ơi!
  Anh dẹp tan bóng tối,
  anh dẹp tan bóng tối,
  anh sưởi ấm bao người.
  Tinh thần anh bất khuất,
  tinh thần anh bất khuất,
  anh đẹp đến vạn đời người người cùng ngưỡng mộ.
  Hỡi anh Lửa của tôi ơi, hỡi anh Lửa của tôi ơi!
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) __ _ _ _ _ _ _ _
  \revert Lyrics.LyricText.font-shape
  A, a ơi, sáng danh Chúa, Chúa ơi!
  Mẹ chở cả loài người.
  a, a ơi, a ơi.
  a, a ơi, Mẹ dưỡng sinh ngũ cốc
  sáng danh, Mẹ ơi, sáng danh Chúa (ơ) Mẹ ơi,
  Sáng danh a, a ơi.
  
  Người tha thứ cho người (mà) sáng danh Chúa, Chúa ơi,
  Chỉ vì lòng mến Chúa đau khổ coi như chơi.
  Phúc cho người trung kiên vui lẽ sống bình yên,
  vui lẽ sống bình yên.
  Được Chúa muôn cao trọng thưởng,
  trọng thưởng sáng chói, sáng chói vạn triều thiên.
  
  Sáng danh Chúa, Chúa ơi.
  Ai người trên dương thế thoát khỏi tay chị.
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) _ _
  \revert Lyrics.LyricText.font-shape
  Phúc cho ai giờ vĩnh quyết trọn ý Cha trên trời.
  Không bị hại bởi sự chết đời đời.
  
  Hỡi muôn loài muôn vật,
  hỡi muôn loài muôn vật
  ca tụng Đức Chúa Trời,
  nào hãy ca tụng Đức Chúa Trời.
  Lời sáng danh tôn đức, sáng danh tôn đức,
  Câu cảm tạ trên môi, Chúa ơi!
  Câu cảm tạ trên môi suốt cuộc đời khiêm hạ
  thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
  
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
  
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
}

loiPhienKhucAlto = \lyrics {
  Chúa muôn cao
  Ngài thánh thiện.
  Vạn lời kinh chỉ ca tụng Chúa thôi,
  vinh danh tôn đức, vinh danh tôn đức muôn đời,
  vinh danh muôn đời.
  Kêu tên Chúa Cả, kêu tên Chúa Cả
  ai người xứng danh, ai người xứng danh?
  Tôn huynh Mặt Trời hỡi tôn huynh Mặt Trời,
  Sáng danh Chúa, Chúa ơi!
  Mỗi ngày anh sáng soi,
  Anh chiếu rạng huy hoàng,
  anh chiếu rạng huy hoàng sáng đẹp khắp trần gian.
  Anh mang uy danh Chúa,
  Anh mang uy danh Chúa khắp cõi trời cao sang.
  
  sang.
  
  Hỡi chị Trăng, chị Sao
  sáng danh Chúa biết bao.
  kiều diễm quá, yêu kiều lạ
  lung linh nền trời cao.
  linh trên cao. lung linh, lung linh trên cao.
  
  Hỡi anh Gió, chị Mây
  sáng danh Chúa nhân thay tầng trời cao
  tầng trời cao gió mây chuyển
  khiến đất trời vần xoay
  bảo toàn loài Chúa dựng anh chị giúp mỗi ngày.
  ngày.
  
  Chị Nước mênh mông, hỡi chị Nước mênh mông
  tung hô Chúa vạn lòng.
  Tung hô, tung hô Chúa vạn lòng tung hô Chúa.
  Chị Nước mênh mông, chị trong ngần quý giá
  lợi ích thật vô song, lợi ích thật vô song.
  
  Hỡi anh Lửa rạng ngời, chói ngời,
  Sáng danh Chúa, Chúa ơi!
  Anh dẹp tan bóng tối,
  anh dẹp tan bóng tối,
  anh sưởi ấm bao người.
  Tinh thần anh bất khuất,
  tinh thần anh bất khuất,
  anh đẹp đến vạn đời người người cùng ngưỡng mộ.
  Hỡi anh Lửa của tôi ơi, hỡi anh Lửa của tôi ơi!
  
  A, a ơi, sáng danh Chúa, Chúa ơi!
  Mẹ chở cả loài người.
  a, a ơi, a ơi.
  a, a ơi, Mẹ dưỡng sinh ngũ cốc
  sáng danh, Mẹ ơi, sáng danh Chúa Mẹ ơi,
  Sáng danh a, a ơi.
  
  Người tha thứ cho người, Chúa ơi,
  chỉ vì lòng mến Chúa, Chúa ơi,
  Chúa ơi coi đau khổ như chơi.
  Phúc cho người trung kiên,
  trung kiên vui lễ sống bình yên,
  vui lẽ sống bình yên.
  Được Chúa muôn cao trọng thưởng,
  đây Chúa trọng thưởng triều thiên rạng chói,
  sáng chói vạn triều thiên.
  
  Sáng danh Chúa, Chúa ơi.
  Ai người trên dương trần thoát khỏi tay chị.
  Phúc cho ai giờ vĩnh quyết trọn ý Cha trên trời.
  Không bị hại bởi sự chết đời đời.
  
  Hỡi muôn loài muôn vật,
  hỡi muôn loài muôn vật
  ca tụng Đức Chúa Trời,
  nào hãy ca tụng ca tụng Chúa Trời
  Lời sáng danh tôn đức, tôn đức, sáng danh tôn đức.
  Câu cảm tạ trên môi Chúa ơi
  cảm tạ suốt cuộc đời khiêm hạ.
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
  
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
  
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi
  thờ phượng Chúa, Thiên Chúa Ba Ngôi.
}

loiPhienKhucBas = \lyrics {
  Chúa muôn cao, quyền năng,
  Ngài thánh thiện.
  Vạn lời kinh ân tình chỉ ca tụng mà thôi.
  Vinh danh tôn đức, vinh danh tôn đức muôn đời,
  vinh danh muôn đời.
  Kêu tên Vua Cả, kêu tên Vua Cả lừng danh,
  ai người xứng danh, lừng danh?
  
  Hỡi tôn "huynh (i a)" Mặt Trời,
  hỡi tôn huynh
  Hỡi Mặt Trời vanh danh của Chúa ơi,
  Muôn loài Chúa tạo thành
  Ánh sáng "soi (i a)" mỗi ngày,
  rạng soi huy hoàng,
  rạng soi huy hoàng, sáng đẹp cả trần gian.
  Anh mang uy danh Ngài
  này Anh mang uy danh Chúa rạng soi tới trời cao sang.
  Hỡi tôn
  sang.
  
  Hỡi chị Trăng, chị Sao sáng danh Ngài là bao.
  yêu kiều lạ, yêu kiều lạ
  lung linh nền trời cao.
  linh trên trời cao, lung linh, lung linh trên cao.
  
  Hỡi anh Gió, chị Mây,
  Sáng danh Chúa nhân thay,
  nhân thay tầng trời cao,
  tầng trời cao gió mây chuyển khiến đất trời vần xoay,
  khiến đất trời vần xoay nhờ chị và nhờ anh giúp mỗi ngày.
  Hỡi anh Gió, chị...
  ngày.
  
  Hỡi chị Nước mênh mông,
  chị thật mênh mông.
  Vạn lòng tung hô Chúa, tung hô, tung hô Chúa vang hòa.
  Vạn lòng tung hô Chúa vì Chúa cho chị Nước mênh mông,
  ôi chị trong ngần ích lợi vô song,
  ích lợi rất vô song.
  
  Hỡi anh lửa rạng ngời, rạng ngời,
  Sáng danh Chúa, người ơi!
  Anh dẹp tan bóng tối,
  anh dẹp tan bóng tối sưởi ấm bao người.
  Tinh thần anh bất khuất,
  tinh thần anh bất khuất đẹp rền vạn đời
  người người cùng ngưỡng mộ.
  Hỡi anh Lửa của tôi ơi,
  hỡi anh Lửa của tôi ơi!
  
  A, a ơi, vang danh Cả Chúa ơi!
  Mẹ chở cả loài người.
  a, a ơi, a ơi.
  a, a ơi, Mẹ dưỡng sinh thảo mộc
  rạng danh, Mẹ ơi, sáng danh (ơ) Mẹ ơi,
  Rạng danh a, a ơi!
  
  Người tha thứ cho người (mà) người ơi (ơ) người ơi,
  Chỉ vì lòng mến Chúa đau khổ coi như chơi, Chúa ơi.
  Phúc cho người trung kiên
  người trung kiên hưởng bình yên sống vui,
  sống vui,
  sống đời vĩnh yên.
  Họ được Chúa muôn cao trọng thưởng,
  muôn cao trọng thưởng, trọng thưởng
  dọi lên rạng chói ánh triều thiên.
  
  Sáng danh Chúa người ơi.
  Ai người trên dương trần thoát khỏi bàn tay chị.
  Khốn cho ai tử biệt lệ thống hối chẳng rơi.
  Người ấy không bị hại bởi chết đời đời.
  
  Hỡi muôn loài muôn vật,
  hỡi muôn loài muôn vật, hỡi muôn loài ca chúc mọi nơi
  ca tụng, ca tụng Chúa Trời.
  Lời sáng danh tôn đức
  chân thực, rạng danh chân thực.
  Câu cảm tạ trên môi, cảm tạ trên môi
  trọn đời phục hạ.
  Thờ phượng Chúa cùng thờ phượng Vua Cả Ba Ngôi.
  Suốt cuộc đời khiêm hạ
  cùng thờ phượng Vua Cả Ba Ngôi.
  Này hỡi muôn loài muôn
  hạ cùng thờ phượng Vua Cả Ba Ngôi
  \override Lyrics.LyricText.font-shape = #'italic
  (thờ phượng Chúa, Thiên Chúa Ba Ngôi).
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
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  system-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  score-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  %page-count = 10
}

TongNhip = {
  \key g \major \time 2/4
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
    \new Staff<<
     \new Voice = "beSop" {
       \clef treble \nhacIntroSop
     }
     >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \nhacIntroBas
      }
    >>
  >>
  \layout {
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "solo" {
        \clef treble \nhacPhienKhucSolo
      }
      \new Lyrics \lyricsto solo \loiPhienKhucSolo
    >>
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override LyricHyphen.minimum-distance = #1
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
