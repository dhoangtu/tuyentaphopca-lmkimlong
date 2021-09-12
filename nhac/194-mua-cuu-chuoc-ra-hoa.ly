% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mùa Cứu Chuộc Ra Hoa" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  <<
    {
      a4 \tuplet 3/2 { g8 g a } |
      bf4 \tuplet 3/2 { a8 a bf } |
      c2 |
      \tuplet 3/2 { c8 d c } \tuplet 3/2 { bf c bf } |
      a4 \tuplet 3/2 { g8 g c } |
      f,8. c16 f8 g
    }
    \\
    {
      <f c>4. <f c>8 |
      <f d>4. <f d>8 |
      <g e>4 <bf g> |
      <a f>8 r <g f> r |
      <f c>4 e |
      \skip 2
    }
  >>
  \bar "||" \break
  
  a4. a8 |
  a2 |
  bf4. bf8 |
  bf4 \tuplet 3/2 { a8 a bf } |
  c2 ~ |
  c4 r |
  R2
  f,4 g8 g ~ |
  g g a8. f16 |
  bf8 bf4. |
  bf16 (c) f,8 af4 ~ |
  a8 f f g |
  g2 \bar ".|:"
  a8. gs16 a8 f |
  f f ([g]) a |
  bf2 |
  \slashedGrace { g16 ( } a8.) f16 bf8 bf |
  bf a4 bf8 |
  c2 |
  c8 c c8. c16 |
  d8 f a, bf ~ |
  bf4 bf8 bf |
  bf8. bf16 bf8 c |
  g a4. ~ |
  a4 r |
  R2 |
  g8 a4 c8 |
  \slashedGrace { f,16 ( } g2) |
  r8 bf c d |
  \slashedGrace { g,16 ( } a2) ~ |
  a4 a16 (bf) a (bf) |
  c4. d8 |
  d4 bf8 d |
  f4. d8 |
  c2 ~ |
  c4 a8 c |
  bf4. bf8 |
  g bf a4 ~ |
  a e8 e |
  e f4 g8 |
  c,2 \bar ":|."
  
  c16 d c d e f e f \bar "||"
  \key c \major
  <g f d b>8 \bar "" \break
  
  \partial 4. r8 r4 |
  r8 c16 c c8 c |
  c b r c |
  \slashedGrace { g16 (a } g2) |
  r8 d'16 d d8 f |
  b,8 c16 c c8 d |
  g, g'4 c,8 |
  d2 ~ |
  d8 d16 e c8 a |
  a a4 b8 |
  b2 ~ |
  b8 b4 c8 |
  a d16 c c8 d |
  e2 \bar "||"
  
  \key a \major
  cs8. e16 d8 d |
  cs b4 fs'8 |
  fs2 |
  e8. a,16 a8 b |
  cs cs4 a8 |
  b2 ~ |
  b4 r |
  r8 a16 a d8 cs |
  cs b4 e8 |
  e2 ~ |
  e8 b16 b e8 d |
  cs8 a4 d8 |
  d4. e8 ^\ff |
  d2 ~ |
  d4 ^\markup { \halign #-2.5 \fontsize #2 \bold "Tận" }
  \bar "|." \break
  e,8 a |
  a8. gs16 b8 b |
  b cs4. |
  a8 d cs8. b16 |
  fs'8 d4 e8 |
  e2 ~ |
  e4 e8 a |
  cs,8. e16 a,8 a |
  d d4. |
  b8 d cs8. a16 |
  e8 b'4 cs8 |
  cs2 ~ |
  cs4 r8 e16 e |
  e8 e a e |
  cs d r d16 cs |
  b8 b b fs' |
  ds e4. \bar "||"
  
}

nhacPhienKhucAlto = \relative c' {
  R2*6
  c4. c8 |
  c4 \tuplet 3/2 { c8 d e } |
  f4 f8 f |
  d4 \tuplet 3/2 { d8 e f } |
  e2 ~ |
  e4 r |
  R2
  df4 df8 df ~ |
  df e c8. df16 |
  c8 c4. |
  bf'16 (c) f,8 c4 ~ |
  c8 df df f |
  e2
  
  c8. c16 c8 a |
  bf bf4 ef8 |
  d2 |
  c8. c16 bf8 f' |
  d d4 d8 |
  e2 |
  e8 e ef8. ef16 |
  d8 d c bf ~ |
  bf4 d8 d |
  f8. f16 f8 e |
  e c4. ~ |
  c4 r |
  R2
  e8 f4 e8 |
  \slashedGrace { d16 ( } e2) |
  r8 d f d |
  \slashedGrace { c16 ( } f2) ~ |
  f4 f16 (g) f (g) |
  a4. bf8 |
  bf4 g8 bf |
  a4. f8 |
  e2 ~ |
  e4 c8 a' |
  g4. f8 |
  e8 g f4 ~ |
  f bf,8 d |
  c d4 d8 |
  g,2
  
  R2
  \key c \major
  r8
  \partial 4. g'16 g g8 g |
  g4. g16 g |
  a8 f16 f e4 |
  r8 e16 e d8 e |
  b4 r8 a'16 a |
  f4 r8 d16 c |
  b8 b16 b c8 c |
  f a16 a g8 c |
  b g e r |
  r e16 e f8 a |
  gs gs16 gs a8 f16 f |
  e8 r e e |
  f a16 a a8 b16 (a) |
  gs2
  
  \key a \major
  e8. e16 gs8 gs |
  a e4 cs'8 |
  d2 |
  a8. e16 fs8 fs |
  e e4 a8 |
  gs2 ~ |
  gs4 r |
  r8 gs16 fs b8 a |
  a r r4 |
  r8 b16 b cs8 a |
  gs4. gs16 gs |
  a8 e16 e fs4 ~ |
  fs8 fs16 ^\ff fs a (b) a8 |
  gs2 ~ |
  gs4
  
  e8 d |
  cs8. cs16 d8 d |
  e a4. |
  fs8 fs a8. gs16 |
  a8 b4 a8 |
  gs2 ~ |
  gs4 cs8 b |
  a8. gs16 a8 gs |
  fs fs4. |
  gs8 b a8. fs16 |
  cs8 d4 e8 |
  a2 ~ |
  a4 r8 cs16 cs |
  cs8 cs cs b |
  a b r b16 a |
  gs8 gs gs a |
  a gs4.
}

nhacPhienKhucBas = \relative c {
  f4. f8 |
  d4. d8 |
  \tuplet 3/2 { c8 c c } \tuplet 3/2 { c d e } |
  f r g r |
  \tuplet 3/2 { c, f a } c <bf c,> |
  <<
    {
      a2
    }
    \\
    {
      f4. c8
    }
  >>
  
  <f f,>4. f8 |
  f2 |
  d4. d8 |
  g4 \tuplet 3/2 { f8 e d } |
  c2 |
  c4 df8 df ~ |
  df! bf bf4 ~ |
  bf bf |
  bf8 c f r |
  e8. e16 g8 g ~ |
  g4 r8 af |
  f8. df16 df8 df |
  c2
  
  f8. e16 f8 f |
  d d4 c8 |
  bf2 |
  f'8. e16 d8 d |
  g fs4 g8 |
  c,2 |
  c'8 c c8. a16 |
  bf8 bf f g ~ |
  g4 g8 g |
  d8. d16 d8 c |
  c f4. |
  f8 f4 g16 (f) |
  c2 ~ |
  c ~ |
  c8 c' c c |
  f,2 ~ |
  f4 c16 (d) c (d) |
  f2 ~ |
  f8 f f f |
  bf4 r |
  r8 f a bf |
  c4. c,8 |
  d e f4 |
  r8 g g g |
  c4 c,8 c |
  d4 g8 g |
  a <f d>4 <f bf,>8 |
  <e c>2
  R2
  
  \key c \major
  <g g,>8
  \partial 4 r8 r f16 f |
  f8 e e e16 e |
  f8 g16 g a4 |
  r8 c16 c b8 c |
  g4 r8 d16 d |
  g4 r8 fs16 fs |
  g8 g16 g a8 a |
  d,8 d'16 c b8 a |
  g g a r |
  r c16 c d8 d, |
  e8 e16 e f8 a16 a |
  gs8 r gs a |
  f8 f16 f f8 f |
  e2
  
  \key a \major
  a8. cs16 e8 e, |
  fs gs4 a8 |
  d2 |
  cs8. cs16 d8 gs, |
  a a4 fs8 |
  e2 ~ |
  e8 e4 a8 |
  a2 ~ |
  a4 r |
  r8 gs16 gs a8 fs |
  e4. e16 e |
  fs8 cs16 cs d4 ~ |
  d8 b16 -\ff b fs'8 e |
  e2 ~ |
  e4
  r |
  R2
  r8 a fs e |
  d4 e |
  b b |
  e4. d8 |
  cs b a4 ~ |
  a8 r r4 |
  r8 b cs d |
  e b d4 |
  e e |
  a4. e8 |
  cs e a,4 ~ |
  a r |
  r8 b cs d |
  e4 a, |
  b8 e4.
}

% Lời
loiPhienKhucSop = \lyrics {
  Đây Be -- lem,
  Đây Be -- lem hoàng thành Đa -- vít.
  Trời âm u mưa gió lạnh thê lương,
  Giữa đồng vắng sầu đọng hơi sương.
  Ôi tình thương là mặt trời công chính.
  Bỏ tòa cao thiên cung đầy quang ánh,
  Đêm nay lên trong u tối đồng hoang,
  Đêm nay lên trong u tối đồng hoang.
  Ngày nay máng cỏ, ngày nay máng cỏ.
  Thổi làm chi hỡi gió đừng bay nữa mây ơi!
  Quỳ xuống đây, hãy quỳ xuống đây,
  quỳ thờ lạy Con Chúa Trời.
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn) __ \repeat unfold 8 { _ }
  \revert Lyrics.LyricText.font-shape
  Ngươi nghe không muôn muôn vì tinh đẩu
  đêm hôm nay náo động, đêm hôm nay náo động chốn trời cao.
  Người thấy không đường nguyệt điện xôn xao vạn thiên thần
  bay về thành Đa -- vít.
  Nhạc sáng danh như mưa gào gió thét,
  Ca phụng thờ say đắm đến chừng mô.
  Dồn dập tiếng tung hô,
  Mừng Ngôi Hai
  dồn dập tiếng tung hô, mừng Ngôi Hai tung hô.
  Hồn ta ơi hòa tan trong quang ánh
  Để ngắm xem Mùa Cứu Chuộc ra hoa.
  Ta ước hồn biến thành mực bao la
  Để viết nên muôn bài thơ kính mến.
  Cho thơ say trong ngất ngư mầu nhiệm
  của Ngôi Lời nhập thể xuống trần gian.
}

loiPhienKhucAlto = \lyrics {
  Đây Be -- lem hoàng thành Đa -- vít,
  đây Be -- lem hoàng thành Đa -- vít.
  Trời âm u mưa gió lạnh thê lương,
  Giữa đồng vắng sầu đọng hơi sương.
  Ôi tình thương là mặt trời công chính.
  Bỏ tòa cao thiên cung đầy quang ánh,
  Đêm nay lên trong u tối đồng hoang,
  Đêm nay lên trong u tối đồng hoang.
  Ngày nay máng cỏ, ngày nay máng cỏ.
  Thổi làm chi hỡi gió đừng bay nữa mây ơi!
  Quỳ xuống đây, hãy quỳ xuống đây,
  quỳ thờ lạy Con Chúa Trời.
  Ngươi nghe không, nghe không,
  ngươi nghe không, ngươi nghe không
  muôn muôn vì tinh đẩu
  ngươi nghe không,
  ngươi nghe không
  đêm hôm nay trời cao,
  đêm hôm nay náo động, náo động
  đường nguyệt điện xôn xao ơ xôn xao ô náo động,
  Vạn thiên thần bay về thành Đa -- vít.
  Nhạc rạng danh như mưa gào gió thét,
  Ca phụng thờ say đắm đến chừng mô.
  Dồn dập tiếng tung hô,
  dồn dập tiếng tung hô,
  dồn dập tiếng, dồn dập tiếng, dồn dập tiếng tung hô
  Hồn ta ơi hòa tan trong quang ánh
  Để ngắm xem Mùa Cứu Chuộc ra hoa.
  Ta ước hồn biến thành mực bao la
  Để viết nên muôn bài thơ kính mến.
  Cho thơ say trong ngất ngư mầu nhiệm
  của Ngôi Lời nhập thể xuống trần gian.
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 17 { _ }
  Đây Be -- lem, Đây Be -- lem hoàng thành Đa -- vít.
  Một đêm khuya mù mịt trời âm u
  gió mưa lạnh thê lương
  gió mưa sầu đọng hơi sương.
  Ôi tình thương là mặt trời công chính.
  Bỏ ngai cao thiên cung đầy ánh quang,
  Đêm nay lên trong u tối đồng hoang,
  Đêm nay lên trong u tối đồng hoang.
  Xưa kia ngai vàng, Xưa kia ngai vàng.
  Thổi làm chi, thổi gì hỡi gió.
  Đừng bay mây ơi, đừng bay mây ơi!
  Nào hãy quỳ đây, hãy quỳ đây
  quỳ thờ lạy Con Vua Trời.
  "_" Ngươi nghe không, nghe không, ngươi nghe không,
  ngươi nghe không muôn muôn vì tinh đẩu
  ngươi nghe không, ngươi nghe không đêm hôm nay nơi nào,
  đêm hôm nay náo động nghe không
  đường nguyệt điện xôn xao ơ xôn xao ơ náo động,
  Vạn thiên thần bay về thành Đa -- vít.
  Nhạc rạng danh như mưa gào gió thét,
  Ca phụng thờ say đắm đến chừng mô.
  Mừng Ngôi Hai dồn dập tiếng tung hô,
  dồn dập tiếng,
  dồn dập tiếng, dồn dập tiếng tung hô.
  ánh quang lên để xem mùa nở hoa, nở hoa Cứu Chuộc.
  là thành mực để dệt nên thơ trìu mến
  để thơ ngất ngư mầu nhiệm Ngôi Lời vào trần gian.
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
  %page-count = 5
}

TongNhip = {
  \key f \major \time 2/4
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
         \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1.2
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
