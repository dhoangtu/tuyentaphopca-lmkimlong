% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Kinh Hòa Bình" }
  subsubtitle = "(Kinh nguyện của Thánh Phanxicô)"
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c' {
  \partial 8 e8 |
  c' (b) e, (g) |
  a4 e'8 e |
  e4 f8 f |
  e c c d |
  e4 c8 b |
  a2 ~ |
  a4 e |
  e' e |
  f4. d8 |
  e4 d8 e |
  c4 a |
  d4. c16 (d) |
  e2 ~ |
  e ~ |
  e4 r |
  r2
  r4 e8 f |
  e c d d |
  b4 b8 c |
  a a c d |
  e4 r |
  r8 c \slashedGrace { d8(} c) b |
  a4 \bar "||"
}

nhacPhienKhucAltoMot = \relative c' {
  \partial 8 e8 |
  c' (b) e, (g) |
  a4 a8 a |
  b4 c8 d |
  a a a a |
  gs4 gs8 gs |
  a4 f8 f |
  e4 r4 |
  r8 gs8 a a |
  a4 af |
  g g8 g |
  g4 g |
  fs f! |
  e8 e a4 ~ |
  a gs |
  a r |
  r2
  r4 c8 d |
  c a g f |
  e4 e8 a |
  f e e g |
  g4 r |
  r8 f e d |
  c4
}

nhacPhienKhucTenorMot = \relative c' {
  r8
  r2
  r4 c8 c |
  b4. b8 |
  c4 e8 d |
  d4 d8 d |
  c4 d8 d |
  c4 r |
  r8 b c c |
  d4 b |
  c b8 b |
  c4 c |
  c b |
  c4. c8 |
  b4 b |
  a a8 a |
  a g a b |
  e,4 r |
  r8 a a a |
  gs4 r | r8 c c b |
  c4 d8 d |
  e c a gs |
  a4
}

nhacPhienKhucBasMot = \relative c' {
  r8
  r2
  r4 a8 a |
  gs4. gs8 |
  a4 g8 f |
  e4 e8 e |
  f4 d8 d |
  a4 r |
  r8 e' a a |
  d,4 g, |
  c d8 d |
  e4 e |
  d g |
  c,8 b c d |
  e4 e |
  a a8 a |
  a g a b |
  e,4 r |
  r8 f8 d d |
  e4 r |
  r8 a g g |
  c,4 g'8 g |
  c a e e |
  a,4
}

nhacPhienKhucSopHai = \relative c' {
  \partial 4 e4 |
  a a8 b |
  c a b b |
  b4 c8 b |
  a g a b |
  e,2 ~ | \break
  e4 e |
  <<
    {
      \voiceOne
      e'4 c8 d |
      e b e f |
      e4 d8 c |
      d e e b |
      a2 ~ |
      a4 \bar "||"
    }
    %\\
    \new Voice = "splitpart" {
      \voiceTwo
      \override NoteHead.font-size = #-2
      c4 a8 b |
      gs gs a a |
      c4 b8 a |
      b a gs gs |
      a2 ~ |
      a4
    }
  >>
}

nhacPhienKhucSopBa = \relative c' {
  \partial 4 e4 |
  e'4 e |
  f4. d8 |
  e2 ~ |
  e4 r |
  r r8 c |
  a a c4 |
  b2 |
  r8 c d e |
  a,4. c8 |
  a a c (d) |
  e2 ~ |
  e4 r |
  r r8 c |
  a a c4 ( |
  b2) |
  g4 r8 e |
  c'4 b8 c |
  b4. a8
  c4 a8 c16 (d) |
  e2 ~ |
  e4 r |
  r2
  r
  r4 r8 e, |
  c'4 b8 c |
  b4. b8 |
  c4 a8 c16 (d) |
  e2 |
  r8 f f f |
  e4. c8 |
  d d e b |
  a2 ~ |
  a4 r |
  r c8 b |
  c4 r |
  r8 a b c |
  d4 d8 b |
  c4 e8 e |
  e4 f8 f |
  e c c d |
  e2 |
  c4 b |
  a2 ~ |
  a4 \bar "|."
}

nhacPhienKhucAltoBa = \relative c'' {
  \skip 4
  r8 gs a a |
  a4 af |
  g2 ~ |
  g4 r |
  r r8 g |
  fs f! e4 |
  ds2 |
  r8 c' d e |
  a,4. e8 |
  f f e (g) |
  g2 ~ |
  g4 r |
  r r8 e |
  f f a4 ( |
  a b8 a) |
  gs4 r8 e |
  a4 gs8 a |
  e4. e8 |
  a4 g8 g |
  c2 ~ |
  c4 r |
  r2
  r
  r4 r8 e,8 |
  a4 g8 a |
  f4. e8 |
  a4 g8 g |
  c2 |
  r8 a a a |
  gs4. a8 |
  a a gs gs |
  a2 ~ |
  a4 r |
  r a8 g |
  a4 r |
  r8 a a a |
  gs4 fs8 gs |
  a4 a8 a |
  b4 c8 d |
  a a a af |
  g2 |
  f4 d8 (e16 d) |
  c4 f8 f |
  e4
}

nhacPhienKhucTenorBa = \relative c' {
  r4
  r8 b c c |
  d4 b |
  c2 |
  r8 c d e |
  a,4. e8 |
  a a a (g) |
  fs2 |
  r |
  r4 r8 g |
  d' d c (b) |
  c2 ~ |
  c4 r |
  r8 a b c |
  d4 ds |
  e2 ~ |
  e4 r |
  r2
  r
  r
  r
  r8 e e c |
  a4. a8 c a a c |
  <b gs>2 |
  r
  r
  r
  r
  r8 d d c |
  b4. a8 |
  b b b d |
  c2 ~ |
  c4 r |
  r e8 f |
  e4 r |
  r8 e d c |
  b4 b8 b |
  a4 c8 c |
  b4. b8 |
  c4 c8 b |
  c2 |
  a8 (b16 b) gs4 |
  a d8 d |
  cs4
}

nhacPhienKhucBasBa = \relative c {
  r4
  r8 e a a |
  d,4 g |
  c,2 ~ |
  c4 r |
  r8 a b c |
  d4 a8 a |
  b2 |
  r
  r8 a b c |
  d4 g,8 g |
  c2 |
  r8 c
  d e |
  a,4. a'8 |
  f d b4 |
  e2 ~ |
  e4 r |
  r2
  r
  r
  r
  r8 c d e |
  f4. d8 |
  a' g f a |
  e2 |
  r
  r
  r
  r
  r8 d d ds |
  e4. a8 |
  g8 f e e |
  a2 ~ |
  a4 r |
  a2 ~ |
  a8 g a b |
  c4 ( b8) a |
  e4 b8 e |
  a4 a8 a |
  gs4. gs8 |
  a4 g8 d |
  c2 |
  d4 e |
  a,2 ~ |
  a4
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Lạy Chúa từ nhân
  xin cho con biết mến yêu và phụng sự Chúa trong mọi người.
  Lạy Chúa xin hãy dùng con như khí cụ Bình An của Chúa.
  đem thứ tha vào nơi lăng nhục,
  đem an hòa vào nơi tranh chấp
  vào chốn lỗi lầm.
}

loiPhienKhucAltoMot = \lyrics {
  Lạy Chúa từ nhân
  xin cho con biết mến yêu và phụng sự Chúa trong mọi người
  trong mọi người.
  Lạy Chúa xin hãy dùng
  con như khí cụ Bình An
  khí cụ bình an.
  Để con
  đem thứ ta vào nơi lăng nhục,
  đem an hòa vào nơi tranh chấp
  vào chốn lỗi lầm.
}

loiPhienKhucTenorMot = \lyrics {
  Xin cho con mến yêu phụng sự Ngài trong mọi người,
  trong muôn người.
  Lạy Chúa xin hãy dùng con như khí cụ Bình An,
  khí cụ của Chúa.
  Để con đem yêu thương vào nơi oán thù
  vào nơi lăng nhục
  vào nơi tranh chấp,
  đem chân lý vào chốn lỗi lầm.
}

loiPhienKhucBasMot = \lyrics {
  Xin cho con mến yêu phụng sự Ngài trong mọi người,
  trong muôn người.
  Lạy Chúa xin hãy dùng con như khí cụ Bình An,
  khí cụ bình an của Chúa.
  Để con đem yêu thương vào nơi oán thù
  vào nơi lăng nhục
  vào nơi tranh chấp,
  đem chân lý vào chốn lỗi lầm.
}

loiPhienKhucSopHai = \lyrics {
  \set stanza = "Solo Nam:"
  Để con đem tin kính vào nơi nghi an,
  chiếu trông cậy vào nơi thất vọng.
  
  \set stanza = "Duo Nữ:"
  Để con dọi ánh sáng vào nơi tối tăm,
  đem niềm vui đến chốn u sầu.
}

loiPhienKhucSopBa = \lyrics {
  Lạy Chúa xin hãy dạy con
  hơn được người ủi an.
  Tìm hiểu biết người hơn được người hiểu biết
  hơn được người mến yêu.
  Vì chính khi hiến thân
  là khi được nhận lãnh.
  Vì chính khi thứ tha
  là khi được tha thứ.
  Chính lúc chết đi
  là khi vui sống muôn đời.
  Ôi Thần Linh, Thần Linh thánh ái
  mở lòng con.
  Xin thương ban xuống những ai lòng đầy thiện chí
  Ơn An Bình.
}

loiPhienKhucAltoBa = \lyrics {
  Lạy Chúa xin hãy dạy con
  hơn được người ủi an.
  Tìm hiểu biết người
  hơn được người hiểu biết
  hơn được người mến yêu.
  Vì chính khi hiến thân là khi được nhận lãnh.
  Vì chính khi thứ tha là khi được tha thứ.
  Chính lúc chết đi là khi vui sống muôn đời.
  Ôi Thần Linh,
  Thần Linh thánh ái mở lòng con.
  Xin thương ban xuống những ai lòng đầy thiện chí
  ơn An Bình, ơn An Bình.
}

loiPhienKhucTenorBa = \lyrics {
  Lạy Chúa xin hãy dạy con
  tìm an ủi người hơn được người ủi an
  hơn được người hiểu biết.
  Tìm yêu mến hơn mến yêu.
  Chính lúc quên mình là lúc gặp lại bản thân.
  Chính lúc chết đi là khi vui sống muôn đời.
  Ôi Thánh Linh,
  Thánh Linh xin mở rộng lòng con.
  Xin thương ban những ai đầy thiện chí
  Ơn An Bình, ơn An Bình.
}

loiPhienKhucBasBa = \lyrics {
  Lạy Chúa xin hãy dạy con
  Tìm an ủi hơn được ủi an.
  Tìm hiểu biết hơn được hiểu biết.
  Tìm yêu mến người hơn được người mến yêu.
  Chính lúc quên mình là lúc gặp lại bản thân.
  Chính lúc chết đi là khi vui sống muôn đời.
  Ôi Thần Linh Thánh ái xin mở rộng lòng con.
  Xin thương ban những ai đầy thiện chí
  Ơn An Bình, ơn An Bình.
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
  %page-count = 3
}

TongNhip = {
  \key c \major \time 2/4
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
    \new Staff \with {
      instrumentName = #"S"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSopMot }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
    >>
    \new Staff \with {
      instrumentName = #"A"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacPhienKhucAltoMot }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff \with {
      instrumentName = #"T"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacPhienKhucTenorMot }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorMot
    >>
    \new Staff \with {
      instrumentName = #"B"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacPhienKhucBasMot }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \TongNhip \nhacPhienKhucSopHai
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.9
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = #"S"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSopBa }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff \with {
      instrumentName = #"A"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacPhienKhucAltoBa }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoBa
    >>
    \new Staff \with {
      instrumentName = #"T"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacPhienKhucTenorBa }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorBa
    >>
    \new Staff \with {
      instrumentName = #"B"
      %\magnifyStaff #(magstep +1)
    } <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacPhienKhucBasBa }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
  }
}
