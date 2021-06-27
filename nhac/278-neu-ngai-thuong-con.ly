% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Nếu Ngài Thương Con"
  subtitle = "(oratorio The Messiah, phần 2, đoạn 28)"
  composer = "Nhạc: G. F. Handel"
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Liberation Serif"
	 		       "Liberation Serif"
			       "Liberation Serif"
			       (/ 20 20)))
  print-page-number = ##f
}

global = {
  \key ef \major
  \time 4/4
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r2 r4 c ^\f |
  g a!8 a bf g c4( |
  c8 bf16 a!) bf8 c d bf ef4 |
  r8 d d d g c, c c |
  r8 ef d c bf4 a! |
  g r r2 |
  r8 c ^\f f ef d8. c16 bf4 |
  r8 bf c4. c8 bf4( |
  bf) a! bf r |
  r1 |
  r1 |
  r1 |
  r1 |
  r8 f f' ef d8. c16 bf4 |
  r2 r4 bf |
  ef, f8 f g ef af4( |
  af8 g16 f) g8 af bf g c4 |
  r8 bf bf bf ef af, af af |
  r c bf af g4 f |
  ef r r2 |
  r8 c' f f e!8. d16 c4 |
  r2 r8 g c bf |
  af( g f ef f4) df'4 |
  c2 r8 g c bf |
  a!8. g16 f4 r2 |
  r8 bf f' ef d8. c16 bf4 |
  r8 c a! bf c d ef d |
  d4 c d8. d16 d4 |
  r1 |
  r1 |
  r1 |
  r2 r8 d, ^\mf d' c |
  b!8. a!16 g4 r2 |
  r8 d' g f ef8. d16 c4 |
  r8 c f ef d8. c16 bf4 |
  r1 |
  r4 g' ^\f c, d8 d |
  ef c f4.( ef16 d) ef8 f |
  g ef af4 r8 g g g |
  g f f f r af g f |
  ef4 d c r |
  r1 |
  r8 bf ^\f ef d c( d16 ef d8) c |
  bf4 r r8 c bf af |
  g( ef' d c bf g g'4 |
  g) f8( ef) d bf ef4( |
  ef) d8 c b!8. bf16 bf4 | \break
  r b! c c |
  c2 ^\fff b! |
  c1 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r4 g ^\f c, d8 d |
  ef c f4.( ef16 d) ef8 f |
  g ef af4 r8 g g g |
  c f, f f r af g f |
  ef4 d c r |
  r8 g' f ef d( g f g |
  d a'! g fs g4. a16 bf |
  a!4.) bf16( a) g4. a16( g) |
  fs4( g2) fs4 |
  g r r2 |
  r r8 f bf af |
  g8. f16 ef8 g f4. g8 |
  ef4. ef8 d4 r |
  r f bf, c8 c |
  d bf ef4.( d16 c) d8 ef |
  f d g4 r8 f f f |
  bf ef, ef ef r g f ef |
  d4 c bf8 d ef f |
  g( ef d c bf ef4 d8 |
  c bf) c( d) ef4 r |
  r8 d ef f g ef af f |
  d4. d8 c4. c8 |
  d d ef ef ef4 d |
  ef4 r r8 f8 bf bf |
  af8. g16 f4 r2 |
  r8 c f f e!8. d16 c4 |
  r2 r8 af' g f |
  e!( c) f2 e8( d) |
  c4 r r2 |
  r2 r8 f bf bf |
  a!8. g16 f4 r8 bf g f |
  g4. g8 fs4. fs8 |
  g4 f8 ef d( bf') a! g |
  fs d g a! bf4. bf8 |
  a!( f bf a g a16 bf a8 g |
  fs d g2) fs4 |
  g8 d g f ef8. d16 c4 |
  r1 |
  r2 r8 f bf af |
  g2. f4 |
  g f ef g8 g |
  g g af af( g4.) f8 |
  ef ef f f f( d) bf'4 |
  af4. af8 g d g af |
  g8. g16 g4 r8 g c bf |
  af8. g16 f4 r8 f bf af |
  g4.( f8 ef g g f |
  f g16 f ef8 d ef4 d8 c |
  bf8 ef af4 g4. f8 |
  ef4) f bf4. bf8 |
  af4. af8 g8. g16 g4 |
  r g g g |
  g2. ^\fff g4 |
  g1
}

nhacPhienKhucTenor = \relative c' {
  r1 |
  r1 |
  r1 |
  r1 |
  r2 r4 c ^\f |
  g a!8 a bf g c4( |
  c8 bf16 af) bf8 c d bf ef4 |
  r8 d d d g c, c c |
  r ef d c bf4 a! |
  g r r8 g a! b! |
  c4 r8 d g, b! c d |
  ef c g' g bf,4 r8 ef |
  af,4. af8 g b! c d |
  g,4 b! c8 d ef d |
  c4.( d16 c bf8 d c bf |
  a! d4) c8 bf d c4 |
  c8( g') d4( d8) ef16( d) c8 ef |
  a,!4 bf8 c d2 |
  r4 d8 g f ef8. d16 c8 |
  r2 r4 r8 bf8 |
  ef4. ef8 d4.( ef16 d |
  c4.) c8 bf bf a!( g) |
  f_( bf4 a!8 g f) g( a) |
  bf4 r r8 a! bf c |
  d bf ef c a!4. a8 |
  g4. g8 af8 af bf bf |
  bf4 a! bf bf |
  ef, f8 f g4. g8 |
  af8( g) af f ef ef' g f |
  d bf d4 r r8 af8 |
  f4 g ef f |
  bf8( af) g af bf4. bf8 |
  bf bf ef ef d8. c16 bf4 |
  r1|
  r2 r4 r8 c |
  f,4 g8 g af f bf4( |
  bf8 af16 g) af8 bf c4. c8 |
  f,4 r r8 f bf bf |
  a!8. g16 f4 r2 |
  r8 f f g a! bf c( d) |
  ef4. ef8 d8. d16 a!8 a |
  bf4 c8 c d4 c8 bf |
  a! a c c bf bf g' ef |
  c( d16 ef f8 d bf c16 d ef8 c |
  a! bf16 c d8 c bf4) a |
  g  r r8 g8 c c |
  b!8. a!16 g4 r2 |
  r1 |
  r8 g ef' d c( d16 ef d8) c |
  b! c d b g'4.( f8 |
  ef4 d2 c8 b! |
  c4. d16 c bf4 g'8 f |
  ef c f ef d) d ef c |
  d4 b! c r |
  r8 c f ef d8. c16 bf4 |
  r8 ef, f g af4. af8 |
  g d' c bf g'4( f |
  ef8 g f ef d4 c8 d |
  bf4) c f8 g g ef |
  f4. ef8 d8. d16 d4 |
  r d ef ef |
  d2. ^\fff d4 |
  ef1
}

nhacPhienKhucBass = \relative c' {
  r4 g4 ^\f c, d8 d |
  ef c f4.( ef16 d) ef8 f |
  g ef af4 r8 g g g |
  c f, f f r af g f |
  ef4 ef c r |
  r8 ef d d g4 r8 a! |
  d, fs g af bf g c c |
  f,4. bf8 ef,4. ef8 |
  d fs g d d4 fs |
  g8 f ef d ef4 g8( g) |
  c4 r r2 |
  r1 |
  r1 |
  r4 g c, c8 d |
  ef4 d8( c) g'( bf) a!( g) |
  fs4 g8 af bf g c c |
  f, f bf bf ef,4. ef8 |
  d2 r8 d d' c |
  b!8. a!16 g4 r8 g c bf |
  af8. g16 f4 r2 |
  r1 |
  r4 f bf, c8 c |
  d4. d8 ef( d) ef c |
  bf bf' c bf a! f bf4 |
  r4 r8 ef, c4 d |
  bf c f8 ef d ef |
  f4. f8 bf,4 r |
  r1 |
  r1 |
  r1 |
  r1 |
  r2 r8 bf bf' af |
  g8. f16 ef4 r2 |
  r2 r8 g c bf |
  af8. g16 f4 r2 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r2 r4 d ^\f |
  g, a!8 a bf g c4( |
  c8 bf16 a!) bf8 c d bf ef4( |
  ef8) d d d d c c4 |
  c8 c bf c d4. d8 |
  g,4 r r2 |
  r2 r8 g' ^\mf c bf |
  
  %?
  af8.
  g16 f4 r2 |
  r8 ef g ef af4. af8 |
  g f ef d c( c' b! g |
  c4. d16 c bf8 g c, c |
  ef c f) ef d bf' ef d |
  c( ef d c b! c16 b c8) f, |
  g g g f ef8. d16 c4 |
  r1 |
  r1 |
  r4 g' ^\ff c, d8 d |
  ef c f4.( ef16 d) ef8 f |
  g ef af4. g8 g g |
  f4. f8 f8. f16 f4 |
  r4 f ef c |
  g'2 ^\fff g, |
  c1
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Nếu Ngài luôn thương mến phù giúp con,
  sao hững hờ mãi trong cơn nguy khốn cùng cực này
  vẫn chưa ra tay độ trì.
  Ngài chẳng ra tay độ trì
  Ngài chẳng ra tay độ trì
  Ngài chẳng ra tay độ trì.
  Nếu Ngài luôn thương mến phù giúp con sao hững hờ mãi
  trong cơn nguy khốn cùng cực này vẫn chưa ra tay độ trì
  Ngài chưa ra tay độ trì
  Ngài chẳng ra "tay (i)" cứu nguy.
  Ngài chẳng ra tay độ trì.
  Ngài chẳng ra tay độ trì
  Sao Ngài chẳng ra tay cứu con khi con gặp gian nguy.
  Ngài chẳng ra tay độ trì
  Ngài chẳng ra tay độ trì,
  Ngài chẳng ra tay độ trì
  Nếu Ngài luôn thương mến phù giúp con,
  sao hững hờ mãi trong cơn nguy khốn cùng cực này
  vẫn chưa ra tay độ trì.
  Ngài chẳng ra tay độ trì,
  vẫn chẳng ra "tay (i)" cứu nguy phù giúp trong cơn cùng cực này
  Ngài chưa ra tay độ trì.
}

loiPhienKhucAlto = \lyrics {
  Nếu Ngài luôn thương mến phù giúp con sao hững hờ mãi,
  trong cơn nguy khốn cùng cực này vẫn chưa ra tay độ trì,
  vẫn chưa độ "trì (i)"
  vẫn chưa ra tay độ trì.
  Ngài chẳng ra tay,
  Ngài chẳng ra tay,
  ra tay độ trì
  Nếu Ngài luôn thương mến phù giúp con,
  sao hững hờ mãi trong cơn nguy khốn cùng cực này vẫn chưa ra tay độ trì.
  Ngài hằng thương mến phù giúp đời con sao hững hờ mãi trong cơn cơ cùng,
  Ngài sao vẫn chưa ra tay độ trì,
  Ngài chưa ra tay độ trì.
  Ngài chưa ra tay độ trì,
  nếu thương con sao mãi hững hờ
  Ngài chưa ra tay độ trì lúc con gặp cơn nguy nan,
  Ngài ơi sao Ngài chẳng ra tay độ trì con, sao mãi hững hờ
  Ngài ơi Ngài chẳng ra tay độ trì
  Ngài chẳng ra tay độ trì,
  Nếu Ngài luôn thương yêu phù giúp con sao hững hờ mãi
  trong cơn nguy nan cơ cực này chưa ra tay độ trì.
  Ngài chẳng ra tay độ trì,
  Ngài chẳng ra "tay (i)" phù giúp cứu nguy giữa cơn cùng cực
  Ngài chưa ra tay độ trì.
}

loiPhienKhucTenor = \lyrics {
  Nếu Ngài luôn thương mến phù giúp con,
  sao hững hờ mãi, trong cơn nguy khốn cùng cực này
  vẫn chưa ra tay độ trì.
  Ngài luôn thương mến
  Nếu Ngài thương con sao hững hờ mãi lúc con khốn cùng
  sao Ngài vẫn chưa ra tay độ trì,
  nếu mến thương "con (i)" sao hững hờ mãi
  giữa cơn rất cùng khốn này chẳng ra tay
  Ngài chẳng ra tay độ trì.
  Ngài chẳng ra tay độ trì,
  nếu Ngài "hằng (ư)" thương mến đời con sao hững hờ mãi
  trong cơn cơ cùng Ngài sao vẫn chưa ra tay độ trì.
  Nếu Ngài luôn thương mến, trong lúc khốn cùng này sao vẫn chưa độ trì con,
  lúc cùng khốn này sao vẫn chẳng ra tay độ trì,
  Ngài chưa ra tay độ trì.
  Nếu Ngài luôn thương mến phù giúp con,
  sao mãi hững hờ,
  Ngài chưa ra tay độ trì
  Nào Ngài chẳng ra tay cứu giúp lúc con nguy nan,
  Ngài ơi nào Ngài chẳng ra tay độ trì con,
  sao hững hờ mãi, hững hờ Chúa ơi
  Ngài chưa ra tay độ trì
  Ngài chẳng ra tay độ trì lúc con cùng "khốn (ơ)"
  sao chẳng ra tay độ trì.
  Ngài chẳng ra tay độ trì,
  Ngài chẳng ra tay độ trì,
  cứ hững hờ "mãi (i)" chẳng ra tay cứu độ giữa cơn cùng cực này
  Ngài chưa ra tay độ trì.
}

loiPhienKhucBass = \lyrics {
  Nếu Ngài luôn thương mến phù giúp con,
  sao hững hờ mãi, trong cơn nguy khốn cùng cực này vẫn chưa ra tay độ trì.
  Nếu luôn thương mến, nếu Ngài thương con sao hững hờ mãi,
  lúc con khốn cùng sao Ngài vẫn chưa hạ tay độ trì,
  vẫn chưa hạ tay độ trì.
  Nếu Ngài hằng thương mến và luôn cứu trợ con,
  sao hững hờ mãi giữa cơn nguy khốn rất cùng cực này.
  Ngài chẳng ra tay độ trì.
  Ngài chẳng ra tay độ trì.
  Nếu Ngài luôn thương mến trong lúc khốn nguy này sao vẫn chưa độ trì con.
  Lúc cùng khốn này sao Chúa vẫn chẳng ra tay độ trì.
  Ngài chẳng ra tay độ trì.
  Ngài chẳng ra tay độ trì.
  Nếu Ngài luôn thương mến phù giúp con sao hững hờ mãi
  trong cơn nguy nan cùng cực này sao chẳng ra tay độ trì.
  Ngài chẳng ra tay độ trì.
  Ngài chẳng hạ tay độ trì lúc con cùng "khổ (ơ)"
  Sao Ngài luôn cứ hững hờ.
  Ngài ơi sao chưa ra tay độ trì.
  Nếu Ngài luôn thương mến phù giúp con,
  sao hững hờ mãi, chưa ra tay giữa cơn cùng cực này.
  Ngài chưa ra tay độ trì.
}

% Dàn trang
\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = #"S"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beSop" { \clef treble \global \nhacPhienKhucSop }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff \with {
      instrumentName = #"A"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beAlto" { \clef treble \global \nhacPhienKhucAlto }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff \with {
      instrumentName = #"T"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beTenor" { \clef "violin_8" \global \nhacPhienKhucTenor }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff \with {
      instrumentName = #"B"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beBass" { \clef bass \global \nhacPhienKhucBass }
      \new Lyrics \lyricsto beBass \loiPhienKhucBass
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2.5
  } 
}
