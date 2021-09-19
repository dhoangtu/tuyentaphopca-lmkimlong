% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hướng Về Chúa" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  c4. (d16 c) |
  a4. f8 |
  g a16 (g) f8 (g) |
  c2 ~ |
  c8 a d d16 (e) |
  \slashedGrace { d16 ( } c4.) d16 (c) |
  a2 ~ |
  a4 r |
  f4. f8 |
  e f g g |
  g4 c8 (b!) |
  c c f, (g) |
  a4. bf8 |
  a4 g |
  f2 ~ |
  f4 \bar "|"
  
  \compoundMeter #'((2 3 4))
  % không kiểm tra nhịp
  % không hiển thị dấu thăng/giáng trong chú ý
  \cadenzaOn
  \override Voice.AccidentalCautionary.stencil = ##f
  c'4 \bar "|"
  c4. c8 \slashedGrace { c16 ( } d8) [c] \bar "|"
  a2 gs4 \bar "|"
  a4. a8 g!? [a] \bar "|"
  bf4 bf \bar "|"
  a2 f4 \bar "|"
  g4. g8 f [g] \bar "|"
  a2 ~ \bar "|"
  a4 f \bar "|"
  d'4. c8 d [bf] \bar "|"
  a2 gs4 \bar "|"
  a4. a8 gs! [a] \bar "|"
  bf4 bf \bar "|"
  a2 f4 \bar "|"
  g!?4. g8 a [g] \bar "|"
  f2 ~ \bar "|"
  f4 r \bar "||"
}

nhacPhienKhucBas = \relative c'' {
  a4. (g16 a) |
  f4. a,8 |
  c f d4 |
  e2 ~ |
  e8 f a [bf] |
  a4. g8 |
  f2 ~ |
  f4 r |
  f4. f8 |
  e d e f |
  c4 a'8 (gs) |
  a f d (c) |
  f4. g8 |
  c,4 c8 ^(bf) |
  a2 ~ |
  a4 \bar "" \break
  
  \compoundMeter #'((2 3 4))
  % không kiểm tra nhịp
  % không hiển thị dấu thăng/giáng trong chú ý
  \cadenzaOn
  \override Voice.AccidentalCautionary.stencil = ##f
  a'4
  a4. a8 bf [a] 
  f2 e4
  f4. f8 e [f]
  g4 g
  f2 d4
  c4. c8 a [c]
  f2 ~
  f4 d
  bf'4. a8 bf [g]
  f2 e4
  f4. f8 e [f]
  g!?4 g
  f2 d4
  c4. c8 f [e]
  f2 ~
  f4 r
}

nhacDiepKhucBaBeSop = \relative c'' {
  <>^\markup { \halign #-1 \bold \huge "Điệp khúc 3 bè" }
  R2*6
  c4. (d16 c) |
  a4. f8 |
  g a16 (g) f8 (g) |
  a2 ~ |
  a8 a d d16 (f) |
  \slashedGrace { d16 ( } c4.) d16 (c) |
  a2 ~ |
  a4 r |
  R2*3
  c4. d16 (c) |
  g8 bf d d |
  c2 ~ |
  c4 c8 (b!) |
  c c f, (g) |
  a4. bf8 |
  a4 g |
  f2 ~ |
  f4 \bar "|."
}

nhacDiepKhucBaBeAlto = \relative c'' {
  R2*3
  c4. (d16 c) |
  a4. f8 |
  g8 a16 (g) f8 (g) |
  a2 |
  f |
  e4 (d) |
  cs8 cs d (e) |
  f4 a8 bf16 (a) |
  g4. a16 (g) |
  f2 |
  f4. f8 |
  e f a a |
  g2 ~ |
  g4 a8 a |
  g2 ~ |
  g4 bf8 bf |
  a4 a8 a |
  g4 r |
  r f8 (e) |
  f f f f |
  f4 e |
  c2 ~ |
  c4
}

nhacDiepKhucBaBeBas = \relative c' {
  c4. (d16 c) |
  a4. f8 |
  g8 a16 (g) f8 (g) |
  a2 |
  f4. (d8) |
  c2 |
  f ~ |
  f4 a, |
  c d8 (bf) |
  a a bf (a) |
  d4 f8 g16 (f) |
  e4. e8 |
  f2 ~ |
  f4 r |
  R2
  c4. d16 (c) |
  a8 c f f |
  e2 ~ |
  e4 e8 e |
  f4 f8 f |
  <e c>4 r |
  r f8 (e) |
  d d d df |
  c4 c8 (bf) |
  <a f>2 ~ |
  <a f>4
}

% Lời
loiPhienKhucSopMot = \lyrics {
  Chúa ơi! Hồn con hướng về Chúa,
  tựa hoa hướng dương thắm mầu.
  Như nai vàng tìm đến suối trong
  hồn con trông đợi Chúa giữa cơn u sầu.
  \set stanza = "1."
  Bơ vơ kiếp sống gian trần, hồn con đêm ngày thao thức,
  Chúa ơi! Hồn con mong về bên Chúa.
  Tàn héo trong vũng lệ sầu,
  đời con ê chề muôn nỗi khát mong nghỉ yên trong Chúa nhân hiền.
}

loiPhienKhucSopHai = \lyrics {
  \repeat unfold 29 { _ }
  \set stanza = "2."
  Tim con mang vết thương tình,
  từ lâu in hình cao sáng,
  Chúa ơi! Hồn con ghi tạc tên Chúa.
  Ngày tháng mơ ước thiên đường,
  trần gian như lò nung nấy
  đến khi nghỉ yên trong Chúa nhân từ.
}

loiPhienKhucSopBa = \lyrics {
  \repeat unfold 29 { _ }
  \set stanza = "2."
  Lang thang trong chốn lưu đày,
  hồn con như đàn nai khát,
  Chúa ơi! Hồn con mong về bên Chúa.
  Ngày tháng mơ suối diệu huyền,
  vượt qua muôn đường gai đá, Chúa ơi!
  Hồn con mong Chúa đêm ngày.
}

loiDiepKhucBaBeSop = \lyrics {
  Chúa ơi! Hồn con hướng về Chúa tựa hoa hướng dương thắm mầu.
  Như nai vàng tìm đến suối trong.
  Hồn con trông đợi Chúa giữa cơn u sầu.
}

loiDiepKhucBaBeAlto = \lyrics {
  Chúa ơi! Hồn con hướng về Chúa, con hướng về,
  về bên Chúa, hoa hướng dương thắm mầu.
  Như nai vàng tìm đến suối trong, đến suối trong,
  đến suối trong, đến suối trong,
  hồn con trông đợi giữa cơn u sầu.
}

loiDiepKhucBaBeBas = \lyrics {
  Chúa ơi! Hồn con hướng về Chúa, hướng về Chúa,
  hồn con hướng về, về bên Chúa, hoa hướng dương đẹp mầu.
  Như nai vàng tìm đến suối trong,
  đến suối trong, đến suối trong,
  hồn con trông đợi giữa cơn u sầu.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  page-count = 2
  %systems-per-page = 4
  ragged-bottom = ##t
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
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
        \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucBas }
        \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  } 
}

\pageBreak

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucBaBeSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucBaBeSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucBaBeAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucBaBeAlto
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBaBeBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBaBeBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  } 
}
