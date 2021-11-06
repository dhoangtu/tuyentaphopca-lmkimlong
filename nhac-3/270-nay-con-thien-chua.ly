% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Này Con Thiên Chúa" }
  composer = "Nhạc ngoại quốc"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \key g \major
  \time 3/4
  d4 g a |
  b2. |
  d4 d c |
  b2 a4 |
  c c c |
  b2. |
  d4 c b |
  a2 r4 |
  d, g a |
  b2. |
  d4 d d |
  e2 e4 |
  d d b |
  b2. |
  a4 a4. g8 |
  g2 r4 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \key g \major
  \time 3/4
  R2.
  r4 d g |
  g b8 g g4 |
  g g (fs) |
  e8 (d) e (fs) g (a) |
  g4 fs8 (e) d4 |
  b'8 (a) g (fs) g (d) |
  a' (g) fs4 r |
  R2.
  r4 d g |
  g b8 a g fs |
  e2 g4 |
  a b e,8 (fs) |
  d fs fs (e) d g |
  g4 fs4. g8 |
  g2 r4
}

nhacDiepKhucBas = \relative c {
  \key g \major
    \time 3/4
  r2 d4 |
  g g b8 g |
  c,4 g' g |
  g r d |
  a' d, e8 fs |
  g4 d g |
  g a b |
  c8 b a4 d |
  d2 d,4 |
  g g b8 g |
  d4 g g |
  c,2 c8 (d) |
  e (fs) g4 g |
  g a b |
  c8 b a4 d |
  g,2 r4
}

nhacPhienKhucSop = \relative c'' {
  \key bf \major
  \time 2/2
  g4 bf g g |
  d d g2 |
  g4 bf f g |
  d2 g |
  g4 bf a bf |
  c bf a2 |
  f4 g a bf |
  c bf a2 |
  g4. g8 f4 g |
  d2 g ~ |
  g r \bar "||"
}

nhacPhienKhucBas = \relative c' {
  \key bf \major
  \time 2/2
  r2 g4 bf |
  g g d d |
  g2 a4 bf |
  f g ef2 |
  g f4 g |
  a bf c bf |
  a2 f4 g |
  a bf c2 |
  bf a4 g8. g16 |
  f4 g d2 |
  g r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Này Con Thiên Chúa Đấng đáng kính
  uy quyền giáng thế cứu ta,
  hát lên ca mừng.
  Này Con Thiên Chúa sinh trong hang đá,
  chúng ta đi tới mau tung hô phụng thờ.
}

loiDiepKhucAlto = \lyricmode {
  Này Ngôi Hai Chúa thiên đình uy linh,
  giáng thế cứu ta, cứu ta,
  hát lên mà ca mừng.
  Này Ngôi Hai giáng sinh trong hang lừa nào ta tới,
  và mau hát ca và mau tung hô phụng thờ.
}

loiDiepKhucBas = \lyricmode {
  Này Ngôi Hai Chúa thiên đình bao uy linh
  vừa giáng trần trong hang đá vì ta.
  Nào ta hãy hát vang lời kính chúc.
  Này Ngôi Hai giáng sinh ở trong hang lừa.
  Nào ta đi tới nào ta đi tới
  tung hô kính thờ.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Nhân thế qua bao đời đợi trông,
  Nay giữa một đêm mùa đông,
  ngàn thiên thần ca hát vang trời
  Truyền rao tin Con Chúa ra đời,
  đem an bình cho mọi nơi.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Mau ngắm trông đây, loài người oi ư,
  Nơi máng lừa chiên nực hôi
  Hài Nhi nằm an giấc mĩ miều,
  thật đã là Con Chúa thiên triều.
  Ôi cao nhiệm thay Tình Yêu.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Nhân thế qua bao ngày đợi trông,
  Nay giữa một đêm mùa đông
  ngàn Thiên thần ca hát vang trời
  truyền rao tin Con Chúa ra đời
  đem an bình cho mọi nơi.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Mau ngắm trông đây loài người ơi,
  nơi máng lừa chiên nực hôi
  Hài nhi nằm an giấc mĩ miều,
  thật đây là Con Chúa thiên triều.
  Ôi cao nhiệm thay Tình Yêu.
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
  %systems-per-page = 5
}

TongNhip = {
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
    \override Lyrics.LyricSpace.minimum-distance = #2.0
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
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      >>
    \new Staff
      <<
      \new Voice = beBas {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
