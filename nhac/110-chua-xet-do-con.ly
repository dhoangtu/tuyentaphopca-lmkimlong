% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Chúa Xét Dò Con" }
  poet = "Ý: Tv. 138"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \partial 2 a8 a d, (f)
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar ".|"
  g4 g8 g a (c) |
  d2. ~ |
  d4 b!16 (d) b (a) e (g) a8 |
  a4 a8 a c8 (d) |
  d4 c8 c e d16 (c) |
  a4 (g2) ~ |
  g4 e8. e16 a8 fs16 (e) |
  \set Score.repeatCommands = #'((volta "qua TK"))
  d2. ~ |
  
  \time 2/4
  \partial 4. d4 r8
  \set Score.repeatCommands = #'((volta #f) end-repeat)
  \bar "||"
  \set Score.repeatCommands = #'((volta "Để Kết"))
  \time 3/4
  \once \override Score.RehearsalMark.font-size = #0.5
  d2. ~ |
  d2 r4
  \set Score.repeatCommands = #'((volta #f) end-repeat)
  \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  a8 a d, (f) |
  g4 g8 g a (c) |
  d2. ~ |
  d4 b!16 (d) b (a) e (g) a8 |
  a4 a8 a g4 |
  a a8 a g [g] |
  c,2. ( |
  d4) e8. e16 a8 fs16 (e) |
  c4 bf4. -> bf8 |
  a4 r8
  d4 b!4. _> b8 |
  a2 r4
}

nhacDiepKhucBas = \relative c' {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  a8 a d, (f) |
  g4 g8 g a (c) |
  d4 b!8 b d b16 (a) |
  g2. ~ |
  g4 f8 f e4 |
  d2. ~ |
  d4 e8 d c16 (d) g8 |
  g4 e8. e16 a8 fs16 (e) |
  d4 g4. _> g8 |
  d4 r8
  d4 g4. _> g8 |
  <fs d>2 r4
}

nhacPhienKhucSop = \relative c'' {
  \time 2/4
  \partial 8 r8
  R2
  r4 a8 g ~ |
  g bf g4 |
  a2 ~ |
  a4 r |
  r f8 g ~ |
  g a f e \bar "||"
  
  \time 3/4
  d4
  a'8 a d, ([f])
  \bar "||"
}

nhacPhienKhucAlto = \relative c' {
  \time 2/4
  r8
  R2
  r4 f8 e ~ |
  e g e4 |
  f2 ~ |
  f4 r |
  r d8 e ~ |
  e f d cs |
  d4
  a'8 a d, ([f])
}

nhacPhienKhucBas = \relative c {
  \time 2/4
  d8 ^> ~ |
  d f f g |
  a4 r |
  R2
  r4. d8 _> ~ |
  d d c d |
  a4. a8 |
  a,2
  d4
  a'8 a d, ([f])
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chúa xét dò con và Ngài đã rõ.
  Lúc con nghỉ con đi Ngài đều thấu suốt.
  Mọi đường lối con này Ngài đều đã am tường,
  tường.
}

loiDiepKhucAlto = \lyricmode {
  Chúa xét dò con và Ngài đã rõ
  Lúc con nghỉ con đi, Ngài đều thấu suốt,
  Mọi đường bước con này, Ngài đều đã am tường,
  luôn am tường.
  \set stanza = "   (Để kết)"
  tường luôn am tường.
}

loiDiepKhucBas = \lyricmode {
  Chúa xét dò con và Ngài đã rõ
  khi con đứng con ngồi, Ngài đều thấu được.
  Những tư tưởng thâm sâu Ngài đều đã am tường,
  luôn am tường.
  tường, luôn am tường.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Chúa đã biết từ xa
  Bàn tay Chúa theo con hoài.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Xa thần trí Ngài luôn
  hầu mong lánh tôn nhan Ngài.
  Chúa xét dò
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Muôn đời Chúa ngự đây
  Ngài luôn thống trị nơi này.
}

loiPhienKhucSopBon = \lyricmode {
  \set stanza = #"4."
  Bay về phía đại dương
  Bàn tay Chúa luôn đưa đường.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Điều môi con chưa nói
  Khắp đó đây tứ bề có Ngài hoài.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Tìm nơi đâu đi tới,
  Biết trốn đi chốn nào lánh được Ngài.
  Chúa xét dò
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Dù bay lên thiên quốc,
  Dẫu xuống ngay hỏa ngục Chúa ngự đây.
}

loiPhienKhucBasBon = \lyricmode {
  \set stanza = #"4."
  Mượn ban mai đôi cánh,
  Chúa vẫn theo giữ gìn, Chúa chỉ đường.
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
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  print-page-number = #f
  page-count = #1
}

TongNhip = {
  \key f \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
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
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -3 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucAlto
      \new Lyrics \lyricsto beSop \loiDiepKhucAlto
      >>
    %{
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
    %}
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -3 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
      >>
    \new Staff
      <<
      \new Voice = beBas {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
