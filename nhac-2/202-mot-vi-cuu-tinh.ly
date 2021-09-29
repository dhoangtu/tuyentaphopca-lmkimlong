% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Một Vị Cứu Tinh" }
  composer = "Lm. Kim Long"
  tagline = ##f
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

% Nhạc
nhacDiepKhucSop = \relative c'' {
  R2*4
  d4 g |
  b, d | \break
  g, g8 b |
  a4 a8 c |
  fs,4 fs8 a |
  g2 ~ |
  g4 r |
  <<
    {
      d' g |
      b, d |
      g, g8 b |
      a4 a8 c
    }
    \notBePhu -2 {
      b4 a |
      g fs |
      e g8 fs
      e4 e8 g
    }
  >>
  <<
    {
      \voiceOne
      fs4 fs8 a |
      g2 ~ |
      g4
    }
    \new Voice = "splitpart" \notBePhu -2 {
	    \voiceTwo
      fs8 (e) d e |
      d4. (cs8 |
      d4)
    }
  >>
  \oneVoice
  r4 |
  g2 |
  a4 a8 b |
  c4 a |
  b b8 c |
  d4 b |
  cs cs8 d |
  e4 cs |
  <<
    {
      \voiceOne
      d2 ~ |
      d
    }
    \new Voice = "bePhuHoaSop" \notBePhu -2 {
	    \voiceTwo
      r4 r8 c |
      b4 (a)
    }
  >>
  \oneVoice
  d4 g |
  b, d |
  g, g8 b |
  a4 a8 c |
  fs,4 fs8 a |
  g2 ~ |
  g \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  R2*4
  g2 |
  fs |
  e |
  d |
  c |
  d4 c |
  b r |
  g' fs |
  e b |
  c e8 d |
  c4 c8 b |
  a4 a8 c |
  b4 a |
  g r |
  r r8 g' |
  fs e d4 |
  r8 d e fs |
  g4 r |
  r8 b a g |
  a2 |
  r8 b cs b |
  a4 r8 g |
  g2 |
  g4 a |
  b a | \break
  g g8 fs |
  e4 e8 e |
  d4 e8 fs |
  g4 fs8 e |
  d2
}

nhacDiepKhucTenor = \relative c' {
  g4 a |
  b c |
  b d8 c |
  b4 a |
  b2 |
  a |
  b |
  c4 b |
  a2 |
  b4 a |
  d8 c b a |
  g r r4 |
  R2*7
  r4 r8 g |
  a b c4 |
  b a |
  b8 c d4 |
  e4. b8 |
  cs d e4 |
  fs e8 e |
  d2 |
  d4 e |
  fs e |
  d d8 d |
  c4 c8 b |
  c4 c8 c |
  b4 b8 a |
  b2
}

nhacDiepKhucBas = \relative c {
  R2
  r8 d e fs |
  <<
    {
      \voiceOne
      g4 a |
      a8 g fs e
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      r8 g, b c |
      d2
    }
  >>
  \oneVoice
  <d g,>2 ~ |
  <d g,> |
  <d g,>2 ~ |
  <d g,> |
  <<
    {
      \voiceOne
      d2 |
      f8\rest d e fs |
      g4 fs8 e
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      g,2 ~ |
      g ~ |
      g
    }
  >>
  \oneVoice
  <d' g,>8 r r4 |
  R2*8
  r4 r8 b |
  d e d4 |
  r4 r8 e |
  a b a4 |
  a, a'8 g |
  fs g a a |
  d4 (d) |
  b c |
  d c |
  b b8 a |
  g4 a8 g |
  a4 d,8 d |
  e4 d8 c |
  g2
}

% Lời
loiDiepKhucSopMot = \lyricmode {
  No -- el, No -- el
  Một Vị Cứu Tinh cho thế trần vừa giáng sinh.
  No -- el, No -- el Một Vị Cứu Tinh cho thế trần vừa giáng sinh.
  Người ơi! Này Con Chúa Trời vì tình yêu muôn đời
  đã hạ sinh cứu ngàn dân No -- el, No -- el
  Một Vị Cứu Tinh cho thế trần vừa giáng sinh.
}

loiDiepKhucSopHai = \lyricmode {
  \repeat unfold 4 { _ }
  Hòa bình Chúa ban như sống lộc tràn khắp nơi.
  No -- el, No -- el Hòa bình Chúa ban như sóng lộc tràn khắp nơi.
  Trời cao kìa muôn sứ thần hòa lời ca chúc mừng:
  Ngàn đời danh Chúa hiển vinh No -- el, No -- el
  Hòa bình Chúa ban như sóng lộc tràn khắp nơi.
}

loiDiepKhucSopBa = \lyricmode {
  \repeat unfold 4 { _ }
  Ngàn đời khắp nơi theo đất trời cùng sướng vui.
  No -- el, No -- el Ngàn đời khắp nơi theo đất trời cùng sướng vui.
  Thành tâm cùng dâng Chúa Trời một lòng yêu mến Ngài
  đẹp tình bác ái mọi nơi No -- el, No -- el
  Ngàn đời khắp nơi theo đất trời cùng sướng vui.
}

loiPhuHoaSop = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  (No -- el)
}

loiDiepKhucAltoMot = \lyricmode {
  Hm __ \repeat unfold 23 { _ }
  Hm __ \repeat unfold 15 { _ }
  No -- el, No -- el, No -- el
  Một Vị Cứu Tinh cho thế trần vừa giáng sinh, đã hạ sinh.
}

loiDiepKhucAltoHai = \lyricmode {
  \repeat unfold 46 { _ }
  Hòa bình Chúa ban như sóng lộc tràn khắp nơi, lan mọi nơi.
}

loiDiepKhucAltoBa = \lyricmode {
  \repeat unfold 46 { _ }
  Ngàn đời khắp nơi theo đất trời cùng sướng vui, luôn mừng vui.
}

loiDiepKhucTenorMot = \lyricmode {
  Hm __ \repeat unfold 21 { _ }
  Hm __ \repeat unfold 15 { _ }
  No -- el, No -- el, No -- el
  Một Vị Cứu Tinh cho thế trần vừa giáng sinh, đã hạ sinh.
}

loiDiepKhucTenorHai = \lyricmode {
  \repeat unfold 44 { _ }
  Hòa bình Chúa ban như sóng lộc tràn khắp nơi, lan mọi nơi.
}

loiDiepKhucTenorBa = \lyricmode {
  \repeat unfold 44 { _ }
  Ngàn đời khắp nơi theo đất trời cùng sướng vui, luôn mừng vui.
}

loiDiepKhucBasMot = \lyricmode {
  Hm __ \repeat unfold 18 { _ }
  Hm __ \repeat unfold 13 { _ }
  No -- el, No -- el, No -- el
  Một Vị Cứu Tinh cho thế trần vừa giáng sinh, đã hạ sinh.
}

loiDiepKhucBasHai = \lyricmode {
  \repeat unfold 39 { _ }
  Hòa bình Chúa ban như sóng lộc tràn khắp nơi, lan mọi nơi.
}

loiDiepKhucBasBa = \lyricmode {
  \repeat unfold 39 { _ }
  Ngàn đời khắp nơi theo đất trời cùng sướng vui, luôn mừng vui.
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
  page-count = #2
  %ragged-bottom = ##f
}

TongNhip = {
  \key g \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSopMot
      %\new Lyrics \lyricsto bePhuHoaSop \loiPhuHoaSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSopHai
      \new Lyrics \lyricsto beSop \loiDiepKhucSopBa
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiDiepKhucAltoHai
      \new Lyrics \lyricsto beAlto \loiDiepKhucAltoBa
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacDiepKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenorMot
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenorHai
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenorBa
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBasMot
      \new Lyrics \lyricsto beBas \loiDiepKhucBasHai
      \new Lyrics \lyricsto beBas \loiDiepKhucBasBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
