% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Chúa Quay Trở Về" }
  composer = "Ý: Tv. 84"
  arranger = "Lm. Kim Long"
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
  R2
  c8. d16 c16 (bf) a8 |
  g4. f8 |
  bf a g (a) |
  c2 |
  a8. g16 bf8 (c) |
  d4. bf8 |
  c c g16 (bf) a (g) |
  a2 ~ |
  a8 \bar "|." \break
  
  r4.
  R2*2
  r8 c, c
  <<
    {
      a'8 |
      bf a16 (g) f8. g16 |
      g2 ~ |
      g4
    }
    { \notBePhu -2 {
      f8 |
      g f16 (e) d8. e16 |
      e2 ~ |
      e4
    }}
  >>
  r4 |
  R2*2
  r4 r8 g |
  e4.
  <<
    {
      g8 |
      g d4 c8 |
      f2
    }
    { \notBePhu -2 {
      d8 c bf4 bf8 |
      a2
    }}
  >>
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  R2*2
  e8. f16 e8 d |
  c4. f8 |
  g e d (e) |
  f4 d8 g |
  f8. bf16 a8 (g) |
  f4 e |
  c2 ~ |
  c8
  
  
}

nhacDiepKhucBas = \relative c' {
  a8. bf16 a (g) f8 |
  e4. f8 |
  c4. f8 |
  e (f) g (f) |
  e c bf' (c) |
  f,4 g8 e |
  d8. d16
  <<
    {
      \voiceOne
      f8 (g) |
      a4 bf
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      f8 (d) |
      c4. c8
    }
  >>
  \oneVoice
  <a' f,>2 ~ |
  <a f,>8
  
  a c c |
  f,8. a16 g (f) d8 |
  d2 ~ |
  d8 r r d |
  g,4 d' |
  c2 ~ |
  c4 r8 c' |
  d4. bf8 |
  c g4 bf8 |
  \slashedGrace { c16 (d } c2) ~ |
  c4 g8 (f) |
  e4 g8 g |
  f2
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Xin Chúa quay trở về để chúng con được sống
  để đoàn dân Chúa được luôn hoan hỉ trong Ngài.
  \set stanza = "1."
  Mọi điều ân oán mong Ngài quên đi
  Ban tặng phúc Cứu Độ đoàn con.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 20 { _ }
  \set stanza = #"2."
  Hòa bình công lý (ơ) đà giao duyên
  Công bình ngó xuống từ trời cao.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 20 { _ }
  \set stanza = #"3."
  Ruộng đồng nay sẽ trổ nụ đơm bông
  Cứu độ dõi bước chân Ngài luôn.
}

loiPhienKhucAlto = \lyricmode {
  Xin Chúa quay trở về để chúng con được sống
  để dân Ngài mãi hoan hỉ trong Ngài.
}

loiPhienKhucBasMot = \lyricmode {
  Xin Chúa quay trở về,
  trở về để đoàn con lại được sống động,
  để dân Ngài được hoan hỉ trong Ngài.
  \set stanza = "1."
  Xin Chúa dẫn đường chúng con trở về,
  mong Ngài quên đi.
  Xin Chúa tỏ ra lòng nhân ái,
  ban tặng cứu chúng con.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 22 { _ }
  \set stanza = #"2."
  Ân nghĩa tín thành (ơ) nay hội ngộ
  nay đà giao duyên.
  Trung tín mọc lên từ đất thấp,
  Công bình bởi chốn cao.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 22 { _ }
  \set stanza = #"3."
  Đây những phúc lộc Chúa ban dồi dào,
  trổ nụ đơm bông.
  Công lý sẽ khai đường trước Chúa,
  Cứu độ dõi bước luôn.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
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
  %systems-per-page = 4
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
