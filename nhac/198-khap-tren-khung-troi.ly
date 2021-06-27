% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = "Khắp Trên Khung Trời"
  subtitle = "(Trong Oratorio The Messiah)"
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
  \key d \major
  \time 4/4
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  fs4 e8. d16 cs4 r |
  d d8. e16 fs4 fs8 fs |
  d1 |
  fs2 r2 |
  r1 |
  r1 |
  r1 |
  r1 |
  a,4 a8. d16 cs4 r |
  d d8. e16 fs4 r |
  d d8. cs16 d4 d8 d |
  cs2 cs |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  a4 d4. cs16( b cs8) a |
  b4 b8 b a2 |
  r2 d4 g( |
  g8) fs16( e fs8) cs d4( e8 d) |
  cs4 d2 cs4 |
  d2 r |
  fs4 e8. d16 cs4 r |
  d cs8. b16 a4 d8 d |
  d2 d2 |
  r r4 d, |
  d2. d4 |
  d1 |
  r1 |
  r1 |
  a'4 d r2 |
  b4 e r2 |
  cs4 fs r2 |
  d4 g4. fs16( e fs8) d |
  e4. fs8 g2 |
  fs4( e8 d) cs4 d |
  d2( cs) |
  d2 r \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  a4 b8. b16 e,4 r |
  g a8. b16 a4 a8 a |
  b1 |
  a2 r |
  r1 |
  r1 
  r1 |
  r1 |
  fs4 e8. d16 a'4 r |
  fs fs8. g16 a4 r |
  b a8. g16 fs4 a8 a |
  a2 e |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  r1 |
  e4 a4. g16( fs g8) e |
  fs4 fs8 fs e2 |
  d4 g4. fs16( e fs8) d |
  e2 d4 b' |
  e, a fs( g |
  a2) g4. g8 |
  fs2 r |
  a4 fs8. b16 e,4 r |
  d4 d8. e16 fs4 a8 a |
  b2 b |
  r r4 b,4 |
  b2. b4 |
  b1 |
  d4 g4. fs16( e fs8) d |
  e4 a4. g16( fs g8) e |
  fs4 r fs d |
  r2 g4 e |
  r2 cs'4 fs, |
  r2 r4 cs' |
  g a d, d' |
  a( g) cs2 |
  cs2. cs4 |
  cs2 r
}

nhacPhienKhucTenor = \relative c' {
  d4 cs8. b16 a4 r |
  b a8. g16 d'4 d8 d |
  g1 |
  d2 r |
  r r4 a |
  a2. a4 |
  a1 |
  r |
  d4 cs8. b16 a4 r |
  b a8. g16 fs4 r |
  a' fs8. e16 d4 fs8 fs |
  a2 a, |
  r r4 d |
  d2. d,4 |
  d1 |
  r |
  r |
  r2 a'4 d( |
  d8) cs16( b cs8) a e'2 |
  d4. d8 a2 |
  
  %e4 a4. g16( fs g8) e |
  %d4. d8 a2 |
  
  r1 |
  e'4 a4. g16( fs e8) d |
  cs2 b |
  e4( d) e4. e8 |
  a,2 r |
  fs'4 fs8. g16 a4 r |
  fs4 fs8. g16 d4 d8 d |
  g2 fs |
  r r4 g, |
  g2. g4 |
  g1 |
  r2 a4 d( |
  d8) cs16( b cs8) a b( a) b( cs) |
  d4 r a b |
  r2 e4 cs |
  r2 fs4 d |
  r2 r4 fs |
  fs e8 cs d( cs d e |
  fs4) b,( e) fs |
  e2. e4 |
  fs2 r
}

nhacPhienKhucBass = \relative c' {
  r1 |
  r |
  r |
  r |
  r2 r4 a4 |
  a2. a4 |
  a1 |
  r |
  r |
  r |
  r |
  r |
  r2 r4 d |
  d2. d,4 |
  d1 |
  r |
  d4 g4. fs16( e fs8) d |
  a'2 r |
  r1 |
  r |
  r2 a4 d( |
  d8) cs16( b cs8) a b2 |
  a2. g4( |
  g fs) e4. e8 |
  d2 r |
  d'4 d8. b16 a4 r |
  b a8. g16 fs4 fs8 fs |
  g2 d |
  r r4 g |
  g2. g,4 |
  g1 |
  r |
  r |
  r2 d'4 g |
  r2 e4 a |
  r2 fs4 b |
  r2 a4 d( |
  d8) cs16( b cs8) a b( a b cs |
  d4) g,2 fs4 |
  a2. a4 |
  d,2 r
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Khắp trên khung trời
  từng đoàn thiên sứ tấu khúc nhạc mới.
  Rập lời xướng ca phụng mừng Thiên Chúa.
  Trên cung trời cao Tôn Danh rạng ngời.
  Bình an với lòng ai Chúa mến thương.
  bình an với lòng ai được Chúa dủ thương.
  Chúa trên cung trời sáng danh muôn đời
  nơi nơi tôn vinh trần đời hòa bình.
  Bình an, bình an, bình an,
  bình an với lòng ai Thiên Chúa trên trời nay dủ thương.
}

loiPhienKhucAlto = \lyrics {
  Khắp trên cung trời
  từng đoàn thiên sứ tấu khúc nhạc mới.
  Rập lời xướng ca phụng mừng Thiên Chúa
  Trên cung trời cao Tôn Danh rạng ngời
  Bình an với lòng ai Chúa mến thương.
  Bình an với lòng ai, bình an lòng ai được Chúa mến thương.
  Chúa trên cung trời sáng danh muôn đời
  nơi nơi tôn vinh trần đời hòa bình.
  Bình an với lòng ai Chúa với lòng ai vĩnh an,
  vĩnh an, vĩnh an, an bình với người Chúa trên trời nay yêu thương.
}

loiPhienKhucTenor = \lyrics {
  Khắp trên cung trời từng đoàn thiên sứ tấu khúc hát mới.
  Âm vang nơi nơi.
  Cất tiếng xướng ca chung mừng thiên tòa.
  Trên cung trời cao Tôn Danh sáng ngời.
  Khắp cõi trần đời.
  Bình an với lòng ai Chúa mến thương.
  Bình an với lòng ai, lòng ai Chúa mến thương.
  Chúa trên cõi trời rạng danh muôn đời
  nơi nơi tôn vinh trần đời hòa bình.
  Bình an với lòng ai, lòng ai bình an, vĩnh an, vĩnh an,
  an bình với lòng ai được Chúa nay dủ thương.
}

loiPhienKhucBass = \lyrics {
  Âm vang nơi nơi.
  Khắp cõi trần đời.
  Bình an với lòng ai
  Bình an với lòng ai, ai được Chúa mến thương.
  Chúa trên cung trời sáng danh muôn đời
  nơi nơi tôn vinh, trần đời hòa bình.
  Bình an, bình an, bình an, bình an
  với lòng ai được Ngài nay dủ thương.
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
