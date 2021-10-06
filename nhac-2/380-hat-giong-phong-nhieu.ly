% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hạt Giống Phong Nhiêu" }
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
  \set Staff.printKeyCancellation = ##f
  r8
  <<
    {
      c8 a g16 f |
      bf2 ~ |
      bf8 g c c
    }
    {
      e,8 f e16 d |
      g2 ~ |
      g8 d c c
    }
  >>
  <<
    {
      \voiceOne
      r8 e
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      <e c>4
    }
  >>
  \oneVoice
  a8
  \tweak extra-offset #'(0 . 1)
  _\markup { \rest #"4" }
  a |
  d,4 f8 e16 (f) |
  g2 ~ |
  g8 r r c |
  a4 \tuplet 3/2 { f8 g f} |
  bf2 ~ |
  bf4 r |
  R2
  r8 g c c |
  a4 a16 (g) c8 |
  f,4. f8 |
  e8 f4 <g \tweak font-size -2 e>8 |
  <a \tweak font-size -2 f>4 r8 \bar "||" \break
  
  f16 f |
  bf4. bf8 |
  g4. bf16 d |
  c4 r8 e,16 e |
  e4. d8 |
  g c,4 f16 (g) |
  a4 r8 bf |
  d,4. d8 |
  f4. g16 d |
  c4 r8 c |
  g'4. e8 |
  f d4 g8 |
  a2 \bar "||" \break
  
  \key d \major
  fs8 (e4) a8 |
  d,4. d8 |
  b'4 b16 (d) b8 |
  a2 |
  d8 d4 d8 |
  d2 |
  bf4. a8 |
  g2 |
  g8 g16 g d'8 e16 (d) |
  b4. d8 |
  \slashedGrace { g,16 (a } g2) ~ |
  g4 g8 e |
  a4. e'8 |
  e e cs4 |
  d2 ~ |
  d4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  R2*6
  r8 f f e |
  r f \tuplet 3/2 { d8 e c } |
  d2 ~ |
  d4 r |
  r8 d g g |
  e2 |
  e4 f8 e |
  d4. d8 |
  c a4 c8 |
  \slashedGrace { c16 (d } c4) r8
  r8
  
  R2*12
  \key d \major
  R2
  r8 g' fs (g) |
  e4 e8 d |
  cs2 |
  a'8 g4 b8 |
  a2 |
  g4. fs8 |
  g2 ~ |
  g4 r |
  d8 d16 d e8 (fs) |
  g cs, d (cs) |
  b2 |
  d8 e fs g |
  a b a (g) |
  fs2 ~ |
  fs4 r
}

nhacDiepKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  <c c,>4 r |
  r8 e d c16 (bf) |
  f'4 <g e>8 <a f> |
  <bf g c,>4 r |
  r8 bf a a |
  g4 r8 bf |
  bf a r c, |
  d4. a'8 |
  g2 ~ |
  g8 g d' d |
  b!4 b8 b |
  c4. c,8 |
  c'8 bf f8. a16 |
  bf8 bf bf, bf |
  c d4 bf8 |
  f'4r8
  r8
  
  R2*12
  \key d \major
  R2
  r8 b a (b) |
  g4 g8 gs |
  a2 |
  fs8 e4 g8 |
  fs2 |
  g4 d |
  ef2 ~ |
  ef4 d8 d16 d |
  g8 a16 (g) fs8 d |
  e2 ~ |
  e4 e8 (g) |
  fs4. e8 |
  fs g a4 |
  <b d,>2 ~ |
  <b d,>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  \repeat unfold 8 { _ }
  Hạt giống thối rồi chim nhỏ ơi!
  Hát lên bài ca hùng vĩ.
  Hạt giống thối rồi
  gieo nắng vàng trên mọi đường thiên lý.
  Vì từ đây chim trời mặc sức ăn
  và mặt trời thừa lá cành nhảy múa.
  Đất mẹ từ đây hết khô cằn
  và núi và sông thừa ơn Chúa.
  Con kính chào hạt giống rất phong nhiêu
  sinh trong đêm khuya chết nửa chiều.
  Rồi phục hoạt khi đất trời ngái ngủ
  cho lòng con hát mãi khúc tình yêu.
}

loiDiepKhucAlto = \lyricmode {
  Hãy hát lên, hát bài ca hùng vĩ.
  Hạt giống thối rồi gieo ánh nắng vàng
  trên mọi đường thiên lý.
  
  Con kính chào rất phong nhiêu
  sinh trong đêm khuya chết nửa chiều.
  Rồi phục hoạt khi đất trời ngái ngủ
  để lòng con hát mãi khúc tình yêu.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 8 { _ }
  Hỡi chim nhỏ ơi! Hãy hát lên hòa lên hùng vĩ.
  Hạt giống thối rồi mặt trời ơi! Hạt giống thối rồi
  gieo ánh nắng vàng trên mọi hướng thiên lý.
  
  Con kính chào thật phong nhiêu
  sinh trong đêm khuya chết nửa chiều.
  Rồi phục hoạt khi đất trời mãi ngủ
  để con hòa mãi khúc kính yêu.
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
  %page-count = #1
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
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
