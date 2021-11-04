% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bờ Sông Babylon" }
  poet = "Ý: Tv. 136"
  composer = "DijchL CGKPV"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 a4 ~ |
  a8 a a a |
  a2 |
  g8 f4 a8 |
  g2 |
  c8 c4 b!8 |
  b!4. e,8 |
  b'! b4 a8 |
  a2 ~ |
  a4 r |
  R2
  r4 r8 g |
  g4 \tuplet 3/2 { g8 d d } |
  c2 |
  a'8 a4 g8 |
  g4. c8 |
  g g4 g8 |
  f2 ~ |
  f4 r8 \bar "|." \break
  
  c'8 |
  c4. e16 d |
  d4 r8 bf |
  bf4. g16 a |
  a4. a16 g |
  f4 \tuplet 3/2 { g8 [f \slashedGrace { f16( } g8)] } |
  c,4 r8 c16 g' |
  e8. e16 \tuplet 3/2 { a8 bf a } |
  g2 ~ |
  g4 r8 g |
  bf4. b8 |
  c4 r8 c, |
  g'4. gs8 |
  a2 ~ |
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(8 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  a4 \bar "||" \break
  
  \partial 8 c16 c |
  c4. bf8 |
  bf4 \tuplet 3/2 {  c8 bf a } |
  a4 r8 f16 g |
  g4. f16 g |
  d4 r8 d16 g |
  f4. f16 g |
  c,4 r8 c' |
  bf4. bf8 |
  g8. g16 bf8 a |
  a4 r8 f16 f |
  g4 \tuplet 3/2 { e8 e g } |
  bf4. e,16 f |
  f2 ~ |
  f4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  c4 ~ |
  c8 c d e |
  f2 |
  bf,8 a4 f'8 |
  e2 |
  e8 e4 a8 |
  gs4. e8 |
  f d4 d8 |
  c2 ~ |
  c4 r |
  R2
  r4 r8 c |
  b!4 \tuplet 3/2 { b8 b b } |
  c2 |
  f8 f4 f8 |
  e4. c8 |
  bf bf4 bf8 |
  a2 ~ |
  a4 r8
  
  a'8 |
  a4. c16 b! |
  bf?4 r8 g |
  g4. e16 f |
  f4. f16 e |
  d4 \tuplet 3/2 { c8 d bf } |
  a4 r8 a16 bf |
  c8. c16 \tuplet 3/2 { f8 g f } |
  e2 ~ |
  e4 r8 g |
  g ([f e]) d |
  e4 r8 c e ([d c]) b! |
  c2 ~ |
  c4
  
  a'16 a |
  a4. g8 |
  g4 \tuplet 3/2 { a8 g f } |
  f4 r8 d16 e |
  e4. d16 c |
  bf4 r8 bf16 bf |
  a4. d16 b! |
  c4 r8 a' |
  g4. f8 |
  e8. e16 g8 f |
  f4 r8 d16 df |
  c4 \tuplet 3/2 { c8 c c } |
  d4. c16 bf |
  a2 ~ |
  a4
}

nhacDiepKhucBas = \relative c {
  f4 ~ |
  f8 e d c |
  d2 |
  g8 d4 b!8 |
  c2 |
  a8 a'4 d,8 |
  e4.
  <<
    {
      a8 |
      a gs4 a8 |
      a2 ~ |
      a4
    }
    {
      c,8 |
      d e4 e8 |
      a,2 ~ |
      a4
    }
  >>
  f'4 ~ |
  f8 f a e |
  d4. e8 |
  g4 \tuplet 3/2 { f8 f f } |
  e2 |
  d8 d4 b!8 |
  c4.
  <<
    {
      f8 |
      f e4 f8 |
      f2 ~ |
      f4
    }
    {
      a,8 |
      g c4 c8 |
      f,2 ~ |
      f4
    }
  >>
  r8
}

% Lời
loiPhienKhucSop = \lyricmode {
  % copy trang 165 
}

loiPhienKhucBas = \lyricmode {
  
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin =10\mm
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}