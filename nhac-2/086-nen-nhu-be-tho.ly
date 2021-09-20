% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nên Như Bé Thơ" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \partial 8 d8 |
  g,8 (bf) c16 (d) c8 |
  f,8 (g) a16 (g) a (c) |
  g2 ~ |
  g4 r8 f |
  g16 (a g f) d4 |
  d8 d f16 (g f d) |
  c8 c'4 bf8 |
  c2 |
  a8 a a bf16 (a) |
  g4. g8 |
  a8 g16 (f) d (f g f) |
  c2 ~ |
  c8 c d c16 (d) |
  g4. a16 (g) |
  f2 ~ \bar "|." \break
  
  f4 r |
  R2
  r4 r8 c |
  e f g (a) |
  g4 r8 bf |
  bf bf4 g8 |
  c2 ~ |
  c4 r |
  r r8 c, |
  f f e16 f a8 |
  g4 r8 \bar "||"
}

nhacPhienKhucTenor = \relative c' {
  r8
  r4 r8 g |
  a4. a8 |
  bf4 bf8 b! |
  c4 r |
  r8 g a a |
  bf4. a8 |
  g4 a8 f |
  g2 |
  R2
  c8 c c c |
  c4. a8 |
  bf a g f |
  e4 r8 a |
  g d' c (bf) |
  \once \stemDown a2 ~ |
  \once \stemDown a4 r8
  c |
  bf g a16 (bf) a8 |
  d,4 r |
  r8 c' b!4 |
  c2 ~ |
  c4 r |
  r r8 a |
  a bf4 a8 |
  d,4 r |
  r8 d' c16 c b!8 |
  c4 r8
}

nhacPhienKhucBas = \relative c {
  r8
  r4 r8 c |
  f4. f8 |
  g4 g8 f |
  e4 r |
  r8 c f f |
  g4. f8 |
  e4 f8 d |
  c2 |
  R2
  c8 c c e |
  f4. f8 |
  e f e d |
  c4 r8 f |
  <d bf> <f c> <e c>4 |
  <f f,>2 ~ |
  <f f,>4 r8 c' |
  bf g a16 (bf) a8 |
  d,4 r |
  r8 a' g (e) |
  e2 ~ |
  e4 r |
  r4 r8 f |
  f d4 cs8 |
  d4 r |
  r8 f g16 g g8 |
  c,4 r8
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Hãy để các em nhỏ đến với Ta,
  vì Nước Trời thuộc về những người giống như chúng.
  Ai không nên bé thơ như những em nhỏ này
  thì chẳng được lên Nước Trời.
  \set stanza = "1."
  Tựa như em bé thơ không mưu toan việc lớn
  ngủ yên trong lòng thân mẫu luôn.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 34 { _ }
  \set stanza = "2."
  Kìa trông muôn cánh chim không gieo, không gặt hái
  mà Cha trên trời luôn dưỡng nuôi.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 34 { _ }
  \set stanza = "3."
  Kìa trông bao đóa hoa không se tơ, dệt gấm
  mà Cha trên trời tô thắm liên.
}

loiPhienKhucBasMot = \lyricmode {
  Hãy để trẻ em đến với Ta,
  vì nơi thiên quốc những người giống như chúng.
  Ai không nên như những em nhỏ như những em này
  chằng được tới Nước Trời.
  \set stanza = "1-3."
  Hãy tin cậy Chúa quan phòng.
  \set stanza = "1."
  em bé thơ không mơ ước danh vọng
  ngủ trong thân mẫu luôn.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 38 { _ }
  \set stanza = "2."
  muôn cánh chim không thu tích kho tàng
  mà Cha luôn dưỡng nuôi.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 38 { _ }
  \set stanza = "3."
  muôn đóa hoa không may vá thêu thùa
  mà Cha tô thắm liên.
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
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef bass
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucTenor
        \nhacPhienKhucBas
      \new NullVoice = beBas \nhacPhienKhucTenor
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}