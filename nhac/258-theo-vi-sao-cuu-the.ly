% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Theo Vì Sao Cứu Thế" }
  composer = "Thơ: Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSopMot = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  R2*5
  r8
  
  <>^\markup { \halign #40 " " }
  c c c \bar ".|:"
  c2 ~ |
  c4 r |
  r8 bf ^\p bf bf |
  bf4 g ^\f ^> ~ |
  g8 d' d c |
  c2 ~ |
  c8 c a a |
  g4 r |
  r8 d'8 ^\p d d |
  d2 ~ |
  d4 r |
  R2
  r4 r8 g,16 g |
  c2 ~ |
  c4 r8 f,16 f |
  bf8 bf g16 g c8 \bar "||"
  <>^\markup { "Al" \bold " CODA" }
  f,2 ~ |
  \partial 4 f4 \bar "|." \break
  
  \set Staff.shortInstrumentName = "Solo"
  R2
  r4 r8 f |
  f g4 f8 |
  a4. e16 e |
  f4. d8 | \break
  \break \set Staff.shortInstrumentName = ""
  d \slashedGrace { d ( } e4) d8 |
  c2 ~ |
  c4 r8 bf'16 bf |
  g4. \slashedGrace { f8 ( } e) |
  e d'4 c8 |
  c4. f,16 a |
  e4. c8 |
  f f e (f) |
  g2 ~ |
  g \bar "|." \break
  
  % Kết thúc solo, bè Sop trở lại dòng 1
  \set Staff.shortInstrumentName = "S"
  R2
  r8 d' c bf |
  af4 af ^> ~ |
  af8 af g4 |
  % chỉ cần hiển thị 1 lần, ẩn đi từ đây
  \break \set Staff.shortInstrumentName = ""
  c8. f,16 bf8 bf |
  bf g (g4) |
  d'8. ^> g,16 c8 c |
  c \slashedGrace { bf16 ( } a8) ~ a4 |
  a8. ^> g16 a8 f |
  bf ^> bf ^> r4 |
  r c8 ^> c ~ |
  c2 ~ |
  c4 r |
  R2
  r8 f,16 (g) f8 f |
  bf4 \fermata r8 b! |
  c2 ~ \noBreak |
  c4 r |
  
  \time 3/4
  f, f g |
  a bf2 |
  bf4. ^> a8 d,4 |
  e2 ^> f4 |
  g2 d4 |
  e c4. e8 |
  f2. ~ |
  f4 r c' |
  a4. bf8 bf4 |
  g2 g4 |
  f e d |
  c f4. g8 |
  a2 a4 |
  bf g4. b!8 |

\time 2/4
  c2 ~ |
  c8 c c
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(3 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  c \bar "|." \break
  <>^\markup {\bold "CODA" }
  f,4 ~ f8 r |
  R2
  r8 f16 f bf8 g16 g |
  c8 d c16 c f8 |
  e4 \fermata r8 e |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAltoMot = \relative c' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  R2*5
  r8 f g g |
  f2 ~ |
  f4 r |
  r8 d ^\p e e |
  d2 ~ |
  d4 r |
  r8 e f f |
  e2 ~ |
  e4 r |
  r8 bf' ^\p f bf |
  a4 a ^> ^\f ~ |
  a8 a d, df |
  c2 |
  r8 d16 d g4 ~ |
  g8. g16 f8 f |
  g e r d16 d |
  d8 d e16 e e8 |
  c2 ~ |
  c4
  
  \set Staff.shortInstrumentName = "S"
  r8 c' c bf |
  a2 ~ |
  a8 r d4 ^> ~ |
  d8 d cs r |
  r4 d ^> ~ |
  \set Staff.shortInstrumentName = ""
  d b! |
  c8. bf16 a8 g |
  f4 d' ^> ~ |
  d8 d c r |
  r4 bf8 ^> r |
  r8 bf a r |
  r4 bf8 ^> r |
  r c bf4 ~ |
  bf8 bf b! b |
  c2
  
  % Kết thúc solo, bè Alto trở lại dòng 2
  \set Staff.shortInstrumentName = "A"
  R2
  r8 f, f e |
  f4 f ^> ~ |
  f8 f e4 |
  % chỉ cần hiển thị 1 lần, ẩn đi từ đây
  \set Staff.shortInstrumentName = ""
  e8. e16 d8 d |
  d c ~ c4 |
  f8. ^> f16 e8 e |
  e f ~ f4 |
  a8. ^> g16 a8 f |
  d ^> d ^> r4 |
  r e8 ^> f ~ |
  f2 ~ |
  f4 r |
  R2
  r8 c16 (d) c8 c |
  f4 \fermata r8 f |
  e2 ~ |
  e4 r |
  
  \time 3/4
  c c c |
  c d2 |
  d4. ^> cs8 d4 |
  c2 ^> d4 |
  d2 d4 |
  c4 bf4. bf8 |
  a2. ~ |
  a4 r e' |
  f4. d8 d4 |
  c2 e4 |
  c c bf |
  g d'4. d8 |
  cs2 d4 |
  d c4. f8 |
  
  \time 2/4
  e2 ~ |
  e8 e f a |
  c,4 ~ c8 r |
  r d16 d g8 e16 e |
  a4 r8 d,16 d |
  g8 g a16 a c8 |
  bf4 \fermata r8 <c g> |
  <c f,>2 ~ |
  <c f,>4
}

nhacPhienKhucTenorMot = \relative c {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  R2
  r8 d16 d g8 e16 e |
  <<
    {
      \voiceOne
      r8 f16 f bf8 g16 g |
      c4. bf16 a
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      a4 r |
      e4. r8
    }
  >>
  \oneVoice
  %<c e,>4. bf16 a |
  <g f d>8 <g f d> r <c e,> |
  \once \autoBeamOff
  <f, c> a bf g |
  a2 ~ |
  a4 r |
  r8 bf ^\p bf bf |
  bf2 ~ |
  bf4 r |
  r8 g f g |
  g4 g ^\f ^> ~ |
  g8 g bf c |
  \slashedGrace { e,16 ( } f2 ^\p) ~ |
  f8 f d e |
  f4 r |
  r8 e16 e a8 f16 f |
  bf2 ~ |
  bf8 bf16 bf c8 c |
  bf16 bf c8 a8. a16 |
  bf4 bf16 bf bf8 |
  a2 ~ |
  a4
  
  \set Staff.shortInstrumentName = "A"
  \set Staff.explicitClefVisibility = #end-of-line-invisible
  \clef treble
  r8 e' f g |
  f2 ~ |
  f8 r f4 ^> ~ |
  f8 f e r |
  r4 a ^> ~ |
  \set Staff.shortInstrumentName = ""
  a g8 (f) |
  e8. d16 c8 bf |
  a4 f' ^> ~ |
  f8 f e r |
  r4 d8 ^> r |
  r e f r |
  r4 g8 ^> r |
  r a g4 ~ |
  g8 g f f |
  e2 |
  % Kết thúc solo, bè Tenor trở lại dòng 3
  \set Staff.shortInstrumentName = "T"
  \clef "violin_8"
  R2
  r8 af, af g |
  f4 c' ^> ~ |
  c8 c bf4 |
  % chỉ cần hiển thị 1 lần, ẩn đi từ đây
  \set Staff.shortInstrumentName = ""
  bf8. a16 bf8 g |
  f e8 ~ e4 |
  a8. ^> b!16 c8 a |
  g f ~ f4 |
  R2
  bf8 ^> bf ^> r4 |
  r bf8 ^> a ~ |
  a4 r8 a |
  a8. a16 d8 c |
  bf4. bf8 |
  a4 a |
  bf \fermata r8 g |
  g2 ~ |
  g4 r |
  
  \time 3/4
  a a g |
  g f2 |
  bf4. ^> bf8 a4 |
  g2 ^> a4 |
  g2 g4 |
  g e4. g8 |
  f2. ~ |
  f4 r g |
  f4. f8 f4 |
  e2 a4 |
  a a f |
  e f4. e8 |
  e2 a4 |
  g g4. g8 |
  
  \time 2/4
  g2 ~ |
  g8 g f bf |
  a4 ~ a8 d,16 d |
  g8 f16 f bf8 r |
  r a16 a d8 g, |
  bf4 a |
  g \fermata r8 bf |
  a2 ~ |
  a4
}

nhacPhienKhucBasMot = \relative c {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  r8 c16
  ^\markup { \raise #2 \bold "Intr." }
  c f8 d16 d |
  g4 <bf g> |
  <c f,> <g d> |
  <g c,>8 <g g,>16 <g g,> <c c,>4 |
  r8 <bf bf,>16 <b! b,!> <c c,>8 <bf c,> |
  \once \autoBeamOff
  <a f> f d e |
  f4 f ^\f ^> ~ |
  f8 f f f |
  \slashedGrace { \stemDown e16 ^(f \stemNeutral } g2)  ~ |
  g8 d e f |
  g4 r |
  r8 c, d d |
  c2 ~ |
  c4 r |
  r8 bf a g |
  d'2 ~ |
  d4 r |
  r8 c16 c f8 d16 d |
  g4. f8 |
  e8. e16 d8 d |
  g c, r d |
  g,4 c |
  <f f,>2 ~ |
  <f f,>4
  
  \set Staff.shortInstrumentName = "TB"
  r8 c d e |
  f2 ~ |
  f8 r d4 ^> ~ |
  d8 d a' r |
  r4 g ^> ( |
  \set Staff.shortInstrumentName = ""
  f) a |
  c,8. c16 d8 e |
  f4 bf, ^> ~ |
  bf8 bf c r |
  r4 g'8 ^> r |
  r c, d r |
  r4 g8 ^> r |
  r f g4 ~ |
  g8 f d g |
  c,2
  
  % Kết thúc solo, bè Bas trở lại dòng 4
  \set Staff.shortInstrumentName = "B"
  af'8. af16 af8 g |
  f4. \slashedGrace { d16 ( } c8) |
  f f4 g8 |
  \slashedGrace { bf,16 ( } c2 ~ ) |
  % chỉ cần hiển thị 1 lần, ẩn đi từ đây
  \set Staff.shortInstrumentName = ""
  c8 r r g |
  bf4 c8 ^> c ^> |
  f, r r a |
  c4 d8 ^> d ^> |
  f4 r |
  <f bf,>8 ^> <f bf,> ^> bf8. a16 |
  bf8 g c, ^> f ~ |
  f4 r8 f |
  f8. f16 bf8 a |
  g4. g8 |
  f4 f8 (e) |
  d4 \fermata r8 d |
  c2 ~ |
  c4 r |
  
  \time 3/4
  f f e |
  e d2 |
  g4. ^> g8 f4 |
  c2 ^> c4 |
  b!2 b4 |
  c c4. c8 |
  d2. ~ |
  d4 r c |
  f4. bf,8 g4 |
  c2 c4 |
  f, a bf |
  c bf4. bf8 |
  a2 f'4 |
  f e4. d8 |
  c2 ~ |
  c8 c d e |
  f c16 c f8 d16 d |
  g4. c8 |
  f,4. f8 |
  e8. e16 f8 f |
  c4 \fermata c'8 c, |
  <f f,>2 ~ |
  <f f,>4
}

% Lời
loiPhienKhucSopMot = \lyrics {
  No -- el No -- el, No -- el No -- el,
  Mọi ánh sáng đông tây
  No -- el No -- el No -- el No -- el
  hội về đây, hội về đây đi dồn vào quỹ đạo.

  Rừng già lên lộc mới một màu xanh
  làm đẹp cả chân trời.
  Hoa trong vườn cảm động quá
  hoa rơi vì gió lạ từ phương mô thổi tới
  
  những đống xương khô reo hoan hỉ
  bỗng một đêm reo hoan hỉ,
  bỗng một đêm reo hoan hỉ
  Phá lên tiếng cười Ha Ha Ha Ha
  ánh sao le lói No -- el
  Rộng vòng tay ôm ấp bốn phương trời
  mười phương đất hợp tấu bài anh em.
  Thái hòa lên ngôi vị.
  Nắm tay nhau theo vì sao Cứu Thế tiến bước về hào quang.
  No -- el No
  đạo
  hội về đây, hội về đây đi dồn vào quỹ đạo.
  No -- el.
}

loiPhienKhucAltoMot = \lyrics {
  No -- el No -- el, No -- el No -- el No -- el No -- el
  No -- el No -- el đến thế mạt một ngày hội về đây
  đi dồn vào quỹ đạo hội về đây đi dồn vào quỹ đạo
  
  No -- el No -- el A No -- el A No -- el No -- el
  No -- el A No -- el A No -- el A No -- el No -- el No -- el.
  
  những đống xương khô reo hoan hỉ
  bỗng một đêm reo hoan hỉ,
  bỗng một đêm reo hoan hỉ
  Phá lên tiếng cười
  Ha Ha Ha Ha
  ánh sao le lói
  No -- el
  Rộng vòng tay ôm ấp bốn phương trời mười phương đất
  hợp tấu bài anh em.
  Thái hòa lên ngôi vị.
  Nắm tay nhau theo vì sao Cứu Thế
  tiến bước về hào quang.
  No -- el No
  
  đạo hội về đây hội về đây
  hội về đây đi dồn vào quỹ đạo.
  No -- el.
}

loiPhienKhucTenorMot = \lyrics {
  \repeat unfold 17 { _ }
  No -- el No -- el, No -- el No -- el No -- el No -- el
  Từ hồng hoang thái cổ
  No -- el No -- el hội về đây hội về đây
  hội về đây đi dồn vào quỹ đạo
  về đây dồn vào quỹ đạo.
  
  No -- el No -- el A No -- el A No -- el no en No -- el A No -- el
  A No -- el A No -- el No -- el No -- el
  
  những đống xương khô reo hoan hỉ
  bỗng một đêm reo hoan hỉ,
  bỗng một đêm reo hoan hỉ
  Ha Ha Ha Ha Nhìn về đồng vắng sương rơi,
  ánh sao le lói
  No -- el
  Rộng vòng tay ôm ấp bốn phương trời mười phương đất
  hợp tấu bài anh em.
  Thái hòa lên ngôi vị,
  Nắm tay nhau theo vì sao Cứu Thế
  Tiến bước về cao quang.
  No -- el No
  
  đạo hội về đây hội về đây
  hội về đây dồn tới quỹ đạo.
  No -- el.
}

loiPhienKhucBasMot = \lyrics {
  \repeat unfold 18 { _ }
  No -- el No -- el, Bao tinh hoa kim cổ
  No -- el No -- el No -- el No -- el No -- el No -- el
  hội về đây hội về đây,
  hội về đi dồn vào quỹ đạo đi vào quỹ đạo.
  
  No -- el No -- el A No -- el A No -- el No -- el No -- el A No -- el
  A No -- el A No -- el No -- el No -- el
  
  Có những đống xương khô từ xa xưa thế kỷ
  một đêm reo hoan hỉ một đêm reo hoan hỉ
  Ha Ha phá lên tiếng cười Ha Ha
  Nhìn về đồng vắng sương rơi,
  ánh sao chói lọi
  No -- el
  Rộng vòng tay ôm ấp bốn phương trời
  mười phương đất hợp tấu bài anh em.
  Thái hòa lên ngôi vị,
  Nắm tay nhau theo vì sao Cứu độ,
  Tiến bước về cao quang.
  No -- el No
  
  đạo hội về đây hội về đây
  quỹ đạo, hội về dồn tới quỹ đạo.
  Ơ No -- el.
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
      \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSopMot }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
    >>
    \new Staff <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacPhienKhucAltoMot }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
    >>
    \new Staff <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacPhienKhucTenorMot }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenorMot
    >>
    \new Staff <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacPhienKhucBasMot }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1.2
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
