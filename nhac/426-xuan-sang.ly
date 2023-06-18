% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xuân Sang" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSolo = \relative c' {
  \key g \major
  R2*43
  
  r4 r8 fs16 fs  |
  a4. e8 |
  fs d4 fs8 |
  \slashedGrace { a16 ( } g2) ~ |
  g ~ |
  g ~ |
  g4 r
}

nhacPhienKhucSop = \relative c'' {
  \key f \major 
  a4. d,16 d |
  g4. g8 |
  f g4 a8 |
  a4 r8 a |
  g f4 g8 |
  e4. a,8 |
  f' e4 cs8 |
  d2 ~ |
  d ~ |
  d4 r |
  
  R2*2 \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  b'8 b ~ b4 |
  R2
  c8 c ~ c4 |
  b8 e4 d8 |
  d4. \slashedGrace { b16 ( } d8) g, a16 (g) e4 ( |
  fs8) e d fs |
  a2 ~ |
  a8 b fs4 ~ |
  fs8 g e g |
  a4. d16 d |
  d4 b |
  b8 r16 a b8 cs |
  d2 ~ |
  d8 c16 (d) bf8 a |
  g2 ~ |
  g4 r |
  R2*2
  r4 c8 c |
  bf4. a8 |
  fs g ef c |
  \slashedGrace { c16 ( } d2) |
  r8 b'4 ^> b8 |
  b4 r8 c ^> ~ |
  c c c8. b16 |
  a8 a4 cs8 |
  d2 \break
  
  b16 (d) b8 a4 ~ |
  a r |
  r8 b16 b c8 b |
  a2 |
  e' _> |
  d4 c |
  b c8 c |
  d4 \tuplet 3/2 { c8 d c } |
  b2 ~ |
  b4 r \bar "|." \break
  
  d8 ^> d ^> r c |
  c c4 e8 |
  e4. a,8 |
  c d4 c8 |
  b2 |
  a8 ^> a ^> r b |
  g a4 b8 |
  fs4. g8 |
  e16 (fs) e4 d8 |
  g2
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  R2*12
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  g8 g ~ g4 |
  R2
  e8 e ~ e4 |
  e8 g4 g8 |
  fs4. fs8 |
  e8 d cs4 ( |
  d8) c c c |
  b2 ~ |
  b4 r |
  R2
  r8 e16 e e8 g16 g |
  g8 g g fs |
  g4. e16 e |
  a8 a g g |
  fs4 fs8 fs |
  d2 ~ |
  d4 r |
  R2*2
  r4 a'8 a |
  g4. ef8 |
  d d c c |
  a2 |
  r8 g'4 _> g8 |
  g4 r8 e _> ~ |
  e e e8. d16 |
  c8 d4 g8 |
  fs2 ~ |
  
  fs4 fs16 (g) fs8 |
  e4 r |
  r8 g16 g a8 g |
  fs2 |
  g4 _> a8 g |
  fs2 |
  g4 e8 e |
  g4 \tuplet 3/2 { e8 g e } |
  d2 ~ |
  d4 r |
  
  b'8 ^> b ^> r a |
  a a4 b8 |
  c4. fs,8 |
  a b4 a8 |
  g2 |
  d8 ^> d ^> r g |
  e fs4 e8 |
  ds4. e8 |
  c c4 c8 |
  b2
}

nhacPhienKhucBas = \relative c' {
  R2*8
  r4 g8 g |
  d4. d8 |
  d g4 b8 |
  \slashedGrace { \stemDown g16 ^(b } d2) \stemNeutral |
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  g,8 g ~ g4 |
  r8 a16 (g) d8 g |
  a a ~ a4 |
  g8 c,4 c8 |
  d4 d |
  e8 g a4 |
  d,4. d8 |
  e2 ~ |
  e4 r8 e |
  ds e c r |
  r c'16 c c8 b16 b |
  b8 b a d |
  g,4. g16 g |
  fs8 fs e e |
  d4 <d' d,>8 <c d,> |
  <bf g g,>2 ~ |
  <bf g g,>4 d8 d |
  c4. c8 |
  bf c c16 (bf) g8 |
  \slashedGrace { g16 ( } a4) r8 fs |
  g g ef c |
  d <g bf,> <g c,> <g ef> |
  <fs d>2 |
  d8 ^> g4 ^> g8 |
  g4 e8 ^> a ^> ~ |
  a a a8. gs16 |
  a8 f!4 e8 |
  d2 ~ |
  
  d |
  a'8. a16 a8 fs16 (e) |
  d2 ~ |
  d |
  <a' cs,>2 _> |
  <a d,> |
  g4
  <<
    {
      g8 g |
      g4 \tuplet 3/2 { g8 g g } |
      g2 ~ |
      g4 r
    }
    {
      c,8 c |
      b4 \tuplet 3/2 { c8 b c } |
      g2 ~ |
      g4 r
    }
  >>
  
}

% Lời
loiPhienKhucSop = \lyricmode {
  Suốt một giòng thơ Kinh sầu ngân viễn xứ,
  Khóc đôi bờ tư lự,
  Giòng nước tím về đâu
  
  Xuân Sang Xuân sang,
  Lòng đất lên hương
  Bóng thời gian chuyển độ đường trăng sao,
  chín giòng tâm sự xôn xao
  Ô xôn xao tâm sự,
  Hồn thơ xuân đến cũng nao nao buồn.
  Thắp nến lên cho nhạc thơ sầu vạn thuở
  Vươn cao lên,
  vươn cao lên như ngàn sợi trầm hương.

  Cõi thế gian
  dâng lên cửa thiên đường,
  Hm __ _ _ _
  Xin ân phúc cho bốn phương trời.
  
  Xuân sang kinh lên như cánh gió,
  Chiều thôi xuống cô đơn.
  Xuân sang Thánh đường vang tiếng ngọc sáng cả đạo từ bi.
}

loiPhienKhucAlto = \lyricmode {
  Xuân Sang Xuân sang,
  Lòng đất lên hương
  Bóng thời gian chuyển độ đường trăng sao,
  ô xôn xao, ô xôn xao tâm sự, tâm sự
  ô xôn xao ý thơ xuân về nao nao buồn.
  Thắp nến lên cho nhạc thơ sầu vạn thuở
  Vươn cao lên,
  vươn cao lên như ngàn sợi trầm hương.
  
  cõi thế gian
  dâng lên cửa thiên đường,
  Hm __ _ _ _ _
  Xin ân phúc cho bốn phương trời.
  
  Xuân sang kinh lên như cánh gió,
  Chiều thôi xuống cô đơn.
  Xuân sang Thánh đường vang tiếng ngọc sáng cả đạo từ bi.
}

loiPhienKhucBas = \lyricmode {
  Bên ni cầu một chiều nghe pháo nổ
  Xuân sang,
  có gì khi Xuân sang
  đất thật rền hương
  Vòng thời gian chuyển đường trăng sao,
  Chín dòng tâm sự
  ô xôn xao, ô xôn xao tâm sự, tâm sự
  ô xôn xao ý thơ
  xuân về nao nao buồn.
  Thắp nến lên cho tràng hoa kinh bừng nở,
  nào thắp nến lên để thơ nhạc sầu vạn thuở
  Nào vươn cao lên,
  nào vươn cao lên như muôn sợi trầm hương.
  
  Dâng lên cửa thiên đàng
  Hm __ _ _
  <<
    {
      Xin ân ban cho muôn muôn nơi.
    }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    Xin ân lộc cho mọi phương trời.
	}
  >>
}

loiPhienKhucSolo = \lyricmode {
  \set stanza = "Solo Nữ:"
  Xin ân phúc cho bốn trời sương gió
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
  print-page-number = #f
  %page-count = #1
}

TongNhip = {
  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSolo {
          \TongNhip \nhacPhienKhucSolo
        }
      \new Lyrics \lyricsto beSolo \loiPhienKhucSolo
    >>
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
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
