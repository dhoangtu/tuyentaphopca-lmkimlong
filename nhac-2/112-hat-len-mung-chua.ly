% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hát Lên Mừng Chúa" }
  poet = "Ý: Is. 42, 10-16"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4. e8 d c
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar ".|"
  f8. d16 d8 g |
  a4 r8 e' |
  c c d4 |
  b8. b16 c8 a |
  g4 r8 e |
  a4 ^> a8 g |
  c4 _> c8 b! |
  d e4 c8 |
  a4. f8 | 
  f d4 f8 |
  g4 r8 e |
  a4 ^> a8 g |
  c4 ^> c8 b! |
  d e4 c8 |
  a4. af8 |
  g d'4 b8 |
  c2 ~ |
  c4 \bar "|." \break
  
  r |
  R2*2
  r8 e8. ^> e16 c8 ^> |
  c4 f8 f |
  f4 e8 ^> d ^> ~ |
  d4 c8. _> c16 |
  g8 g g af |
  g4 c,8 c ~ |
  c e d c
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \partial 4. e8 d c \bar "||"
  f8. d16 d8 g |
  a4 r8 g |
  a g fs4 |
  g8. f16 e8 ds |
  e4 r8 e |
  e (g) fs g |
  g (bf) a g |
  f g4 e8 |
  c4. c8 |
  d a4 c8 |
  b4 r8 e |
  e (g) fs g |
  g (bf) a g |
  f g4 e8 |
  c4. c8 |
  c f4 f8 |
  e2 ~ |
  e4 r |
  R2*2
  r8 c'8. c16 e,8 |
  e4 a8 a |
  a4 c8 b ~ |
  b4 c8. c16 |
  g8 g g af |
  g4 c,8 c ~ |
  c e d c
}

nhacDiepKhucBas = \relative c {
  r8 r4 |
  r8. d16 d8 g |
  a4 r8 c, |
  f e d4 |
  g,8. g16 a8 b |
  c4 r8 e |
  cs4 ^> d8 g |
  e4 ^> f8 g |
  d c4 c8 |
  f4. f8 |
  d f4 a8 |
  g4 r8 e |
  cs4 ^> d8 g |
  e4 ^> f8 g |
  d c4 c8 |
  f4. f8 |
  e d4 g8 |
  c,2 ~ |
  c4 c'8. c16 |
  g8 g g af |
  g4 c,8 c ~ |
  c4 r8 c ^> |
  c4 ^> r8 c |
  f4 fs8 ^> g ^> ~ |
  g4 c8. ^> c16 |
  g8 g g af |
  g4 c,8 c ~ |
  c r8 r4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Hát lên mừng Chúa một bài ca mới,
  Tán tụng Ngài đi từ cùng cõi địa cầu.
  Gầm vang lên, gầm vang lên đại dương với muôn vật,
  Hải đảo cùng cư dân.
  Gầm vang lên, gầm vang lên miền quê tới thị thành,
  sa mạc tới đồi nương.
  \set stanza = "1."
  Khí phách bừng bừng cất tiếng thét xung phong.
  Dũng mãnh ra tay nghinh chiến bao địch thù.
  Hát lên mừng
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 49 { _ }
  \set stanza = "2."
  Những khúc gập ghềnh sẽ uốn nắn cho ngay.
  Dẫn bước ta đi qua biết bao dặm trường.
}

loiPhienKhucBasMot = \lyricmode {
  Một bài ca mới mừng chúc Chúa đi từ cùng cõi địa cầu.
  Gầm vang lên, gầm vang lên thái dương cùng vạn vật,
  hải đảo cùng trú dân.
  Gầm vang lên, gầm vang lên xóm quê và thị thành,
  sa mạc và đồi nương.
  \set stanza = "1."
  Chúa tiến lên như trang chiến binh vào trận
  bừng bừng gào thét xung phong.
  Dũng mãnh ra tay nghinh chiến bao địch thù.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 45 { _ }
  \set stanza = "2."
  Chúa sẽ khai quang bao lối đi mịt mùng
  gập ghềnh sẽ nắn cho ngay.
  Dẫn bước ta đi qua biết bao dặm trường.
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
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
  \key c \major \time 2/4
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
        \notBePhu -3 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}