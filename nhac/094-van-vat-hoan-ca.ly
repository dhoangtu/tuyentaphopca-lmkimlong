% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vạn Vật Hoan Ca" }
  composer = "Lời kinh: Thánh Phanxicô"
  poet = "Thơ dịch: Lm. Xuân Ly Băng"
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
  <c g e>4 \bar ""
}

nhacIntroBas = \relative c {
  \key c \major \time 2/4
  c8. c16 |
  e2 |
  \tuplet 3/2 { g8 g g } d4 |
  \tuplet 3/2 { c8 c c } f4 |
  \tuplet 3/2 { d8 d d } g8 g, |
  c4 \tuplet 3/2 { c8 e g } |
  c4
}

% Nhạc phiên khúc
nhacPhienKhucSolo = \relative c'' {
  \time 2/4
  R2*82
  
  \time 3/4
  R2.*15
  
  \time 2/4
  R2*26 r4
  \key f \major
  c4. a16 (g) |
  f8. (e16 f8 g) |
  c, c r a' |
  \slashedGrace { a8 ( } g2 ~) |
  g4 r |
  R2*2
  c,4. e16 (f) |
  a8 g r \slashedGrace { a8 ( } g) |
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
  
  
}

nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  \partial 4 c8. a16 |
  g2 ~ |
  g ~ |
  g8 g e' (d) |
  c2 ~ |
  c4 b8. b16 |
  c4 a16 (c) a (g) |
  \slashedGrace { e8 ( } f4.) a8 |
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
  c4 \bar "|." \break
  
  \partial 4 r4
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
  }
  \alternative
  {
    {
      r d d4 ~ |
      d8 c4 a8 |
      b2 |
      c4. g8
    }
    {
      r8 d d4 ~ |
      d8 c4 b8 |
      c2 ~ |
      c ~ |
      c8 \fermata
    }
  }
  \bar "|" \break
  
  \key ef \major
  r4. |
  \repeat volta 2
  {
    r8 c' r c |
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
  c8 c4. r4 \bar "|." \break
  
  \key f \major \time 2/4
  \set Timing.beatStructure = #'(1 1)
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
  
}

nhacPhienKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 2/4
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
  r4 r8 a |
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
  
}

nhacPhienKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key c \major \time 2/4
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
  r4 r8 f |
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
  r af16 af c8 d16 c |
  b!8 r r c16 c |
  f,8 f g4 |
  r8 g16 g c,8 c |
  f4 ef |
  f8. f16 f8 g |
  af (f) g,4 |
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
  a (g a) bf |
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
  
}

% Lời phiên khúc
loiPhienKhucSolo = \lyrics {
  \set stanza = " Solo:"
  Hỡi (ơ) Mẹ hiền (mà) Trái Đất.
  Mẹ (ơ) dưỡng nuôi ôm ấp
  Mẹ chở cả loài người.
  Mẹ sinh hoa (ơ) đồng nội tươi đẹp lắm (ơ) Mẹ ơi!
  Sáng danh Chúa Mẹ ơi, sáng danh Chúa (ơ) Mẹ ơi,
  sáng danh Chúa (ơ) Mẹ ơi!
  
  A, a ơi sáng danh Chúa, Chúa ơi!
  Mẹ chở cả loài người.
  A, a ơi, a ơi.
  A, a ơi Mẹ dưỡng sinh ngũ cốc
  sáng danh Mẹ ơi, sáng danh Chúa (ơ) Mẹ ơi,
  sáng danh a, a ơi!
  sáng danh Chúa (ơ) Mẹ ơi!
  
  Sáng danh Chúa, Chúa ơi!
  Ai người trên dương trần thoát khỏi tay chị.
}

loiPhienKhucSop = \lyrics {
  Chúa muôn cao
  Ngài thánh thiện.
  Vạn lời kinh chỉ ca tụng Chúa thôi,
  vinh danh tôn đức, vinh danh tôn đức muôn đời,
  vinh danh muôn đời.
  Kêu tên Chúa Cả, kêu tên Chúa Cả
  ai người xứng danh, ai người xứng danh?
  Tôn huynh Mặt Trời hỡi tôn huynh Mặt Trời
  sáng danh Chúa, Chúa ơi!
  Mỗi ngày anh sáng soi, anh chiếu rạng huy hoàng,
  anh chiếu rạng huy hoàng sáng đẹp khắp trần gian.
  Anh mang uy danh Chúa,
  anh mang uy danh Chúa khắp cõi trời cao sang.
  
  sang.
  
  Hỡi chị Trăng, chị Sao
  sáng danh Chúa biết bao.
  Trăng Sao kiều diễm quá, Trăng Sao kiều diễm quá
  lung linh trên trời cao. Hỡi chị...
  lung linh trên trời cao.
  
  Hỡi anh Gió, chị Mây
  sáng danh Chúa nhân thay trời cao
  gió mây chuyển khiến trời đất vần xoay,
  khiến trời đất vần xoay
  bảo toàn loài Chúa dựng anh chị giúp mỗi ngày.
  ngày.
  
  Chị Nước mênh mông, hỡi chị Nước mênh mông
  tung hô Chúa vạn lòng.
  Tung hô, tung hô Chúa vạn lòng tung hô Chúa.
  Chị Nước mênh mông, chị trong ngần quý giá
  lợi ích thật vô song, lợi ích thật vô song.
  
  Hỡi anh Lửa rạng ngời sáng danh Chúa, Chúa ơi!
  Anh dẹp tan bóng tối,
  anh dẹp tan bóng tối,
  anh sưởi ấm bao người.
  Tinh thần anh bất khuất,
  tinh thần anh bất khuất,
  anh đẹp rền vạn đời người người cùng ngưỡng mộ.
  Hỡi anh Lửa của tôi ơi, hỡi anh Lửa của tôi ơi!
  
  (Đàn...) __ _ _ _ _ _ _ _
  
  A, a ơi sáng danh Chúa, Chúa ơi!
  Mẹ chở cả loài người.
  A, a ơi, a ơi.
  A, a ơi Mẹ dưỡng sinh ngũ cốc
  sáng danh Mẹ ơi, sáng danh Chúa (ơ) Mẹ ơi,
  sáng danh a, a ơi.
  
  Người tha thứ cho người (mà) sáng danh Chúa, Chúa ơi!
  Chỉ vì lòng mến Chúa đau khổ coi như chơi.
  Phúc cho người trung kiên vui lẽ sống bình yên,
  vui lẽ sống bình yên.
  Được Chúa muôn cao trọng thưởng,
  trọng thưởng sáng chói, sáng chói vạn triều thiên.
  
  Sáng danh Chúa, Chúa ơi!
  Ai người trên dương thế thoát khỏi tay chị.
  Phúc cho ai giờ vĩnh quyết trọn ý Cha trên trời.
  Không bị hại bởi sự chết đời đời.
  
  Hỡi muôn loài muôn vật,
  hỡi muôn loài muôn vật
  ca tụng Đức Chúa Trời
  nào hãy ca tụng Đức Chúa Trời.
  Lời sáng tôn danh đức, sáng danh tôn đức.
  Câu cảm tạ trên môi, Chúa ơi!
  Câu cảm tạ trên môi suốt cuộc đời khiêm hạ.
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
  
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
  Tôn huynh Mặt Trời hỡi tôn huynh Mặt Trời
  sáng danh Chúa, Chúa ơi!
  Mỗi ngày anh sáng soi, anh chiếu rạng huy hoàng,
  anh chiếu rạng huy hoàng sáng đẹp khắp trần gian.
  Anh mang uy danh Chúa,
  anh mang uy danh Chúa khắp cõi trời cao sang.
  
  sang.
  
  Hỡi chị Trăng, chị Sao
  sáng danh Chúa biết bao.
  Kiều diễm quá, yêu kiều lạ
  lung linh nền trời cao.
  lung linh trên cao. lung linh, lung linh trên cao.
  
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
  
  Hỡi anh Lửa rạng ngời, chói ngời sáng danh Chúa, Chúa ơi!
  Anh dẹp tan bóng tối,
  anh dẹp tan bóng tối,
  anh sưởi ấm bao người.
  Tinh thần anh bất khuất,
  tinh thần anh bất khuất,
  anh đẹp rền vạn đời người người cùng ngưỡng mộ.
  Hỡi anh Lửa của tôi ơi, hỡi anh Lửa của tôi ơi!
  
  A, a ơi sáng danh Chúa, Chúa ơi!
  Mẹ chở cả loài người.
  A, a ơi, a ơi.
  A, a ơi Mẹ dưỡng sinh ngũ cốc
  sáng danh Mẹ ơi, sáng danh Chúa (ơ) Mẹ ơi,
  sáng danh a, a ơi.
  
  Người tha thứ cho người, Chúa ơi!
  Chỉ vì lòng mến Chúa, Chúa ơi,
  Chúa ơi coi đau khổ như chơi.
  Phúc cho người trung kiên,
  trung kiên vui lễ sống bình yên,
  vui lẽ sống bình yên.
  Được Chúa muôn cao trọng thưởng,
  đây Chúa Chúa trọng thưởng triều thiên rạng chói,
  sáng chói vạn triều thiên.
  
  Sáng danh Chúa, Chúa ơi!
  Ai người trên dương thế thoát khỏi tay chị.
  Phúc cho ai giờ vĩnh quyết trọn ý Cha trên trời.
  Không bị hại bởi sự chết đời đời.
  
  Hỡi muôn loài muôn vật,
  hỡi muôn loài muôn vật
  ca tụng Đức Chúa Trời
  nào hãy ca tụng Đức Chúa Trời
  nào hãy ca tụng
  ca tụng Chúa Trời.
  Lời sáng danh tôn đức, tôn đức, sáng danh tôn đức.
  Câu cảm tạ trên môi Chúa ơi
  cảm tạ suốt cuộc đời khiêm hạ.
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
  
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi.
  
  Thờ phượng Chúa, thờ phượng một Chúa Ba Ngôi
  thờ phượng Chúa, Thiên Chúa Ba Ngôi.
}

loiPhienKhucBas = \lyrics {
  Chúa muôn cao quyền năng
  Ngài thánh thiện.
  Vạn lời kinh ân tình chỉ ca tụng mà thôi.
  Vinh danh tôn đức, vinh danh tôn đức muôn đời,
  vinh danh muôn đời.
  Kêu tên Vua Cả, kêu tên Vua Cả lừng danh
  ai người xúng danh lừng danh?
  
  Hỡi tôn "huynh (i a)" Mặt Trời,
  hỡi tôn huynh hỡi Mặt Trời vanh danh của Chúa ơi!
  Muôn loài Chúa tạo thành
  ánh sáng "soi (i a)" mỗi ngày,
  rạng soi huy hoàng,
  rạng soi huy hoàng sáng đẹp cả trần gian.
  Anh mang uy danh Ngài
  này anh mang uy danh Chúa rạng soi tới trời cao sang.
  Hỡi tôn...
  sang.
  
  Hỡi chị Trăng, chị Sao sáng danh Ngài là bao.
  Yêu kiều lạ, yêu kiều lạ
  lung linh nền trời cao.
  lung linh trên trời cao, lung linh, lung linh trên cao.
  
  Hỡi anh Gió, chị Mây sáng danh Chúa nhân thay,
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
  
  Hỡi anh lửa rạng ngời, rạng ngời sáng danh Chúa người ơi!
  Anh dẹp tan bóng tối,
  anh dẹp tan bóng tối sưởi ấm bao người.
  Tinh thần anh bất khuất,
  tinh thần anh bất khuất đẹp rền vạn đời
  người người cùng ngưỡng mộ.
  Hỡi anh Lửa của tôi ơi,
  hỡi anh Lửa của tôi ơi!
  
  A, a, ơi vang danh Cả Chúa ơi!
  Mẹ chở cả loài người.
  A, a ơi, a ơi.
  A, a ơi Mẹ dưỡng sinh thảo mộc
  rạng danh Mẹ ơi, sáng danh (ơ) Mẹ ơi,
  rạng danh a, a ơi!
  
  Người tha thứ cho người (mà) người ơi (ơ) người ơi!
  Chỉ vì lòng mến Chúa đau khổ coi như chơi Chúa ơi!
  Phúc cho người trung kiên
  người trung kiên hưởng bình yên sống vui,
  sống vui,
  sống đời vĩnh yên.
  Họ được Chúa muôn cao trọng thưởng,
  muôn cao trọng thưởng, trọng thưởng
  dọi lên rạng chói ánh triều thiên.
  
  Sáng danh Chúa người ơi!
  Ai người trên dương trần thoát khỏi bàn tay chị.
  Khốn cho ai tử biệt lệ thống hối chẳng rơi.
  Người ấy không bị hại bởi chết đời đời.
  
  Hỡi muôn loài muôn vật,
  hỡi muôn loài muôn vật, hỡi muôn loài ca chúc mọi nơi
  ca tụng, ca tụng Chúa Trời.
  Lời sáng danh tôn đức
  chân thực rạng danh chân thực.
  Câu cảm tạ trên môi, cảm tạ trên môi
  trọn đời phục hạ.
  Thờ phượng Chúa cùng thờ phượng Vua Cả Ba Ngôi.
  Suốt cuộc đời khiêm hạ
  cùng thờ phượng Vua Cả Ba Ngôi.
  Này...
  hạ cùng thờ phượng Vua Cả Ba Ngôi
  thờ phượng Chúa, Thiên Chúa Ba Ngôi.
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
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
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
