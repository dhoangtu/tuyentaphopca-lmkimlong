% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xuân Đã Đến" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \key c \major
  \once \override Score.RehearsalMark.font-size = #0.1
  \once \override Score.RehearsalMark.extra-offset = #'(5 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  \partial 4. e8 f e |
  a2 ~ |
  a4 c8 (d) |
  b4. b8 |
  c8. g16 e' (f) e8 |
  d4 g,8. g16 |
  f'8 f r g |
  g8. g16 b,8 c |
  c2 ~ |
  c4 r |
  R2
  r8 c b b |
  c8. d16 g,8 g |
  r d' d c |
  c8. d16 c8 b |
  r a a b |
  c2 ~ |
  c4 r |
  r8 a c a |
  g8. g16 c8 d |
  e4. d16 (c) |
  a4 b |
  b r8 b |
  b8. d16 e (f) e8 |
  e2 ~ |
  e ~ |
  e4 r8 c |
  d c b4 ~ |
  b8 a gs gs |
  a2 ~ |
  a4 r8 \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key a \major
  cs8 |
  a4 \tuplet 3/2 { a8 d cs } |
  b4 r8 e |
  e4 \tuplet 3/2 { d8 d b } |
  b4 \tuplet 3/2 { cs8 cs a } |
  a2 |
  fs8 e4 gs8 |
  a2 ~ |
  a4 r8
  ^\markup { \fontsize #2 \bold "Tận" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \key c \major
  r8 r4 |
  R2
  r8 d e d |
  g4 f8 (g) |
  e8. e16 c' (d) c8 |
  b2 |
  a8. g16 c8 c |
  r c g f |
  e2 ~ |
  e4 r |
  R2
  r8 e d d |
  e8. d16 c8 b |
  r g' g e |
  e8. f16 e8 d |
  r f f f |
  e2 ~ |
  e4 r |
  r8 f a f |
  e8. e16 e8 f |
  g4. g8 |
  f4 f8 (a) |
  gs2 ~ |
  gs4 r8 gs |
  a8. b16 c (d) c8 |
  b2 |
  r8 a b a |
  gs4. a8 |
  f4 e8 (d) |
  cs2 ~ |
  cs4 r8
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key a \major
  e8 |
  fs4 \tuplet 3/2 { fs8 fs a } |
  gs4 r8 gs |
  a4 \tuplet 3/2 { fs8 b a } |
  gs4 \tuplet 3/2 { a8 e d } |
  cs8. a16 b8 cs |
  d4 d |
  cs2 ~ |
  cs4 r8
}

nhacDiepKhucBas = \relative c {
  \key c \major
  r8 r4 |
  r8 c d c |
  f4 a |
  g8 g a g |
  c4. c8 |
  g2 |
  d8. d16 e8 e |
  r e g g |
  c,2 |
  c8 c4 g'8 |
  ef4 d |
  g2 ~ |
  g8 f e d |
  c4 b |
  c4. g'8 |
  f4 d8 (g) |
  c,4 r8 g' |
  e d g e16 (d) |
  c2 ~ |
  c4 r8 g |
  c d e4 |
  f d8 d |
  e2 ~ |
  e4 r8 d |
  c8. e16 a (b) a8 |
  gs4. gs8 |
  a f e4 ~ |
  e8 a, b (c) |
  d4 e |
  <a e a,>2 ~ |
  <a e a,>4 r8
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key a \major
  a |
  fs4 \tuplet 3/2 { fs8 d d } |
  e4 r8 d |
  cs4 \tuplet 3/2 { d8 d ds } |
  e4 \tuplet 3/2 { e8 e es } |
  fs2 |
  d4 e |
  <e a,>2 ~ |
  <e a,>4 r8
}

nhacPhienKhucSop = \relative c'' {
  \key a \major
  \partial 8 a8 |
  a4 \tuplet 3/2 { a8 fs a } |
  b4 \tuplet 3/2 { d8 b cs } |
  e2 ~ |
  e4 \tuplet 3/2 { cs8 cs e } |
  a,4 \tuplet 3/2 { b8 b cs } |
  fs,8. b16 a8 fs |
  e2 ~ |
  e4 r8 \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key c \major
  e |
  a4 \tuplet 3/2 { a8 a c } |
  b4 \tuplet 3/2 { b8 b <f' a,> } |
  <<
    {
      e2 ~ |
      e4 \tuplet 3/2 { c8 c c } |
      b4 \tuplet 3/2 { a8 a a } |
      gs8. a16 
    }
    {
      gs2 ~ |
      gs4 \tuplet 3/2 { a8 a a } |
      e4 \tuplet 3/2 { c8 c c } |
      b8. f'16
    }
  >>
  <<
    {
      \voiceOne
      f (e) b'8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d,8 [d]
    }
  >>
  \oneVoice
  <a' c,>2 ~ |
  <a c,>8
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  \key a \major
  
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lặng nghe lòng đất đêm nay,
  lặng nghe lòng đất đêm nay,
  Rộn ràng tiếng pháo,
  tiếng pháo báo ngày xuân sang.
  Trong huyệt thời gian đã tàn rồi,
  Hoa niên của một (i) tuổi vàng,
  tuổi vàng Mẹ ơi.
  Xuân đã đến rồi,
  rừng muôn cây lá nảy chồi đơm bông.
  Đây vườn thơm phức hoa hương.
  lòng con nở một bông hồng đầu xuân.
  Kính chào Mẹ Chúa muôn xuân,
  nghe con, nghe con cầu nguyện,
  nghe con cầu nguyện trong trầm hương hoa.
}

loiDiepKhucAlto = \lyricmode {
  Lặng nghe lòng đất đêm nay,
  lòng đất đêm nay,
  Rộn ràng tiếng pháo báo ngày xuân sang.
  Trong huyệt thời gian đã tàn rồi,
  Hoa niên của một (i) tuổi vàng,
  tuổi vàng Mẹ ơi.
  Xuân đã đến rồi,
  rừng muôn cây lá nảy chồi đơm bông.
  Đầy vườn thơm phức hoa hương,
  lòng con nở một bông hồng đầu xuân.
  Kính chào Mẹ Chúa muôn xuân,
  nghe con, nghe con cầu nguyện,
  nghe con cầu nguyện,
  cầu nguyện Mẹ trong hương hoa.
}

loiDiepKhucBas = \lyricmode {
  Lặng nghe lòng đất đêm nay,
  lặng nghe lòng đất đêm nay,
  Rộn ràng tiếng pháo chào nay xuân sang.
  Tàn rồi trong huyệt thời gian
  đã tan tuổi vàng của một tuổi vàng.
  Mẹ ơi.
  Sáng nay xuân đã đến rồi
  Rừng muôn cây lá nãy chồi trổ bông.
  Đây vườn thơm phức hoa hương
  lòng con nở một nở một bông đầu xuân.
  Kính chào Mẹ của muôn xuân,
  nghe con nghe con,
  cầu nguyện, nghe con cầu nguyện trong hương hoa.
}

loiPhienKhucSop = \lyricmode {
  Con xin ơn Mẹ bao la,
  ơn Mẹ bao la cho con mến Mẹ,
  cho con mến Mẹ thiết tha muôn trùng.
  Thuyền con đừng lạc bến thương,
  đừng lạc bến thương,
  Đàn đừng lạc giọng,
  đàn đừng lạc giọng giữa triều ái ân.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
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
  %systems-per-page = 5
}

TongNhip = {
  \time 2/4
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
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
