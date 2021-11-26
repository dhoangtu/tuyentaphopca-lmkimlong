% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Giao Duyên" }
  composer = "Thơ dịch: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

nhacPhienKhucSop = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  
  r8 <d a f d>8 r d16 c |
  d8 g, <a f d>8. <bf g d>16 |
  <a f d>8 <a e c> r d16 c |
  d8 d, <g d>8. <a f>16 |
  <g f>8 <g e> r <g d> |
  <f d>8. <g d>16 <a d,>8 <e cs> ~ | \break
  <e cs>4 r4 |
  r a8. bf16 |
  a8 a r g |
  g4. g8 |
  f8. g16 a8 e ~ |
  e2 |
  d'8. d16 a8 a ~ |
  a2 |
  R2
  r4 g8. g16 |
  g8 e4 e8 |
  a8 (bf16 a) d8 d |
  cs2 ~ |
  cs8 a bf16 (a) g8 |
  a2 ~ |
  a4 r8 bf |
  g8. g16 g4 ~ |
  g2 |
  r8 d' e16 (d) cs8 |
  d2 ~ |
  d4 r8 bf |
  r8 bf d16 (bf) g8 |
  a4. a8 |
  d4 cs |
  d2 ~ |
  d4 r \break
  \bar ".|:"
  
  \key d \major
  R2
  r4 \tuplet 3/2 { b8 ^> b b } |
  b4 c!8. ^> _\f c16 |
  a8 a r fs' |
  e8. d16 cs8 cs |
  r e d8. cs16 |
  b8 b4. |
  r8 a4 b8 |
  cs8. cs16 \tuplet 3/2 { d8 ^> cs b } |
  b2 ~ |
  b4 f'!8. ^> _\ff f16 |
  d8 d r d |
  b8. (a16) e8 e |
  e4 r8 e' |
  c!8. (a16) fs8 fs |
  fs4 e8 d16 (e) |
  g4. a16 (g) |
  fs8 g4 a8 |
  \slashedGrace { \stemDown g16 ^(a } b2 ~) \stemNeutral |
  b4 c!8 c |
  a4. fs8 |
  c'! c4 cs8 |
  d2 ~ |
  
  \time 6/8
  d4 r8 r4. \bar "||" \break
  \key f \major
  R2.
  r4. bf8 ^> a ^> g ^> |
  bf ^> a ^> g ^> d'8. ^> d16 d8 |
  d r4 e8. ^> e16 e8 |
  e4. cs8. (d16) e8 | \break

  \key d \major
  a,8 ^> a ^> a ^> d4 e8 |
  fs4. e4 b8 |
  b cs a e'4 d8 |
  
  \time 2/4
  d2 ~ |
  d4 a8. b16 |
  b4. a8 |
  b e,4 g8 |
  \set Score.repeatCommands = #'((volta "1"))
  cs,4 ( d ~ |
  d4) r \bar ":|." \break
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  cs4 (d ~ |
  \set Score.repeatCommands = #'((volta #f))
  d8) b' c!16 (b) a8 \bar "||"
  
  \key g \major
  b2 ~ |
  b4 r8 d |
  a8. a16 a4 ~ |
  a2 |
  r8 e' fs16 (e) ds8 |
  e2 ~ |
  e4 r8 c |
  r c e16 (c) a8 |
  b4. b8 |
  e4 ds |
  e2 ~ |
  e4 r |
  R2
  c8 ^> r16 c16 c8 ^> b |
  d8. e16 c8 a |
  b2 ~ |
  b4 e8. e16 | \break
  
  \key a \major
  e8 cs e cs16 (b) |
  a2 ~ |
  a4 b8. b16 |
  b8 gs b gs16 (fs) |
  e4 r8. a16 |
  a8 ^> e r4 |
  r8. b'16 b8 ^> a |
  r4 d8 ^> r16 d16 |
  d8 ^> cs4 r8 |
  b8. b16 e8 ^> e ^> |
  r fs,4 gs8 |
  a2 ~ |
  a ~ |
  a4 r8
  %-\markup { \lower #3 \halign #-0.2  \bold "Solo:" }
   \bar "||" \break
  %\bar "||"
  a |
  fs4. fs8 |
  b b4 cs8 |
  d2 ~ |
  d8 gs, gs b |
  \slashedGrace { cs,8 ( } e4.) b'16 gs |
  a2 ~ |
  a4 \tuplet 3/2 { a8 gs a } |
  fs2 |
  r8 b4 cs8 |
  d2 ~ |
  d4 \tuplet 3/2 { gs,8 gs gs } |
  \slashedGrace { gs8 ( } b2) |
  r8 b,4 e8 |
  a2 ~ |
  a4 r
  \bar ".|:" \break
  
  cs8. e16 e8 cs16 (b) |
  a8 b4 fs8 |
  fs2 |
  fs8. fs16 e8 b' |
  a gs4 b8 |
  cs2 |
  r8 d4 ^> b8 |
  b4 r8 e8 ^> ~ |
  e a, a8. b16 |
  e,8 cs' ([d]) cs |
  b2 \bar ":|." \break
  
  r4. a16 a |
  fs4. fs8 |
  b8 \slashedGrace { cs,8 ( } d4) gs8 |
  a2 ~ |
  a ~ |
  a4 r \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  
  R2*7
  r4 f8. g16 |
  f8 f r f |
  e4. e8 |
  d8. e16 d8 cs ~ |
  cs2 |
  a'8. a16 g8 f ~ |
  f2 |
  R2
  r4 e8. e16 |
  d8 cs4 cs8 |
  d4 f8 f |
  e2 ~ |
  e4 r |
  r8 f r f |
  g16 (f) e8 f4 ~ |
  f8 r4 e8 |
  r e f16 (e) cs8 |
  d4 g16 (f) e8 |
  f2 ~ |
  f4 r8 g |
  r g a16 (g) e8 |
  f4. f8 |
  bf4 a8 (g) |
  fs2 ~ |
  fs4 r |
  
  \key d \major
  R2
  r4 \tuplet 3/2 { g8 ^> g g } |
  g4 c!8. ^> _\f c16 |
  a8 a r d |
  b8. b16 a8 a |
  r gs a8. a16 |
  d,8 d4. |
  R2
  r8 e r d |
  r g \tuplet 3/2 { fs8 ^> e ds } |
  e4 f!8. ^> _\ff f16 |
  d8 d r d |
  d4 d8 d |
  cs4 r8 e |
  e4 e8 e |
  ds4 r |
  b8 as b4 ~ |
  b8 b d4 ~ |
  d8
  \once \override NoteColumn.X-offset = 1 <>
  fs g e |
  d4 r |
  e8 e d d |
  e g4 g8 |
  g4 (a8 g |
  fs4) r8 r4. |
  
  \key f \major
  r4. f8 ^> e ^> d ^> |
  f ^> e ^> d ^> f8. ^> f16 f8 |
  e4. bf'8. ^> bf16 bf8 |
  a r4 a8. ^> a16 a8 |
  gs4. e4 d8 |
  
  \key d \major
  cs8 ^> e ^> g fs4 b8 |
  as4. b4 e,8 |
  e e e g4 g8 |
  
  \time 2/4
  fs2 ~ |
  fs4 a8. b16 |
  b4. a8 |
  b e,4 g8 |
  cs,4 (d ~ |
  d) r
  
  cs (d ~ |
  d) r \bar "||"
  
  \key g \major
  r8 g r g |
  a16 (g) fs8 g4 ~ |
  g8 r4 fs8 |
  r fs g16 (fs) ds8 |
  e4 a16 (g) fs8 |
  g2 ~ |
  g4 r8 a |
  r8 a b16 (a) fs8 |
  g4. g8 |
  c4 b8 (a) |
  gs2 ~ |
  gs4 a8 ^> r16 a16 |
  a8 ^> e a e ~ |
  e4 a8 ^> gs ~ |
  gs r e ^> r |
  r e ^> fs r16 fs16 |
  f!8 ^> e4. |
  
  \key a \major
  r8 e ^> r e ^> |
  cs r16 fs fs8 ^> e ~ |
  e4 fs8. fs16 |
  fs8 e e d |
  cs4 r8. e16 |
  e8 ^> d r4 |
  r8. gs16 gs8 ^> fs |
  r4 fs8 ^> r16 fs16 |
  fs8 ^> e4 r8 |
  e8. e16 d8 ^> cs ^> |
  r8 d4 d8 |
  cs2 ~ |
  cs ~ |
  cs4 r8 r
  %-\markup { \lower #3 \halign #-0.2  \bold "Ca đoàn:" }
  |
  r8 <d' b> ^> <cs a> ^> r |
  r4 <d fs,>8 ^> r |
  r <b fs> <a e> <fs d> |
  <e cs>2 ~ |
  <e cs>4 r |
  r \tuplet 3/2 { <d' fs,>8 <e a,> <d fs,> } |
  <cs d,>4 r |
  r \tuplet 3/2 { <fs b,>8 <e cs> <fs as,> } |
  <d b>4 r |
  r \tuplet 3/2 { <d fs,>8 <fs a,> <d a> } |
  <b gs>4 r |
  r \tuplet 3/2 { <gs e>8 <a fs> <gs e> } |
  <fs ds> r <gs e> r |
  r <a cs,> \tuplet 3/2 { <d fs,>8 <e a,> <d fs,> } |
  <cs e,>4 r
  
  e,8. e16 e8 e16 (d) |
  cs8 d4 d8 |
  cs2 |
  d8. d16 b8 e |
  e e4 gs8 |
  a2 |
  r8 a4 ^> a8 |
  gs4 r8 a ^> ~ |
  a g! fs8. e16 |
  e8 a ([b]) a |
  gs2
  
  <a fs>2 ^> ~ |
  <a fs\=2(> |
  <<
    {
      d4. (e16) d
    }
    {
      d,4\=2) \once \stemDown f!
    }
  >>
  \oneVoice
  <cs' e,>4 <d f,!> ^> _\sf ~ |
  <d f,!> <cs e,> ^> ~ |
  <cs e,> r \bar "|."
}

nhacPhienKhucBas = \relative c {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
  
  d8 r a r |
  r4. d8 |
  d <a' e a,> d, r |
  r4
  <<
    {
      \voiceOne g8. a16 |
      g8 g r4
    }
    \new Voice = "splitpart" {
	    \voiceTwo r8 bf, |
	    b! c cs4
    }
  >>
  \oneVoice
  d8 r r4 |
  <a' e a,>8 ^>
  %\once \override NoteColumn.X-offset = 0.5 <>
  
  \slashedGrace { g16 (} a4) ^> a,8 |
  d2 ~ |
  d4 b! |
  c8. g16 c8 (cs) |
  d4 r8 a' |
  a a bf (a16 g) |
  f4 r |
  r d8 f ~ |
  f8 e4 ^> g8 |
  a2 ~ |
  a4 a8. g16 |
  f8 (e) <a d,> <a d,> |
  <a a,>2 ~ |
  <a a,>4 r |
  r8 d r d |
  e16 (d) c8 d4 ~ |
  d8 r4 g,8 |
  r g a16 (g) e8 |
  f4 r |
  r a8. ^\f d16 |
  g,8 g4. ~ |
  g4 r |
  r8 d ^> f ^> d ^> |
  g,4 a |
  d2 ~ |
  d8 d4 e8 |
  
  \key d \major
  fs8. fs16 \tuplet 3/2 { g8 ^> fs e } |
  e2 ~ |
  e4 c'!8. ^> _\f c16 |
  a8 a r d, |
  g8. g16 a8 a |
  r e fs8. fs16 |
  g8 g4. |
  R2
  r8 a r b |
  r e, \tuplet 3/2 { a8 ^> a a } |
  g4 f!8. ^> _\ff f16 |
  d8 d r d |
  g4 g8 gs |
  a4 r8 e |
  a4 a8 as |
  b4 r |
  g8 fs g4 |
  d2 ~ |
  d8 d e fs |
  g4 r |
  c,!8 cs d d |
  a4 a |
  d2 ~ |
  d4 r8 b'8 ^> a ^> g ^>
  
  \key f \major
  bf ^> a ^> g ^> d8. ^> d16 d8 |
  d2. |
  g8 ^> a ^> bf ^> g8. ^> g16 g8 |
  fs r4 f!8. ^> f16 f8 |
  e4. a8. (bf16) gs8 |
  
  \key d \major
  a ^> a ^> a ^> b4 g8 |
  fs4. g4 g8 |
  gs a a a,4 a8 |
  
  \time 2/4
  d2 ~ |
  d4 a'8. b16 |
  b4. a8 |
  b e,4 g8 |
  cs,4 (d ~ |
  d8) e4 e8
  
  cs4 (d ~ |
  d) r
  
  \key g \major
  r8 e r e |
  fs16 (e) ds8 e4 ~ |
  e8 r4 b'8 |
  r b b16 (a) fs8 |
  g4 r |
  r b8. ^\f e16 |
  a,8 a4. ~ |
  a4 r |
  r8 e ^> g ^> e ^> |
  a,4 b |
  c2 ~ |
  c4 r |
  c'8 ^> r16 c c8 ^> a ~ |
  a4 a8 ^> e ~ |
  e r a8 ^> r |
  r b ^> <a d,> r16 <a d,> |
  <a d,>8 ^> <gs e>4. |
  
  \key a \major
  r8 <a a,> ^> r <gs e> |
  <a fs> r16 <a d,> <d d,>8 ^> <cs a> ~ |
  <cs a>4 <d d,>8. <d d,>16 |
  <b ds,>8 <b e,> <b e,> <b e,> |
  a2 ~ |
  a8 a fs16 (a) fs (e) |
  #(define afterGraceFraction (cons 1 2))
  d8 \afterGrace e4 ( {
    \override Flag.stroke-style = #"grace"
    d16) }
  \revert Flag.stroke-style
  a8 |
  a2 ~ |
  a4 r8 a' ^> |
  gs4. a8 |
  b4 e,8 e |
  <a e a,>2 ~ |
  <a e a,> ~ |
  <a e a,>4 r8 r |
  r8 b ^> fs ^> r |
  r4 b8 ^> r |
  r b, cs d |
  e2 ~ |
  e4 r |
  r \tuplet 3/2 { d8 cs d } |
  a'4 r |
  r \tuplet 3/2 { d,8 e cs } |
  b4 r |
  r \tuplet 3/2 { d8 d d } |
  e4 r |
  r \tuplet 3/2 { e8 ds e } |
  b8 r e r |
  r fs \tuplet 3/2 { d cs d } |
  a4 r \bar ".|:"
  
  a'8. a16 gs8 gs |
  a <gs e>4 <a fs>8 |
  <a fs>2 |
  <a d,>8. <a d,>16 <gs e>8 <gs e> |
  <a d,> <b e,>4 <e e,>8 |
  <e fs,>2 |
  r8 <fs d,>4 ^> <fs ds,>8 |
  <e e,>4 r8 <a, cs,>8 ^> ~ |
  <a cs,> <a cs,> <d d,>8. <b d,>16 |
  <a cs,>8 <e' a,,>4 <e a,,>8 |
  <e e,>2
  
  <cs\=1^( d,\=2_(> ^> |
  <<
    {
      cs4\=1) b8 a
    }
    {
      d,2\=2)
    }
  >>
  \oneVoice
  <gs e>2 |
  <a a,>4 <a d,> ^> _\sf ~ |
  <a d,> <a a,> ^> ~ |
  <a a,> r
}

loiPhienKhucSop = \lyrics {
  \markup { \lower #3.3 \halign #-0.3 \bold "Intr." }
  \repeat unfold 21 { _ }
  Mây nước yêu yêu,
  không gian trang hoàng như lễ trọng.
  Gió hết cô liêu.
  Si -- on yêu kiều lòng nở hoa hy vọng.
  Ai đến đàng xa,
  Sáng hơn sao xa.
  Ai đến đàng xa, ai, ai đến đàng xa
  đẹp hơn trời hoa.
  Mau đi em ơi, Xé bức khăn tang
  thắm lên vạn nụ cười, thắm lên vạn nụ cười.
  Nào Si -- on mau chóng đi em ơi!
  Xé bức khăn tang thăm lên vạn nụ cười,
  thắm lên vạn nụ cười,
  trang điểm mau đón mừng Vua cao cả.
  Đến với em cần chi xe song mã.
  Hỡi cửa thành hỡi cửa thành nâng cao mi lên,
  nâng cao mi lên để tiến vào một triều nguyên ánh sáng,
  Trăng hòa bình soi đồi núi Be -- lem.
  Và muôn phương thôi những ngày tao loạn.
  loạn.
  Ai đến đàng xa.
  Sáng hơn sao sa.
  Ai đến đàng xa.
  Ai, ai đến đàng xa đẹp hơn trời hoa.
  Ô ô ô kìa sông núi chảy mật ong.
  Có suối sữa thơm ứ vạn dòng,
  có suối sữa thơm ứ vạn dòng
  ô ô kìa ô ô kìa ô ô ô kìa
  Muôn chim thánh thót vọng trên không.
  \set stanza = "Solo:"
  Ai về thành đô xem ánh sáng.
  Ngập tràn khắp nẻo chốn hoàng vương,
  nghe dàn thiên nhạc qua năm tháng
  Hòa bình là tuổi của tình thương.
  Trời Si -- on tưng bừng như mở hội.
  Hoa đăng về thắm lên tình hôn phối.
  Hỡi loài người,
  Hỡi loài người phút trời đất giao duyên.
  
  \set stanza = "Solo:"
  Trong im lìm là nghĩa của tình điên.
}

loiPhienKhucAlto = \lyrics {
  Mây nước yêu yêu,
  không gian trang hoàng như lễ trọng.
  Gió hết cô liêu.
  Si -- on yêu kiều lòng nở hoa hy vọng.
  Ai, ai đến đàng xa,
  ai, ai đến đàng xa, đến đàng xa,
  ai, ai đến đàng xa đẹp hơn trời hoa.
  Mau đi em ơi,
  Xé bức khăn tang thắm lên vạn nụ cười,
  đẹp lên vạn nụ cười.
  Nào, nào hãy mau đi em ơi
  Xé bức khăn tang thắm lên vạn nụ cười,
  thắm lên vạn nụ cười.
  trang điểm mau mừng Vua mừng Vua cao cả.
  đến với em cần chi xe song mã.
  Hỡi cửa thành, hỡi của thành nâng cao mi lên
  nâng cao mi lên,
  nâng cao mi lên để tiến vào một triều nguyên ánh sáng,
  Trăng hòa bình soi đồi núi Be -- lem.
  Và muôn phương thôi những ngày tao loạn.
  loạn.
  Ai, ai đến đàng xa,
  ai, ai đến đàng xa đến đàng xa.
  Ai, ai đến đàng xa đẹp hơn trời hoa.
  Ô ô ô kìa, ô kìa
  ô kìa, ô ô kìa, ô ô kìa.
  Ô ô kìa ô ô kìa
  có suối sữa thơm ứ vạn dòng
  ô ô kìa ô ô kìa
  ô ô ô kìa. Muôn chim thánh thót vọng trên không.
  \set stanza = "Ca đoàn:"
  Ai về ai, ai về đô thành.
  păng păng păng păng.
  păng păng păng păng.
  păng păng păng păng.
  păng păng păng păng păng.
  păng păng păng păng păng.
  Trời Si -- on tưng bừng như mở hội.
  Hoa đăng về thắm lên tình hôn phối.
  Hỡi loài người,
  Hỡi loài người giờ trời đất giao duyên.
  
  \set stanza = " Ca đoàn:"
  Hm __ _ _ _ _ _ _
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 12 { _ }
  Bỗng một chiều không gian mà điểm trang,
  không gian như lễ trọng.
  Thời gian tràn ý sống.
  Si -- on nở hoa hy vọng.
  Ai, ai đến đàng xa,
  ai, ai đến đàng xa.
  Hùng hơn mặt nhật.
  Ai đến kia đẹp trời hoa.
  Nào Si -- on mau chóng đi em ơi!
  Xé bức khăn tang
  đẹp lên vạn nụ cười, đẹp lên vạn nụ cười.
  Nào, nào hãy mau đi em ơi
  Xé bức khăn tang
  đẹp lên vạn nụ cười, đẹp lên vạn nụ cười.
  trang điểm mau mừng, mừng Vua cao cả
  về cùng em đâu cần song mã.
  Hỡi cửa thành hỡi cửa thành nâng cao mi lên.
  Hỡi cửa thánh nâng cao mi lên,
  nâng cao mi lên để tiến vào một triều nguyên ánh sáng,
  Trăng hòa bình soi núi đồi Be -- lem.
  Và muôn phương thôi những ngày tao loạn.
  Nào Si --
  loạn.
  Ai, ai đến đàng xa,
  ai, ai đến đàng xa.
  Hùng hơn mặt nhật. Ai đến kìa đẹp trời hoa.
  Ô, ô ô kìa ô kìa ô ô kìa, ô ô kìa.
  Ô ô kìa ô ô kìa
  có suối sữa thơm ứ vạn dòng.
  Hoa cỏ tưng bừng vui đồng nội,
  ô kìa thanh thót vọng trên không.
  Ai về ai, lại về nơi thánh
  păng păng păng păng.
  păng păng păng păng.
  păng păng păng păng.
  păng păng păng păng păng.
  păng păng păng păng păng.
  Trời Si -- on tưng bừng như mở hội.
  Hoa đăng về thắm lên tình hôn phối.
  Hỡi loài người,
  Hỡi loài người phút trời đất giao duyên.
  Hm __ _ _ _ _ _ _
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
  %page-count = 8
  systems-per-page = 4
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
