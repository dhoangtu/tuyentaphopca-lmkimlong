% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ngày Về" }
  composer = "Thơ: Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSolo = \relative c' {
  \key f \major \time 2/4
  r4
  R2*7
  r4 r8 d16 e |
  f4. e8 |
  e g4 a8 |
  a4. g16 f |
  e4. a,8 |
  e' f4 e8 |
  d2 ~ |
  d4 r8 d16 g |
  d4. g8 |
  bf bf4 g8 |
  a4. e16 e |
  e4. f8 |
  a, d cs (d) |
  e2 ~ |
  e4 r |
  R2*25
  
  \key c \major
  r4 r8 g16 a |
  f4. e8 |
  g g c, (d) |
  e4. e16 e |
  a4. d,8 |
  e a,4 a8 |
  \slashedGrace { a ( } b4) r8 b'16 gs |
  e4. e8 |
  b e4 gs8 |
  a2 ~ |
  a4 r8 g16 c, |
  c4. e8 |
  e f4 d8 |
  e4 e8 e16 (a) |
  b4. b8 |
  b a4 d8 |
  e2 ~ |
  e4
  
  <<
    {
      c8 d |
      e4. c8 |
      d d (c) a
    }
    {
      a8 b |
      c4. a8 |
      b b (a) f
    }
  >>
  
  <<
    {
      \voiceOne
      \slashedGrace { a8 ^( } d4) \slashedGrace { b8 ^( } c8) b16 ^(a) |
      
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      \slashedGrace { f8 _( } e4) e8 d |
    }
  >>
  \oneVoice
  <<
    {
      e4. e8 |
      d f4 e8 |
      a2 ~ |
      a4 a8 b |
      b4. b8 |
      d c4 f8 |
      e4
    }
    {
      c,4. c8 |
      b d4 d8 |
      c2 ~ |
      c4 f8 d |
      e4. e8 |
      b' a4 d8 |
      c4
    }
  >>
  <<
    {
      \voiceOne
      d16 (c) a8 |
      \slashedGrace { a8 ^( } c4) b16 ^(a) d,8 |
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      f8 f |
      \slashedGrace { f8 _( } e4) d8 b |
    }
  >>
  \oneVoice
  <<
    {
      e4. a8 |
      b2
    }
    {
      c,4. f8 |
      e2 \bar "||" \break
    }
  >>
  
  r4
  R2*13
  r4
  
  e16 (f) e8 |
  a4. d,8 |
  d f4 e8 |
  e4 c8 d |
  b4. a8 |
  a d4 e8 |
  f2 ~ |
  f4 f16 (a) d,8 |
  e4. b'16 (c) |
  b8 a4 d8 |
  e4 r8 f16 f |
  d4. c8 |
  e4 c8 b |
  b4 r8 d16 d |
  c4. b8 |
  b gs4 a8 |
  e4.
  r4.
  R2.*8
  R2*55
  r4
  
  \key f \major
  r8 e a g16 (a) |
  d,4. e16 e |
  a2 |
  r8 a f d |
  e4 r8 g16 a |
  r8 \slashedGrace { c,8 ( } d4.) \bar "||" \break
  a'4. bf16 g |
  g4. d'16 g, |
  a4 \tuplet 3/2 { f'8 d d } |
  e4. cs16 cs |
  d2 ~ |
  d4 r8 a16 a |
  bf4 \tuplet 3/2 { e,8 e g } |
  a2 |
  r8 g f a |
  g (f) r e16 f |
  \slashedGrace { c8 ( } d2 ) ~ \bar "||"
  d8 a'16 (bf) a8 a |
  d g,4 a8 |
  a2 |
  r8 fs16 (e) a8 d, |
  d \bar "||" \break
}

nhacPhienKhucSop = \relative c'' {
  \key f \major \time 2/4
  \partial 4 r8 d |
  <d g, f>8. d16 c8 d |
  \repeat volta 2 {
    <a g c,> <a g c,> r a |
    d,8. a16 d8 f |
    <g f d bf> <g f d bf> r8 \bar "" \break
    a |
    g8. a16 e8 c |
    d4 r8 a' |
    g8. a16 e8 c | \break
    d4 r |
    r8 a' g4 ~ |
    g8. a16 e8 c |
    d4 r |
    r8 bf' a r |
    R2
    r8 f bf bf |
    a4 r |
    r8 a g4 ~ |
    g r8 d' |
    c8. d16 bf4 |
    a r |
    R2
    r8 bf r bf |
    a4 r8 d,16 e | \break
    f4. e8 |
    bf' e,4 a8 |
    a4. g16 a |
    f4. e8 |
    g f4 e8 |
    d4 r8 f16 c |
    c4. f8 |
    e e f (g) |
    a4 d8 c |
    c4. c8 |
    bf4 d8 bf |
    a2 ~ |
    a4 e8 e |
    e4. g8 |
    a4 a8 e
  }
  \alternative {
    {
      r4 r8 d' |
      d8. d16 c8 d
    }
    {
      r4 r8 d |
      d8. d16 c8 d |
      <a g c,>8 <a g c,> r a |
      <a e c>8. a16 g8 a |
      
      \key c \major
      <e d b> <e d b> r e |
      c' b g8. b16 |
      a4 r8 e |
      c' b g8. b16 | \break
      a4 r |
      R2*2
      r8 b g b |
      a4 r |
      R2 |
      r8 d b d |
      c4 r |
      r b |
      a d8 d |
      c4 r |
      R2
      r8 d c b |
      c4 r |
      r8 d b d |
      e r c r |
      r a gs a |
      b4 \bar "||"
    }
  }
  \break
  r4
  R2*13
  
  \partial 4 g8 g |
  g4. g8 |
  a8 a f4 |
  e f8. f16 |
  d8 d r a |
  d4 c8 (d) |
  e2 ~ |
  e4 \slashedGrace { e8 ( } f8) d |
  e4. a8 |
  a gs4 a8 |
  b4 b8 b |
  b4. b8 |
  e e4 b8 |
  a2 ~ |
  a4 \bar "||" \break
  
  r4
  R2*15
  r4. \bar "||" \break
  
  \time 3/4 \key a \major
  \repeat volta 2 {
    \partial 4. cs8. d16 d8 |
    b4. b8. cs16 cs8 |
    a4. e8 fs e |
    a4 gs8 b4. ~ |
    b4. d8. e16 e8 |
    cs4. cs8. d16 d8 |
    b4. e8 fs e |
    b4 gs8 a4. ~ |
  }
  \alternative {
    {
      a4 r8 e a b
    }
    {
      \time 2/4
      \set Staff.printKeyCancellation = ##f
      a4 \repeatTie r8 a16 a \bar "||"
    }
  }
        
  \key f \major
  <g d c>8 a f8. d16 |
  <d' g, f>8 <d g, f> r d16 d |
  <c g e>8 d a8. d,16 |
  <g f d bf>8 <g f d bf> r g16 a |
  d8 \bar "" \break
  d4 c8 |
  d2 |
  r8 a4 g8 |
  a2 ~ |
  a4 r |
  R2 |
  r4 \tuplet 3/2 { d8 bf g } |
  a4 r8 a16 bf |
  bf4 r8 g |
  g r \tuplet 3/2 { g e g } |
  a4 \tuplet 3/2 { e8 f e } |
  d2 ~ |
  d4 r |
  r \tuplet 3/2 { c'8 c c } |
  d4 r |
  r8 bf a r |
  r d c r |
  r4 r8 c |
  d r \tuplet 3/2 { bf bf bf } |
  a4 r8 d |
  d r c d |
  a4 r8 a |
  d,8 f4 g8 |
  g4 r8 g |
  g r f g |
  d4 r8 d' |
  a c4 d8 |
  d2 ~ |
  d4 r |
  R2
  a8 r r bf |
  g r r d' |
  d2 ~ |
  \partial 4 d4 \bar "||" \break
  
  \key d \major
  R2
  r8 e16 (fs) e8 d |
  cs4. d8 |
  b4. a8 |
  g e e g |
  a bf4 bf8 |
  a2 ~ |
  a4 r |
  R2*3
  e8 e r g |
  a2 |
  r8 d4 b8 |
  \slashedGrace { b8 ( } a2) |
  r8 a4 fs8 |
  \slashedGrace { fs8 ( } e2) \bar "||" \break
  
  R2*21
  r8
  \key d \major
  d'4 d8 |
  \slashedGrace { b8 ( } a2) |
  r8 a4 a8 |
  \slashedGrace { fs8 ( } e2) ~ |
  e4 r |
  R2*13 \break
  R2
  r4 g8 fs ~ |
  fs e4 e8 |
  a4 a8 b
  \repeat volta 2 {
    b4. d8 |
    d (b16 a) fs8 g |
    a4 g8 g |
    fs4. e8 |
    cs cs4 e8
  }
  \alternative {
    {
      d4 a'8 b
    }
    {
      d,2 ~ |
      d4 r |
      R2 
    }
  }
}

nhacPhienKhucAlto = \relative c'' {
  \key f \major \time 2/4
  r4
  R2*3
  r4 r8 a |
  g8. a16 e8 c |
  d4 r8 d |
  d8. f16 c8 a | \break
  a4 r |
  r8 a' g4 ~ |
  g8. a16 e8 c |
  d4 r |
  r8 e cs r |
  R2
  r8 f g g |
  f4 r |
  r8 f d4 ~ |
  d r8 g |
  e8. f16 d4 |
  cs r |
  R2
  r8 e r d |
  cs4 r8 d16 e |
  f4. e8 |
  bf' e,4 a8 |
  a4. g16 a |
  f4. e8 |
  g f4 e8 |
  d4 r8 f16 c |
  c4. d8 |
  a a d4 |
  c f8 e |
  e4. e8 |
  d4 g8 f |
  e8. f16 e8 (d) |
  cs2 ~ |
  cs8 cs d e |
  f4 e8 cs |
  d2 ~ |
  d4 r |
  d2 ~ |
  d4 r |
  R2*2
  
  \key c \major
  r4 r8 e |
  c' b g8. b16 |
  a4 r8 c, |
  f4 e8. d16 |
  c4 r |
  R2*2
  r8 d e d |
  c4 r |
  R2
  r8 b' a gs |
  a4 r |
  r e8 (d) |
  c4 f8 f |
  e4 r |
  R2
  r8 f a f |
  e4 r |
  r8 f a a |
  gs r a r |
  r e d f |
  e4
  
  r4
  R2*13
  
  g8 g |
  g4. g8 |
  a a d, (c) |
  b4 f'8. f16 |
  d8 d r a |
  d4 c |
  b2 ~ |
  b4 \slashedGrace { e8 ( } f8) d |
  e4. e8 |
  e e4 f8 |
  e4 b'8 b |
  d,8 d e d |
  a' a4 g8 |
  e2 ~ |
  e4
  
  r4
  R2*15
  r4.
  
  \time 3/4 \key a \major
  a8. fs16 a8 |
  gs4. fs8. es16 gs8 |
  fs4. cs8 cs b |
  cs4 d8 e4 a8 |
  gs4. fs8. b16 b8 |
  a4. e8. a16 fs8 |
  e4. cs8 cs cs |
  fs (e) d cs4. ~ |
  cs4 r2
  
  \time 2/4
  cs4 \repeatTie r4
  \set Staff.printKeyCancellation = ##f
  
  \key f \major
  R2*4
  r8
  a'4 a8 |
  f2 |
  r8 d4 d8 |
  c2 ~ |
  c4 r |
  R2
  r4 \tuplet 3/2 { d'8 bf g } |
  a4 r8 a16 bf |
  bf4 r8 g |
  g r \tuplet 3/2 { g e g } |
  a4 \tuplet 3/2 { e8 f e } |
  d2 ~ |
  d4 r |
  r4
  <<
    {
      \tuplet 3/2 { g8 g g } |
      f4 r |
      r8 g e r |
      r g a r |
      r4 r8 g |
      a r \tuplet 3/2 { g g g } |
      f4
    }
    {
      \tuplet 3/2 { e8 e e } |
      d4 r |
      r8 d c r |
      r d f r |
      r4 r8 e |
      f r \tuplet 3/2 { d8 c c } |
      d4
    }
  >>
  r8 g |
  bf r a g |
  e4 r8 c |
  d d4 f8 |
  e4 r8 b! |
  c r d c |
  b!4 r8 bf |
  c e4 e8 |
  d2 ~ |
  d4 r |
  R2
  f8 r r f |
  d r r g |
  fs2 ~ |
  \partial 4 fs4
  
  \key d \major
  R2
  R2
  r8 a fs16 (e) d8 |
  d e b (d) |
  e b b e |
  fs d4 d8 |
  cs2 ~ |
  cs4 r |
  R2*3
  e8 e r g |
  a2 |
  r8 fs4 d8 |
  cs2 |
  r8 cs4 d8 |
  b2
  R2*21
  r8
  
  \key d \major
  a'4 b8 |
  e,2 |
  r8 e4 fs8 |
  b,2 ~ |
  b4 r |
  R2*12
  
}

nhacPhienKhucBas = \relative c {
  \key f \major \time 2/4
  r4 |
  <d' a d,>8 r r4 |
  a8 a, r4 |
  <f' d c d,>8 r r4 |
  g8 g, r a' |
  g8. a16 e8 c |
  d4 r8 <f d> |
  <g g,>4 <g a,> |
  <f d>4 r |
  r8 f g4 ~ |
  g8. a16 <g a,>4 |
  <f d> r |
  r8 g a r |
  R2
  r8 d, bf g |
  d'4 r |
  r8 f g4 ~ |
  g r8 bf |
  a8. f16 g4 |
  a r |
  R2
  r8 g r g |
  a4 r8 d,16 e |
  f4. e8 |
  bf' e,4 a8 |
  a4. g16 a |
  f4. e8 |
  g f4 e8 |
  d4 r8 f16 c |
  c4. d8 |
  c c d4 |
  a g8 a |
  c4. c8 |
  g'4 g8 g |
  a2 ~ |
  a ~ |
  a8 g f e |
  d4
  <<
    {
      \voiceOne
      e8 _(g) |
      f2 ~ |
      f4
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      a,4 |
      d2 ~ |
      d4
    }
  >>
  \oneVoice
  r4 |
  <f d>2 ~ |
  <f d>4 r |
  a8 a, r4 |
  <a' e d a>8 r r4 |
  
  \key c \major
  <g e>8 <g e,> r e |
  c' b g8. b16 |
  a4 r8 a |
  <a d,>4
  <<
    {
      \voiceOne
      e8. g16
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e4
    }
  >>
  \oneVoice
  <a a,>4 r |
  R2*2
  r8 g e g |
  a4 r |
  R2
  r8 d, f e |
  a4 r |
  r e |
  f d8 d |
  a'4 r |
  R2
  r8 d, f g |
  c,4 r |
  r8 d f f |
  e r d r |
  r c' b a |
  <gs e>4
  r4
  R2*13
  
  \partial 4 g8 g |
  g4. g8 |
  a a <a d,>4 |
  <gs e> f8. f16 |
  d8 d r a' |
  <a f>4 <a f> |
  <gs e>2 ~ |
  <gs e>4 \slashedGrace { e8 ( } f8) d |
  e4. c'8 |
  c b4 a8 |
  gs4 r |
  b8 a g <b f> |
  <<
    {
      \voiceOne
      c4 d
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e,4. e8
    }
  >>
  \oneVoice
  <c' a,>2 ~ |
  <c a,>4
  
  r4
  R2*15
  r4.
  
  \time 3/4 \key a \major
  a8. d,16 d8 |
  e4. d8. cs16 cs8 |
  fs4. a8 a gs |
  fs4 f!8 e8. gs16 b8 |
  e4. b8. gs16 gs8 |
  a4. a8. fs16 fs8 |
  gs4. a8 a a |
  d,4 e8 <e a,>4. ~ |
  <e a,>4 r2
  <e a,>4 \repeatTie r4
  
  \set Staff.printKeyCancellation = ##f
  \key f \major
  <bf' g>8 r8 r4 |
  <a d,>8 d,, r4 |
  <a'' a,>8 r r4 |
  a8 a, r4 |
  r8 
  
  f'4 g8 |
  d2 |
  r8 f4 bf8 |
  a2 ~ |
  a4 \tuplet 3/2 { a8 g a } |
  a4 \tuplet 3/2 { a8 f c } |
  d2 ~ |
  d8 <g a,> <f d> r |
  r <d' d,> <bf g> r |
  r <b! g> <c e,> r |
  r <d, bf> <g cs,>4 |
  <d bf> r8 <bf' g> |
  <a f> r c, d |
  a4. a8 |
  f'4 \tuplet 3/2 { d8 bf' a } |
  g4 r8 \slashedGrace { g8 ( } a8 ) |
  f4. f16 e |
  a4 \slashedGrace { g8 ( } \tuplet 3/2 { a8) f e } |
  d2 ~ |
  d4 r8 f |
  g r g g |
  a4 r8 a |
  bf bf4 b!8 |
  c4 r8 g |
  d r f f |
  g4 r8 g |
  a a4 g8 |
  f4 r8 g |
  g f4 g8 |
  e4 r8 e |
  d r d <d' d,> |
  <bf g> r r <bf g> |
  <a d,>2 ~ |
  <a d,>4
  
  \key d \major
  r8 d b16 (a) g8 |
  g a e (g) |
  a4. fs8 |
  g4. fs8 |
  e g4 e8 |
  d g4 g8 |
  a2 ~ |
  a8 a g a |
  <d bf>2 |
  r8 <a f!>4 <a f!>8 |
  <bf g>2 ~ |
  <bf g>4 r4 |
  R2
  r8 d,4 g8 |
  a2 |
  r8 <a a,>4 <a d,>8 |
  <gs e>2
  
  R2*21
  r8
  
  \key d \major
  <fs' d,>4 <d g,>8 |
  <cs a>2 |
  r8 <cs a,>4 <a d,>8 |
  <gs e>2 ~ |
  <gs e>4 r8 e |
  e4. a16 a |
  cs,4. d16 (e) |
  a,4 \tuplet 3/2 { cs8 d e } |
  e4. d16 g |
  g2 ~ |
  g4 \tuplet 3/2 { d'8 b b } |
  \slashedGrace { b8 ( } d4.) fs,16 g |
  a4 \slashedGrace { a8 ( } \tuplet 3/2 { b8) g g } |
  e4. e16 fs |
  d2 ~ |
  d4 r8 cs16 d |
  b4 \tuplet 3/2 { b8 cs b } |
  a2 \bar "||"
  r8 cs (d) fs |
  e4 g8 fs ~ |
  fs e4 e8 |
  a4 d,8 g |
  g4. fs8 |
  b4. bf8 |
  a4 a8 a |
  d,4. e8 |
  <e a,> <a a,>4 <g a,>8 |
  <fs d>4 d8 g |
  <fs d>2 ~ |
  <fs d>4 
  
}

% Lời phiên khúc
loiPhienKhucSolo = \lyrics {
  \set stanza = "Solo Nữ:"
  Người cha ấy chiều chiều ra trước ngõ ngóng trông con
  lòng se lắng nhớ thương
  Cặp mắt già qua nhỡn kính
  sầu vương từng giọt lệ ngấn dài trên gò má.
  
  \set stanza = "Solo Nữ:"
  Tên phá tử một đêm xưa nài nẵng
  chia cho nó phần gia tài tổ sản
  Túi giang hồ mang nặng một mai sương
  Ươm tình đời trong hoa bướm ngàn phương
  Lìa tổ ấm say men nồng viễn xứ.
  
  \set stanza = "Song ca nữ:"
  Còn đâu nữa tình gia hương phụ tử
  đã héo rồi trong lòng kẻ cuồng điên.
  Một ra đi là sa đọa ngã nghiêng
  trong vực thẳm của lòng đời đen tối.
  
  \set stanza = "Solo (nam):"
  Bỏ nhà cha là hạnh phúc tan hoang
  là lao đầu vào vực sâu đen tối
  Gã rùng mình ớn lạnh triều thống hối
  Gã nắm tay thề quyết sửa nhịp đời
  Gã thét lên tiếng gã vọng xa vời
  
  \set stanza = "Solo (nữ):"
  Thằng Hai cảm động rưng rưng lệ
  Quỳ trước mặt cha ấp úng kể
  
  \set stanza = "Solo (nam):"
  Con đã phạm tội đến trời cao
  đến cả lòng cha đầy tình yêu
  Con không đang gọi là con nữa
  Xin xử với con như đứa ở
  Lão ông nghe nói gạt phăng ngay
  Gọi lớn người nhà
  
}

loiPhienKhucSop = \lyrics {
  \repeat unfold 14 { _ }
  Ơ __ \repeat unfold 11 { _ }
  Ơ __ \repeat unfold 5 { _ }
  ơ ơ
  se lắng nhớ thương
  ơ ơ ơ __ _ _ _ _
  ơ ơ ơ Người cha ấy càng nghĩ càng băn khoăn
  cho số phận của đứa con hoang dại
  Chút tình già hơn một lần tê tái
  Khóc thương con phiêu bạt đến bao giờ
  Để chiều chiều ra ngõ đứng mong
  (Đàn) __ \repeat unfold 4 { _ }
  (Đàn) __ \repeat unfold 13 { _ }
  ơ __ \repeat unfold 11 { _ }
  ơ __ _ _ _ ơ __ _ _ _
  Mang nặng những gió sương
  ơ __ _ _ _ ơ __ _ _ _ ơ ơ __ _ _ _
  
  Đêm hôm nay trong tiếng gió thở dài
  Dưới ánh trăng khuya mờ soi lạnh lẽo
  Gã bồi hồi tâm can buồn hắt héo
  Ôi đau thương là kiếp sống hoang đàng.
  
  Tôi sẽ chỗi dậy
  Tôi sẽ chỗi dậy và quay về cha từ ái
  Tôi sẽ chỗi dậy
  Tôi sẽ chỗi dậy và quay về với tình cha.
  (Đàn) __ _ _
  "_" (Đàn) __ \repeat unfold 18 { _ }
  A a A A a A
  Bóng ai đầu thôn đi lững thững
  tang thương như người hành khất trong vũng nắng vàng
  A \repeat unfold 13 { a }
  Ô hay mộng hay thực
  đang tỉnh hay trong mê
  Ô hay mộng hay thực
  đang tỉnh hay trong mê
  không
  đúng rồi chính hắn.
  Lão ông vội vàng
  Lão ông vội vàng chạy lại ôm con rất thiết tha.
  Nghẹn ngào ông nói:
  Hỡi con cha hỡi con cha
  
  Ớ chúng bay ớ chúng bay
  Chúng ta cùng mừng rỡ
  Này con ông đã chết lại hồi sinh
  Đã mất đi nay gặp lại an bình
  Này con
  bình
  Ngoài trời sắc nắng cũng thắm lên
  Tiếng chim ríu rít dậy đầy thềm
  (Đàn) __ _ _
  Ngoài trời sắc nắng cũng thắm lên
  Tiếng chim ríu rít dậy đầy thềm.
}

loiPhienKhucAlto = \lyrics {
  Ơ __ \repeat unfold 11 { _ }
  Ơ __ \repeat unfold 5 { _ }
  ơ ơ
  se lắng nhớ thương
  ơ ơ ơ __ _ _ _ _
  ơ ơ ơ Người cha ấy càng nghĩ càng băn khoăn
  cho số phận của đứa con hoang dại
  Chút tình già hơn một lần tê dại
  Khóc thương con phiêu
  bạt đến bao giờ đến bao giờ
  chiều chiều ra ngõ đứng mong chờ.
  chờ
  ơ __ \repeat unfold 10 { _ }
  ơ __ _ _ _ ơ __ _ _ _
  Mang nặng những gió sương
  ơ __ _ _ _ ơ __ _ _ _ ơ ơ __ _ _ _
  
  Đêm hôm nay trong tiếng gió thở dài
  Dưới ánh trăng khuya mờ soi lạnh lẽo
  Gã bồi hồi tâm can buồn hắt héo
  Ôi đau thương đau thương là kiếp sống hoang đàng.
  
  Tôi sẽ chỗi dậy
  Tôi sẽ chỗi dậy và quay về cha từ ái nhân ái.
  Tôi sẽ chỗi dậy
  Tôi sẽ chỗi dậy và quay về với tình cha.
  
  "_" A a A A a A
  Bóng ai đầu thôn đi lững thững
  tang thương như người hành khất trong vũng nắng vàng
  A \repeat unfold 13 { a }
  Ô hay mộng hay thực
  đang tỉnh hay trong mê
  Ô hay mộng hay thực
  đang tỉnh hay trong mê
  không đúng rồi chính hắn.
  Lão ông vội vàng tung cửa ra
  chạy lại ôm con rất thiết tha
  Nghẹn ngào ông nói:
  Hỡi con cha
  hỡi con cha
  
  Ớ chúng bay ớ chúng bay
  Chúng ta cùng mừng rỡ
  Này con ông đã chết lại hồi sinh
  Đã mất đi nay gặp lại an bình
  Này con
  bình
  Ngoài trời sắc nắng cũng thắm lên
  Tiếng chim ríu rít dậy đầy thềm
  (Đàn) __ _ _
  Ngoài trời sắc nắng cũng thắm lên
  Tiếng chim ríu rít dậy đầy thềm.
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 6 { _ }
  Ơ __ \repeat unfold 9 { _ }
  Ơ __ \repeat unfold 4 { _ }
  ơ ơ
  se nặng sầu thương
  ơ ơ ơ __ _ _ _ _
  ơ ơ ơ Người cha ấy càng nghĩ càng băn khoăn
  cho số phận của đứa con hoang dại
  Chút tình già hơn một lần tê dại
  Lòng thương con phiêu lãng ôi thương nhớ
  chiều chiều ra ngõ đợi chờ.
  chờ
  \repeat unfold 5 { _ }
  ơ __ \repeat unfold 10 { _ }
  ơ __ _ _ _ ơ __ _ _ _
  Mang nặng từng giọt sương
  ơ __ _ _ _ ơ __ _ _ _ ơ ơ __ _ _ _
  
  Đêm hôm nay trong tiếng gió thở dài
  Dưới ánh trăng khuya chiếu soi lạnh lẽo
  Gã bồi hồi tâm can buồn hắt héo
  Ôi đau thương kiếp sống hoang đàng.
  
  Tôi sẽ chỗi dậy
  Tôi sẽ chỗi dậy và quay về nhà về nhà cha thân ái
  Tôi sẽ chỗi dậy
  Tôi sẽ chỗi dậy và quay về lại quê
  <<
    {
      cha.
    }
    \new Lyrics {
      \set associatedVoice = "beBas"
      \override LyricText.font-shape = #'italic
      nhà.
    }
  >>
  \repeat unfold 7 { _ }
  A a a A a A
  Nắng gieo sắc tía
  Gió rộn đầy vườn
  A a A a A a A a a A a
  Con chích chòe đập cánh đầu ngõ hát vang
  Lão ông mang mục kính ngó thẳng ra đàng
  Ô hay mộng hay thức
  đang tỉnh hay trong mê
  ô hay mộng hay thức
  đang tỉnh hay trong mê
  Ai như thằng Hai về
  ô không
  mà thực rồi chính hắn
  Lão ông vội vàng tung cửa ra
  vội vàng vội vàng tới ôm con rất thiết tha
  Hai hàng nước mắt tuôn như suối
  Hỡi con cha
  hỡi con cha
  
  Ớ chúng bay ớ chúng bay
  \set stanza = " Solo (nam):"
  Nhanh đi lấy áo dài hảo hạng
  mặc cho con ông nhìn xứng đáng
  lấy thêm đôi nhẫn xỏ vào tay
  Lắp ngay cho cậu một đôi giầy
  Rồi ra chuồng chọn con me bự
  Mở yến đi Chúng ta cùng mừng rỡ
  Này con ông đã chết tái sinh
  Đã mất rồi nay gặp lại bình
  an Này con
  an
  (Đàn) __ _ _ _ _ _ _ _
  Ngoài trời sắc nắng cùng rực lên
  Lời chim ríu rít thấy đầy thềm
  Ngoài trời sắc nắng cũng rực lên
  Lời chim ríu rít thấy đầy thềm.
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
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
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
