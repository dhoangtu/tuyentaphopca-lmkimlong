% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ca Mừng Đêm Thánh" }
  poet = "Nhạc: J. Gélineau"
  composer = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  a4 g8 a b4 b |
  c4. d8 b2 |
  a4 a8 a b4 a |
  g4. g8 e2 |
  a4 g8 a b4 b |
  c4. c8 b2 |
  e4 e8 d e4 b |
  c4. b8 a2 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  e4 e8 e e4 e |
  e e e2 |
  c4 e8 e g4 f |
  e4. d8 c2 |
  f4 e8 f g4 g |
  f a g2 |
  g4 a8 a g4 f |
  g g e2
}

nhacDiepKhucTenor = \relative c' {
  c4 d8 c b4 g |
  a4. a8 g2 |
  a4 c8 c d4 d |
  b c8 (b) a2 |
  c4 b8 c e4 g, |
  a d d2 |
  c4 c8 b c4 d |
  g, d' c2
}

nhacDiepKhucBas = \relative c' {
  a4 b8 a g4 e |
  c a e'2 |
  f4 c8 c g'4 d |
  e e a2 |
  f4 g8 f e4 e |
  d f g2 |
  c,4 f8 f e4 d |
  e g a2
}

nhacPhienKhucSop = \relative c'' {
  \time 2/4
  r8 e e d |
  c e d c |
  b2 |
  r8
  <<
    {
      e8 e d |
      c e d c
    }
    {
      c c b |
      a g e d
    }
  >>
  <<
    \new Voice = "splitpart" {
	    \voiceTwo
	    \stemUp
      b'2 ~ |
      b
    }
    {
      \voiceOne
      \stemDown
      e,8 b c d |
      e2
    }
  >>
  \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  R2*2
  r8 e e d |
  c g' g f |
  e c b a |
  b a g f |
  e2
}

nhacPhienKhucBas = \relative c' {
  R2
  r8 a a a |
  g a g f |
  e a a a |
  g a g f |
  e2 ~ |
  e
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ca mừng đêm thánh chan chứa phúc ân.
  Đêm Con Thiên Chúa viếng thăm nhân trần.
  Đêm đất với trời vui sướng kết thân.
  Ánh sáng vinh phúc soi chiếu xa gần.
}

loiDiepKhucBas = \lyricmode {
  Ca mừng đêm thánh chan hòa hồng ân.
  Đêm Con Thiên Chúa hiện thăm thần dân.
  Đêm trời với đất vui sướng kết thân.
  Ánh sáng vinh phúc dọi chiếu xa gần.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Chính giữa đêm trường tuyết sương lạnh lùng.
  \set stanza = "1-3."
  Ngài đã ra đời cứu con dân Ngài
  \override Lyrics.LyricText.font-shape = #'italic
  (chuộc con dân Ngài).
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Thấy khắp gian trần chúng nhân khổ sầu.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Hãy cât cao lời tán dương Vua Trời.
}

loiPhienKhucAltoMot = \lyricmode {
  \set stanza = "1."
  Tuyết sương lạnh lùng,
  Chúa đã ra đời cứu con dân Chúa, cứu con dân Ngài.
}

loiPhienKhucAltoHai = \lyricmode {
  \set stanza = "2."
  Chúng nhân khổ sầu,
  %Chúa đã ra đời cứu con dân Chúa, cứu con dân Ngài.
}

loiPhienKhucAltoBa = \lyricmode {
  \set stanza = "3."
  Tán dương Vua Trời,
  %Chúa đã ra đời cứu con dân Chúa, cứu con dân Ngài.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  Chính giữa đem trường tuyết sương lạnh lùng,
  Chúa đã ra đời cứu con dân Ngài.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  Thấy khắp gian trần chúng nhân khổ sầu,
  %Chúa đã ra đời cứu con dân Ngài.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  Hãy cất cao lời tán dương Vua Trời,
  %Chúa đã ra đời cứu con dân Ngài.
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
  %systems-per-page = 5
}

TongNhip = {
  \key c \major \time 4/4
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
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucAlto
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
      >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef "bass"
        \new Voice \TongNhip \partCombine 
        \nhacDiepKhucTenor
        \notBePhu -2 { \nhacDiepKhucBas }
      \new NullVoice = beBas \nhacDiepKhucBas
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoHai
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoBa
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
