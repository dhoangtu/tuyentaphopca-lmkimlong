% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Chúa Xét Dò Con" }
  composer = "Tv. 138"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \partial 2 a8 a d, (f) |
  g4 g8 g c (d) |
  d2. ~ |
  d4 b!16 (d) b (a) e (g) a8 |
  a4 a8 a c8 (d) |
  d4 c8 c e \afterGrace d ({
    \override Flag.stroke-style = #"grace"
    c)} |
  \revert Flag.stroke-style
  a4 (g2) ~ |
  g4 e8. e16 a8 fs16 (e) |
  d2. ~ |
  
  \time 2/4
  \partial 4. d4.
  
  \time 3/4
  \once \override Score.RehearsalMark.font-size = #0.5
  \mark \markup { \musicglyph #"scripts.coda" }
  %<> \tweak extra-offset #'(1 . -1.5)
  d2. ~ |
  d2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  a8 a d, (f) |
  g4 g8 g c (d) |
  d2. ~ |
  d4 b!16 (d) b (a) e (g) a8 |
  a4 a8 a g4 |
  a a8 a g [g] |
  c,2. ( |
  d4) e8. e16 a8 fs16 (e) |
  c4 bf4. bf8 |
  a4.
  d4 b!4. b8 |
  a2
}

nhacDiepKhucBas = \relative c' {
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  a8 a d, (f) |
  g4 g8 g c (d) |
  d4 b!8 b d b16 (a) |
  g2. ~ |
  g4 f8 f e4 |
  d2. ~ |
  d4 e8 d c16 (d) g8 |
  g4 e8. e16 a8 fs16 (e) |
  d4 g4. g8 |
  d4.
  d4 g4. g8 |
  <fs d>2
}

nhacPhienKhucSop = \relative c'' {
  \time 2/4
  R2*2
  r4 a8 g ~ |
  g bf g4 |
  a2 ~ |
  a4 r |
  r f8 g ~ |
  g a f e |
  
  \time 3/4
  d2 \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \time 2/4
  R2*2
  r4 f8 e ~ |
  e g e4 |
  f2 ~ |
  f4 r |
  r d8 e ~ |
  e f d cs |
  d2
}

nhacPhienKhucBas = \relative c {
  \time 2/4
  r4. d8 ~ |
  d f f g |
  a4. r8 |
  R2
  r4. d8 ~ |
  d d c d |
  a4. a8 |
  a,2
  d
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chúa xét dò con và Ngài đã rõ.
  Lúc con nghỉ con đi Ngài đều thấu suốt.
  Mọi đường lối con này Ngài đều đã am tường,
  tường.
}

loiDiepKhucAlto = \lyricmode {
  Chúa xét dò con và Ngài đã rõ.
  Lúc con nghỉ con đi Ngài đều thấu suốt.
  Mọi đường lối con này Ngài đều đã am tường,
  luôn am tường.
  \set stanza = "   (Để kết)"
  tường luôn am tường.
}

loiDiepKhucBas = \lyricmode {
  Chúa xét dò con và Ngài đã rõ.
  Khi con đứng con ngồi, Ngài đều thấu được.
  Những tư tưởng thâm sâu Ngài đều đã am tường,
  luôn am tường.
  tường, luôn am tường.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Chúa đã biết từ lâu.
  Bàn tay Chúa theo con hoài.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Xa thần trí Ngài luôn.
  Hầu mong lánh tôn nhan Ngài.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Muôn đời Chúa ngự đây.
  Ngài luôn thống trị nơi này.
}

loiPhienKhucSopBon = \lyricmode {
  \set stanza = #"4."
  Bay về phía đại dương.
  Bàn tay Chúa luôn đưa đường.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Điều môi con chưa nói.
  Khắp đó đây tứ bề có Ngài hoài.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Tìm nơi đâu đi tới.
  Biết trốn đi chốn nào lánh được Ngài.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Dù bay lên thiên quốc.
  Dẫu xuống ngay hỏa ngục Chúa ngự đây.
}

loiPhienKhucBasBon = \lyricmode {
  \set stanza = #"4."
  Mượn ban mai đôi cánh.
  Chúa vẫn theo giữ gìn Chúa chỉ đường.
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
