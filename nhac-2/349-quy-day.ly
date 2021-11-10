% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Quỳ Đây" }
  poet = "Thơ: Lm. Xuân Ly Băng"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  a8 c g (a16 c \bar ".|"
  d8) c d16 (f d c |
  a8) a g16 (c a g |
  f4) r | \break
  
  r4 a16 (bf a bf) |
  c8 c f,16 (g) a8 |
  a2 ~ |
  a4 g16 (bf g bf) |
  c8 c d16 (f) bf,8 |
  c4 g16 (c a g) \bar "||"
  \once \override Score.RehearsalMark.font-size = #2
  \mark \markup { \musicglyph #"scripts.coda" }
  <>^\markup { \bold "Al CODA" }
  
  f2 ~ |
  f4 r |
  R2*2
  r8 a bf a |
  a2 ~ |
  a4 a16 (bf a bf) |
  g4. d'8 |
  cs2 ~ |
  cs8 d b! e \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key d \major
  a,2 ~ |
  a8 d cs d |
  a4. b8 |
  a4 g |
  <<
    {
      fs2 ~ |
      fs4 r |
    }
    {
      \new Staff = "oasis" \with {
        alignAboveContext = #"1"
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 2))
        \remove "Time_signature_engraver"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        firstClef = ##f
      } {
        \key d \major
        r8
        _\markup { \fontsize #2 \italic "Đàn" }
        a16 a cs8 e |
        a r8 r4
      }
    }
  >>
  \break
  
  R2*2
  r8 d, e cs |
  d4 a |
  b8 b16 (a) fs8 fs |
  \slashedGrace { fs16 ( } a4.) fs16 (e) |
  d4 d16 (e d e) |
  
  \set Staff.printKeyCancellation = ##t
  \key g \major
  g2 ~ |
  g4 r \bar ".|:"
  R2*2
  r8 c e
  \afterGrace c8 ^({
    \override Flag.stroke-style = #"grace"
    \once \stemDown b16)}
  \revert Flag.stroke-style
  b2 ~ |
  b8 b g4 ~ |
  g8 fs a a |
  \slashedGrace { \once \stemDown a16 ^( } b4.) g8 \bar "||"
  
  \set Score.repeatCommands = #'((volta "1"))
  e4 fs |
  fs2 ~ |
  fs4 r \bar ":|."
  \set Score.repeatCommands = #'((volta #f))
  \set Score.repeatCommands = #'((volta "2"))
  e4 f! |
  g2 ~ |
  g4 r |
  \set Score.repeatCommands = #'((volta #f))
  R2
  r4 g16 (a g d) |
  e4. d'8 |
  d4 e,8 (g) |
  a2 ~ |
  a8 c a c |
  e4. d8 |
  d4 c16 (e d c) |
  g2 ~ |
  g4 r |
  
  \key c \major
  R2*2
  r8 b c d |
  e4. c8 |
  d4 c8 (d16 c) |
  b2 ~ |
  b4 r |
  R2*2
  r8 c d b |
  c4 g |
  a8 [a16 (g)] e8 g |
  g4. e16 (d) |
  c4 c16 (d c d) |
  f2 ~ |
  <<
    {
      f4 r
    }
    {
      \new Staff = "oasis" \with {
        instrumentName = "Đàn"
        alignAboveContext = #"1"
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 6))
        \remove "Time_signature_engraver"
        fontSize = #-2
        \override StaffSymbol.staff-space = #(magstep -2)
        firstClef = ##f
      } {
        \key d \major
        a8
        _\markup { \fontsize #2 \italic "Đàn" }
        cs g a16 cs
      }
    }
  >>
  
  \bar "|."
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(0 . -8)
  \mark \markup { \musicglyph #"scripts.segno" }
  
  <>^\markup { \halign #-2.2 \bold "CODA" }
  
  f,2 ~ |
  \once \override Score.RehearsalMark.font-size = #2
  \tweak extra-offset #'(-7.5 . -2.2)
  \mark \markup { \musicglyph #"scripts.coda" }
  
  f ~ |
  f4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  <f c>2 |
  <bf f>2 |
  <f c>4 <e c bf> |
  <f c a> r |
  r4 f16 (g f g) |
  a8 g d e |
  f2 ~ |
  f4 d16 (f d f) |
  e8 e g g |
  f4 f8 (e) |
  c2 ~ |
  c4 r |
  R2*3
  r8 g' f g |
  e4 a16 (bf a bf) |
  g4. bf8 |
  a g e g |
  fs4 e8 d |
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key d \major
  cs2 ~ |
  cs8 r r4 |
  r8 cs d d |
  fs4 e8 cs |
  d2 ~ |
  d4 r |
  r fs16 (g fs g) |
  a2 ~ |
  a8 a g e |
  fs4 fs8 (e) |
  d4 d8 d |
  cs4. cs8 |
  d4 cs |
  
  \set Staff.printKeyCancellation = ##t
  \key g \major
  b4 e8 c |
  d4. a'8 |
  b4 g8 (e) |
  e2 ~ |
  e ~ |
  e4 ds |
  e4 r8 g |
  fs4 fs8 fs |
  g4. e8 |
  e4 e |
  ds2 ~ |
  ds4 r8 a' |
  e4 e |
  d2 ~ |
  d4 r |
  R2
  r4 g16 (a g d) |
  e4. d8 |
  d4 e8 (g) |
  fs f! e d |
  c a' e a |
  gs4. gs8 |
  a4 a,8 (c) |
  b2 ~ |
  b4 r |
  
  \key c \major
  R2*2
  r8 c e f |
  g4. g8 |
  a4 a |
  g2 ~ |
  g4 r |
  R2*2
  r8 e f d |
  e4 e8 (d) |
  c8. b16 c8 c |
  b4. b8 |
  c4 bf |
  a2 ~ |
  a4 r |
  c4. c8 |
  d4 d |
  c4 r
}

nhacDiepKhucBas = \relative c {
  <f f,>2 |
  <bf, bf,> |
  <c c,> |
  <f c f,>4
  
  c16 (d c d) |
  f2 ~ |
  f8 e f c |
  d4 d16 (f d f) |
  g2 ~ |
  g8 g bf g |
  a4 bf8 (c) |
  <a f>2 ~ |
  <a f>4 a, |
  d4. e8 |
  f4 e8 (f16 e) |
  d2 ~ |
  d4 d8 d |
  c4 a'16 (bf a bf) |
  g4. g8 |
  a4. a8 |
  d,4 g8 g |
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key d \major
  a2 ~ |
  a8 r r4 |
  r8 g fs g |
  a4 a |
  d,2 ~ |
  d4 d16 (e d e) |
  fs8 e d (cs) |
  cs cs fs16 (g) e8 |
  fs4 e8 (a) |
  d,4. d8 |
  g a b4 |
  a <g a,> |
  <fs b,> <fs d> |
  
  \set Staff.printKeyCancellation = ##t
  \key g \major
  <<
    {
      \voiceOne
      g4 c8 a |
      b4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,2 ~ |
      g4
    }
  >>
  \oneVoice
  r4 |
  R2
  r4 e' |
  a4. a8 |
  g4
  <<
    {
      fs4 |
      g r8 c |
      a4 a8 a |
      g4. b8 |
      c4 c |
      b4. b8 |
      c b a r |
      c4 c |
      b2 ~ |
      b4
    }
    {
      b,4 |
      e r8 c |
      d4 d8 d |
      g4. g8 |
      a4 a, |
      b4. b8 |
      c b a r |
      a'4 d, |
      g2 ~ |
      g4
    }
  >>
  r8 d |
  d4 e8 (g) |
  a4 g16 (a g d) |
  e4. d8 |
  d4 c8 (e) |
  d d e g |
  a4 c8 (a) |
  e4. e8 |
  f!4 fs |
  g2 ~ |
  g4 <e c>8 (<f! d>) |
  
  \key c \major
  <<
    {
      g4. g8 |
      a (c) a4 |
      g2 ~ |
      g8
    }
    {
      e4. e8 |
      f (a) f4 |
      e2 ~ |
      e8
    }
  >>
  c8 ^> d ^> e ^> |
  f ^> d ^> e ^> fs ^> |
  g2 ~ |
  g4 e |
  e4. a8 |
  a4 d,8 (f) |
  g4 d8 (g) |
  c,4 c |
  f8. g16 a4 |
  g
  <<
    {
      f |
      e e |
      d2 ~ |
      d4 r |
      a'4. a8 |
      b4 b |
      a
    }
    {
      g,4 |
      a c |
      f,2 ~ |
      f4 r |
      f'4. f8 |
      b,4 b |
      <c f,>4
    }
  >>
  r4
}

% Lời
loiDiepKhucSop = \lyricmode {
  \markup { \bold "Intr." }
  \repeat unfold 6 { _ }
  Quỳ đây môi nở hoa kinh,
  Quỳ đây tô thắm mộng xinh tuổi vàng,
  Cho cánh hoa tang lên mầu hy vọng
  giữa ngang trái đời.
  Lên mầu hy vọng giữa ngang trái đời.
  Con đến quỳ đây Mẹ ơi
  mắt hòa lệ khổ sáng ngời niềm tin
  Dâng chén sầu phiền
  Mẹ ơi bên tòa Mẹ đọng dịu hiền như sương,
  hiền như sương.
  Thuyền đời trái gió mười phương,
  Chén đời đắng đót đau thương ngàn trùng
  Mồ hôi nước mắt tổ tông lưu truyền.
  Mắt thắm trời duyên,
  Mẹ ơi con quỳ dâng Mẹ lời nguyền thương đau,
  vàng.
}

loiDiepKhucAlto = \lyricmode {
  \repeat unfold 5 { _ }
  Quỳ đây môi nở hoa kinh,
  Quỳ đây tô thắm mộng xinh tuổi vàng,
  lên mầu hy vọng
  lên mầu hy vọng
  lên mầu hy vọng
  ngang trái đời.
  hy vọng giữa ngang trái đời.
  Quỳ đây
  Con đến quỳ đây Mẹ ơi
  mắt hòa lệ khổ sáng ngời niềm tin
  sáng niềm tin.
  Dâng chén sầu phiền
  quỳ đây Mẹ ơi
  tòa Mẹ đọng dịu hiền như sương,
  dâng
  hiền như sương.
  Thuyền đời trái gió mười phương,
  thuyền đời trôi nổi
  Chén đời đắng đót đau thương ngàn trùng
  Mồ hôi nước mắt tổ tông lưu truyền.
  Mắt thắm trời duyên,
  Mẹ ơi con quỳ dâng Mẹ lời nguyền thương đau,
  vàng, tô thắm tuổi vàng.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 4 { _ }
  Quỳ đây
  Môi nở hoa kinh
  Quỳ đây tô thắm mộng xinh tuổi vàng.
  Quỳ đây cho cánh hoa tang lên hy vọng,
  lên mầu hy vọng
  hy vọng ngang trái đời,
  hy vọng giữa ngang trái đời.
  Quỳ đây con quỳ đây
  dịu lắm Mẹ ơi
  Đến đây Mẹ ơi
  mắt quá khổ rạng ngời niềm tin
  \override Lyrics.LyricText.font-shape = #'italic
  sáng niềm tin.
  \revert Lyrics.LyricText.font-shape
  Quỳ đây dâng Mẹ,
  quỳ đây Mẹ ơi
  tòa Mẹ đọng dịu hiền như sương,
  êm mát như sương.
  hiền như sương.
  Trái gió mười phương,
  Thuyền đời trái gió mười phương,
  thuyền đời nổi trôi,
  chén đời đau thương ngàn trùng.
  Quỳ đây dâng bát lao lung,
  Mồ hôi nước mắt tổ tông lưu truyền.
  Mẹ nhìn mắt thắm tròi duyên
  thắm duyên Mẹ ơi
  con dâng Mẹ lời nguyền thương đau.
  vàng tô thắm tuổi vàng.
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
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  print-page-number = #f
  %page-count = #1
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
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
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff = "2" <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff = "3" <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
