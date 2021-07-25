% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Cửa Ơi" }
  composer = "Ý: Tv. 23"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  \key c \major \time 3/4
  \partial 4 r4 |
  r4 r8 e ^> e ^> c ^> |
  d2 d8 ^> b ^> |
  c2. ( |
  c4) g8 _( a) c c |
  c2 g8 _( c) |
  
  \time 2/4
  d2 ^( |
  d4) r |
  r2 |
  r8. e16 e8 e |
  a, r16 a f'8 e |
  
  d8 d d d |
  e2 ^( |
  e4)
  <e gs,>8 <e gs,> |
  a,8. a16 <d a>8 <d a d,> |
  <g, d>4 r
  
  r4 r8 e' ^> e ^> c ^> |
  d2 d8 ^> b ^> |
  c2. ( |
  c4) g8 _( a) c c |
  c2 g8 _( c) |
  
  \time 2/4
  d2 ^( |
  d4) r |
  r2 |
  r8. e16 e8 e |
  a, r16 a f'8 e |
  
  %binh vinh
  d8 d <e c> <d b> |
  <c \=1( e \=2( >2 |
  <c \=1) e \=2) >4 r8
  \once  \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \once \override Score.RehearsalMark.font-shape = #'italic
  \once \override Score.RehearsalMark.font-series = #'bold
  \mark "Tận"
}

nhacDiepKhucAlto = \relative c'' {
  \key c \major \time 3/4
  \partial 4 r4 |
  r4 r8 c c e, |
  g2 a8 _\pp f |
  e4 g8. _> g16 g8 g |
  a4 g8 _( a) c c |
  c2 g8 _( c) |
  
  b2 _( |
  b4) r |
  r2 |
  r8. c16 c8 g |
  f r16 f16 a8 c |
  
  b b a a |
  gs2 _( |
  gs4)
  
  \skip 4
  \skip 2
  \skip 2
  
  r4 r8 c c e, |
  g2 a8 _\pp f |
  e4 g8. _> g16 g8 g |
  a4 g8 _( a) c c |
  c2 g8 _( c) |
  
  b2 _( |
  b4) r |
  r2 |
  r8. c16 c8 g |
  f r16 f16 a8 c |
  
  b a g f |
  a2 ( |
  a4) r8
}

nhacDiepKhucBas = \relative c {
  \key c \major \time 3/4
  \partial 4 c8[( d)] |

  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  g2.( |
  g4) g8-> _\f ( [a]) f d |
  c4 e8. -> e16 e8 e |
  f4 g8( a) c c |
  c2 b8( a) |
  
  \time 2/4
  g2 ( |
  g4) a8 a |
  a c e,( d) |
  g4. c,8 |
  f r16 f f8 fs |
  
  g8 g f f |
  e2( |
  e4)
  
  <e' e,>8 <d e,> |
  <c f,>8. <c f,>16 <c fs,>8 <c fs,> |
  <b g>4
  c,8( d)
  
  \time 3/4
  g2.( |
  g4) g8-> _\f ( [a]) f d |
  c4 e8. -> e16 e8 e |
  f4 g8( a) c c |
  c2 b8( a) |
  
  \time 2/4
  g2 ( |
  g4) a8 a |
  a c e,( d) |
  g4. c,8 |
  f r16 f f8 fs |
  g8 d \stemDown g <g g,> |
  <g \=1( c, \=2_( >2 |
  <g \=1) c, \=2) >4 r8 \bar "|."
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \key c \major \time 2/4
  \partial 8 g8 |
  g8. g16 c8 a16( g) |
  d2 _( |
  d4) r |
  r g8 g |
  a4 (c8 d) |
  e2 |
  c8 c e _( d16 c) |
  g8 g a16 _( g) e _( d) |
  g2 ^( |
  g2 |
  g8) g a b |
  
  \time 3/4
  c2 r4 \bar "||"
}

nhacPhienKhucAlto = \relative c' {
  \skip 8
  \skip 2
  \skip 2
  \skip 4 r4
  r \skip 4
  \skip 2
  \skip 2
  e8 e g( f) |
  e e d c |
  b2 _( |
  b |
  b8) b d f |
  e2 r4
}

nhacPhienKhucBas = \relative c {
  r8 |
  r2 |
  r4 r8 f8 |
  f e16( d) c( d) g8 |
  g4 g8 g |
  f4( e8 g) |
  c2( |
  c4) r |
  r2 |
  r2 |
  g8 g b( a16 g) |
  d8 g f d |
  c2 c8 (d)
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

% Lời điệp khúc
loiDiepKhucAlto = \lyricmode {
  Hãy cất đầu lên, cất đầu lên
  (mau vươn cao lên nữa)
  Để Vua vinh quang ngự quá
  Chính Chúa dũng lực Thượng Đế oai phong trong cơn chinh chiến.
  
  Hãy cất đầu lên, cất đầu lên
  (mau vươn cao lên nữa)
  Để Vua vinh quang ngự quá
  Chính Chúa dũng lực Thượng Đế thiên binh vinh thắng muôn đời.
}

loiDiepKhucBas = \lyricmode {
  Cửa ơi Hỡi cửa muôn đời
  mau vươn cao lên nữa
  Để Vua vinh quang ngự qua
  Vua vinh quang đó là ai
  quyền lực Thượng Đế oai phong trong cơn chinh chiến.
  (Đàn) _ _ _ _ _ _
	Cửa ơi Hỡi cửa muôn đời
  mau vươn cao lên nữa
  Để Vua vinh quang ngự qua
  Vua vinh quang đó là ai
  quyền lực Thượng Đế thiên binh vinh thắng
  <<
    { muôn }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    ngàn
	  }
  >>
	đời.
}

% Lời phiên khúc
loiPhienKhucMotSop = \lyricmode {
  \set stanza = #"1."
  Địa cầu và cả muôn loài đều là của Chúa
  Vì Ngài thiết lập trên nước biển khơi ở trên sông nước.
}

loiPhienKhucHaiSop = \lyricmode {
  \set stanza = #"2."
  Kìa là dòng giống nhân hiền
  ngàn đời diễm phúc
  Là người chẳng hề vương vấn phù vân
  mừng vui muôn nơi.
}

loiPhienKhucMotBas = \lyricmode {
  \set stanza = #"1."
  Thế giới với cả dân cư đều là của Chúa
  Và đặt đất liền ở trên sông ngòi. Cửa
}

loiPhienKhucHaiBas = \lyricmode {
  \set stanza = #"2."
  Những giữ tấm lòng trinh nguyên ngàn đời diễm phúc
  Được vào thánh điện sống vui muôn đời.
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
  %page-count = #1
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  %score-system-spacing = #'((basic-distance . 15))
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
  \new ChoirStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 14)
                            (padding . 1))
  }
  <<
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = nhacThamChieuAlto \nhacDiepKhucAlto
      \new Lyrics \lyricsto nhacThamChieuAlto \loiDiepKhucAlto
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacDiepKhucBas
        }
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

%\pageBreak

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = nhacThamChieu \nhacPhienKhucSop
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucMotSop
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucHaiSop
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacPhienKhucBas
        }
        \new Lyrics \lyricsto beBas \loiPhienKhucMotBas
        \new Lyrics \lyricsto beBas \loiPhienKhucHaiBas
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
