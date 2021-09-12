% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bên Hang Đá" }
  composer = "Thơ: Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key f \major \time 2/4
  \partial 4 r8 <c e,>8 |
  <a f> <f d>16 <f d> <g b,!>8 <g b,> \bar "|."
  
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }

  c,4 r |
  r8 f c'16 (d) b!8 |
  c4 b!8 c16 c |
  a8 c, a' f |
  g4 r8 g8 |
  f4 r8 a |
  g8 a bf4 ~ |
  bf8 g16 (a) e8 g |
  f2 ~ |
  f8 r r4 |
  R2*2
  a8 gs4 a8 |
  a2 |
  g8 g4 a16 (g) |
  f4 r |
  r8 a a a16 gs |
  a8 c c4 ~ |
  c8 c16 b! c8 b16 (c) |
  \slashedGrace { \stemDown a16 ^(c \stemNeutral } d2) ~ |
  d4 c8 f |
  f4 r8 e |
  e r r d |
  d r r c |
  c c f, (g) |
  
  %{ % cách 3: khuông nhạc phụ không khớp nhịp với khuông nhạc chính
  \slashedGrace { a16 _(g } a2) ~
  <>^\markup { \hspace #-12 \score {
    \new Staff \with {
      \remove "Time_signature_engraver"
      \magnifyStaff #2/3
  } {
    \clef treble \relative c'' {
      \key f \major \time 2/4
      r4 r8 c |
      a f16 f g8 g
    }
  }
  }}
  a4 r
  %}
  
  % cách 2
  <<
    {
      \slashedGrace { a16 _(g } a2) ~ \noBreak |
      a4 r
    }
    {
      \context Staff = "ossia" \with {
        alignAboveContext = #"1"
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 6))
        fontSize = #-3
        \override StaffSymbol.staff-space = #(magstep -3)
        \remove "Time_signature_engraver"
        \remove "Clef_engraver"
        firstClef = #f
      } {
          \startStaff
          r4
          _\markup { \italic "(Đàn)" }
          r8 c |
          a <f d>16 <f d> <g b,!>8 <g b,>
          \stopStaff
      }
    }
  >>
  \bar "|."
  
  c8 c f, (g) \slashedGrace { a16 (g } a2) ~ |
  a4 \bar "||" \break
  
  \time 3/4
  \partial 4 bf8 (a) |
  g2 g4 |
  a4 g4. f8 |
  e2 g4 |
  g4. g8 a4 |
  a2 f4 |
  g4 e4. e16 (f) |
  d2 a'4 |
  bf4. bf8 g4 |
  a2. ~ \bar "||"
  
  \key d \major
  \time 2/4
  a4 r |
  r g8 g |
  g4 e8 e |
  e a ~ a4 ~ |
  a8 a a a |
  d2 ~ |
  d4 b8 d |
  a4. b8 |
  g g a (g) |
  e2 ~ |
  e4 cs8 a' |
  a4. a8 |
  e'4 cs8 cs \bar ".|:"
  
  \once \override Score.RehearsalMark.font-size = #2
  \mark \markup { \musicglyph #"scripts.coda" }
  <>^\markup { "Al" \bold " CODA" }

  d2 ~ |
  d ~ |
  d4 r \bar "||"
  
  \key f \major
  \repeat volta 2 {
    a8 bf (a) e |
    g4. g8 |
    g g f (g) |
    a2 ~ |
    a4 r |
    r r8 g16 (a) |
    d8 (c16 bf) g8 g |
    a2 ~ |
    a4 r8 a ^> |
    a4 ^> f8 f |
    f4 f8 ^> f ^> |
    bf ^> bf ^> ~ bf4
  }
  \alternative {
    {
    r8 c ^> c ^> r |
    }
    {
      <<
        {
          r8 c ^> c4 ~ |
          c4 r
          %\once \override Score.RehearsalMark.font-size = #0.1
          %\mark \markup { \musicglyph #"scripts.segno" }
        }
        {
          \new Staff = "ossia" \with {
            alignAboveContext = #"1"
            \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 6))
            \remove "Time_signature_engraver"
            fontSize = #-3
            \override StaffSymbol.staff-space = #(magstep -3)
            firstClef = ##f
          } {
              %\startStaff
              r4
              _\markup { \italic "(Đàn)" }
              r8 c |
              a f16 f g8 g
              %\stopStaff
          }
        }
      >>
    }
  }
  \bar "|." \break
  
  \key d \major
  \once \override Score.RehearsalMark.extra-offset = #'( -8 . 1 )
  \once \override Score.RehearsalMark.font-size = #2
  \mark \markup { \musicglyph #"scripts.coda" }
  <>^\markup { \bold "CODA" }
  d'2 ~ |
  d ~ |
  d ~ |
  d ~ |
  d4 r \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key f \major \time 2/4
  r4
  R2*2
  r8 f a16 (g) f8 |
  e4 d8 g16 g |
  c,8 c f d |
  e4 r8 e |
  c4 r8 f |
  e f g4 ~ |
  g8 e16 (d) c8 bf |
  a2 ~ |
  a8 r r4
  R2*2
  f'8 e4 e8 |
  f2 |
  e8 e4 e8 |
  d4 r8 f |
  f f16 e f8 f |
  e4. a8 |
  g4 g8 g |
  f8. f16 g8 bf |
  a4 r |
  r8 a gs4 ~ |
  gs8 a b!4 ~ |
  b!8 gs a4 ~ |
  a8 e f (d) |
  \slashedGrace { c16 (d } c2 ~) |
  c4 r |
  a'8 e f (d) |
  d (e16 d cs4) ~ |
  cs!
  
  \time 3/4
  \partial 4 cs!
  d2 f4 |
  e4 f4. d8 |
  bf2 bf4 |
  c4. d8 f4 |
  e2 d4 |
  bf4 c4. cs8 |
  d2 d8 (ef) |
  d4. d8 d4 |
  cs2. ~ |

  \key d \major
  \time 2/4
  cs4 r |
  r g'8 g |
  g4 e8 e |
  d cs ~ cs4 ~ |
  cs8 cs d e |
  fs8. fs16 fs8 fs |
  b4 r |
  d,8 d g4 |
  e (d) |
  b8 b b (d) |
  cs4 r |
  cs8 cs d d |
  g4 e8 g |
  fs4 g8 g |
  fs2 ~ |
  fs4 r
  
  \key f \major
  a8 bf (a) e |
  g4. g8 |
  g g f (g) |
  a2 ~ |
  a4 r |
  r r8 g16 (a) |
  d8 (c16 bf) g8 g |
  a2 ~ |
  a4 r8 f ^> |
  f4 ^> d8 d |
  d4 c8 ^> c ^> |
  d8 ^> d ^> ~ d4 |
  r8 <g e> ^> <a f> ^> r |
  r <g e> ^> <a f>4 ~ |
  <a f> r |
  
  \key d \major
  fs4 g8 g |
  fs2 |
  r8 g16 g g4 |
  r8 g fs4 ~ |
  fs r
}

nhacPhienKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  \key f \major \time 2/4
  r4 |
  R2
  e4. f16 f |
  d4. d16 df |
  c8 c g' e |
  f4 r |
  r8 c ^> b! ^> c ^> |
  d f ^> e ^> f ^> |
  g4. f16 (g) |
  d8. b!16 c8 c |
  f2 ~ |
  f8 g g a16 (g) |
  d8. d16 d8 \afterGrace f ( { \stemDown g16 f ) } \stemNeutral |
  c2 ~ |
  c4 r |
  f8 d4 f8 |
  g4 c,8 c |
  d d ^> d d16 cs |
  d4. d8 |
  c4. f8 |
  e4 e8 e |
  d8. d16 e8 g |
  f4 r |
  r8 d e4 ~ |
  e8 c d4 ~ |
  d8 e f4 ~ |
  f8 c d (c) |
  \slashedGrace { f16 (e } f2) ~ |
  f4 r |
  f8 c d (bf) |
  a2 ~ |
  a4
  
  \time 3/4
  \partial 4 a |
  bf2 d4 |
  c4 d4. f8 |
  g2 g8 (f) |
  e4. e8 d4 |
  d (cs) d |
  g,4 a4. a8 |
  bf2 f'4 |
  g4. f8 e (bf') |
  a2 a8 ^> a ^>
  
  \key d \major
  \time 2/4
  a4 ^> d,8 ^> d ^> |
  d g ~ g4 ~ |
  g r |
  r a8 a |
  a4 fs8 (e) |
  d4. d8 |
  g4 r |
  fs8 fs e4 ~ |
  e fs |
  g8 g gs4 |
  a r |
  a8 g fs f! |
  e4 a8 <bf a,> |
  <a d,>4 <bf g,>8 <bf g,> |
  <a d,>2 ~ |
  <a d,>4 r |
  
  \key f \major
  R2*3
  r4 r8 a, |
  a a d (cs16 d) |
  e2 ~ |
  e4 r |
  r r8 f ^> |
  f4 ^> d8 d |
  d4 r8 bf' |
  bf4 a8 ^> a ^> |
  g ^> g ^> ~ g4 |
  r8 c, ^> f r |
  r c ^> f4 ~ |
  f4 r |
  
  \key d \major
  <a d,>4 <bf g,>8 <bf g,> |
  <a d,>2 |
  r8 <bf g>16 <bf g> <bf g>4 |
  r8 <bf g,>8 <a d,>4 ~ |
  <a d,> r
}

% Lời
loiPhienKhucSop = \lyrics {
  \markup { \bold "Intr." }  \repeat unfold 6 { _ }
  Rộng quá mười phương
  Tình ôi miên trường rộng quá mười phương,
  ai người, ai người dương thế hiểu gì chữ thương
  Tôi quỳ tâm chiêm bao nhiêu nỗi niềm
  dâng lên như đại dương dâng lên như đại dương sóng cả
  Và thân tôi run run run run run run
  như cành lá
  
  run như cành lá Chúa ơi,
  con chắp tay khấn nguyện, hương kinh như ánh nến
  Sưởi ấm lại cõi lòng, Hiu hắt chốn rừng phong.
  Hôm nay đây biển tình đầy ứ,
  biển tình đầy ứ,
  Cây Yes -- se đã trổ một bông vàng
  Đàn tiên tri đã thắm điệu tình tang
  Trên cánh đồng xa chiên ăn bên đàn sói
  Trẻ giỡn cùng hổ mang
  A ha là tuổi vàng của thời Cứu Thế
  A ha A ha tang tinh tinh tang tinh tinh tinh tinh tang.
}

loiPhienKhucAlto = \lyrics {
  Rộng quá mười phương
  Tình ôi miên trường rộng quá mười phương,
  ai người, ai người dương thế hiểu gì chữ thương
  Tôi quỳ tâm chiêm bao nhiêu nỗi niềm
  dâng lên như đại dương dâng lên dâng lên như sóng cả
  đại dương sóng cả run run run run run run như cành lá.
  run như sóng cả
  Chúa ơi, con chắp tay khấn nguyện, hương kinh như ánh nến
  Sưởi ấm lại cõi lòng, Hiu hắt chốn rừng phong
  Hôm nay đây biển tình đầy ứ,
  biển tình đầy ứ, biển tình đầy ứ,
  Cây Yes -- se đã trổ một bông vàng
  Đàn tiên tri đã thắm điệu tình tang tính tính tang.
  Trên cánh đồng xa chiên ăn bên đàn sói
  trẻ giỡn cùng hổ mang
  A ha là tuổi vàng của thời Cứu Thế
  A ha A ha tang tinh tinh tang tinh tinh tinh tinh tang
}

loiPhienKhucBas = \lyrics {
  Tình ôi miên trường ôi miên trường rộng quá mười phương,
  ai người dương thế, ai người dương thế hiểu gì,
  hiểu gì tình thương
  Bên hang đá lạnh một chiều hiu quạnh
  Tôi quỳ tâm chiêm bao
  nỗi niềm dâng lên như đại dương dâng lên
  dâng lên như sóng cả đại dương sóng cả
  run run run run run run như cành lá
  
  run như sóng cả
  Ngài ơi, con chắp tay khấn nguyện,
  hương kinh như ánh nến
  Sưởi lại cả cõi lòng, Hiu hắt chốn rừng phong
  Hôm nay đây biển tình đầy ứ.
  Hôm nay đây biển tình đầy ứ,
  Cây Yes -- se đã trổ một bông vàng
  Các tiên tri ca nhằm khúc tinh tang tinh tình tang
  Cừu nằm kề beo đói
  A ha là tuổi vàng
  A ha của thời Cứu Thế
  A ha A ha tang tinh tinh tang tinh tinh tinh tinh tang.
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
  %page-count = 4
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
    \new Staff = "1" <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff = "2" <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff = "3" <<
      \new Voice = "beBas" {
        \clef bass \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
    %{ % cách 1
    {
      \skip 4
      \repeat unfold 26 { \skip 2 }
      <<
        \new Staff \with {
          alignAboveContext = #"3"
          fontSize = #-2
          \override StaffSymbol.staff-space = #(magstep -2)
          \remove "Time_signature_engraver"
        }
        \relative {
          r4 r8 c''
          ^\markup { \fontsize #1 \bold "(Đàn)" }
          |
          a f16 f g8 g
        }
      >>
    }
    %}
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1
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
