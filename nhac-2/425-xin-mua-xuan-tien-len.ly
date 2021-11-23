% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Mùa Xuân Tiến Lên" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
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

nhacPhienKhucSop = \relative c'' {
  \partial 4 r4 |
  R2
  r4 c8 c |
  g (c) a16 (g) f8 |
  g4 <g d>8 <g d> |
  e8 (d) c8 c |
  d2 ~ |
  d8 r16 g e8 g |
  a a a16 (g a) c |
  d8 r16 c d8 d |
  e e d16 (e d) c |
  g4 c8 c |
  a (g) f fs |
  g2 ~ |
  g4 r |
  r e'8 ^\p e |
  d4 d8 d |
  b (a) g g |
  a4. a8 |
  d,8. d16 d8 f16 (g) |
  a8 r16 f a (c) a8 |
  g4. g8 |
  c,8. c16 c8 (d) |
  g8. e16 e8 g |
  a4 a8 d |
  d4. (e8) |
  d4 d8 d |
  d (c) b4 |
  c2 \bar "|." \break
  
  \partial 4 a8. g16 |
  a8 a c (d16 c) |
  a4. (g8) |
  f a g16 (a g f) |
  d8 f c (e16 f) |
  g4 a8. g16 |
  a8 a c (d16 c) |
  a4. (g8) |
  f a d, (f) |
  g8 a16 (g) e (g e d) |
  c4 \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  r4 |
  R2
  r4 c8 c |
  g (c) a16 (g) f8 |
  g4 d8 d |
  c4 c8 c |
  b2 ~ |
  b8 r16 b c8 c |
  c c c8. [c16] |
  f8 r16 f f8 f |
  g [c,] c8. [c16] |
  b8 (d) e g |
  c,4 d8 d |
  d2 ~ |
  d4 r |
  r g8 ^\p g |
  fs4 fs8 fs |
  g (d) e d |
  cs4. cs8 |
  d8. d16 d8 f16 (g) |
  a8 r16 d, d8 [c] |
  b4. b8 |
  c8. c16 c8 (d) |
  g8. e16 c8 c |
  c4 c8 f |
  g4 (a8 g) |
  fs4 f!8 f |
  e4 d8 (f) |
  e2
}

nhacPhienKhucBas = \relative c' {
  g8 g |
  c,8. g'16 af8 (g) |
  f2 ~ |
  f4 r |
  r g8 g |
  a4 a8 a |
  g8. d16 b (c) d8 |
  g,4 c8 e |
  f f f8. e16 |
  d8 r16 d d8 d |
  c c f8. f16 |
  g8 (f) e e |
  f (e) d c |
  b4. b8 ^\f |
  c d e d16 c |
  g8 c a (c) |
  d4 d8 d |
  g4 c8 b |
  a8. e16 a (bf a g)
  f2 ~ |
  f4 f8 f |
  g8. d16 g (af g f) |
  e2 ~ |
  e8. c16 c8 e |
  f4 e8 d |
  cs2 |
  d4 d8 d |
  g4 d8 (g,) |
  c2
}

% Lời
loiPhienKhucSop = \lyricmode {
  Nắng mới tỏa hương ngàn nơi,
  Hãy đứng lên bạn tình ơi
  Xin mùa xuân tới cho hoa nở tươi.
  đàn chim tung cánh líu lo vang trời
  hãy tiến lên Bạn tình ơi.
  Hãy tiến lên hãy tiến lên Bạn tình ơi.
  Hỡi bạn là vườn khép kín
  là suối niêm phong
  hỡi bạn là mùa xuân tuyệt vời hương sắc
  Bạn hãy tiến lên, tiến đến với lòng tôi.
  
  <<
    {
      \set stanza = "1."
      Xin mùa xuân mau tiến lên
      Để những cây hồng mau trổ bông
      Xin mùa xuân mau tiến lên
      Để khóm huệ tươi thắm hương nồng.
    }
    \new Lyrics {
	    \set associatedVoice = "beSop"
	    \set stanza = "2."
	    Xin mùa xuân mau tiến lên
      Và hát vang bài ca tình yêu
      Xin mùa xuân mau tiến lên
      Dòng máu về tìm sẽ tươi mầu.
	  }
  >>
}

loiPhienKhucBas = \lyricmode {
  Đông qua rồi, mưa đã thôi
  Hãy đứng lên bạn tình ơi.
  Nắng tỏa sáng ngời mùa xuân tới cho hoa nở tươi
  đàn chim tung cánh líu lo vang trời.
  Hãy tiến lên Bạn tình ơi.
  Lòng bạn tinh trắng như bông huệ trên đồi nương.
  Hãy tiến lên Bạn tình ơi.
  Bạn diễm lệ
  suối niêm phong bạn yêu kiều
  tuyệt vời hương sắc Bạn hãy tiến lên,
  tiến lên với lòng tôi.
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
  %page-count = #2
  %systems-per-page = 5
  %ragged-bottom = ##t
}

TongNhip = {
  \key c \major \time 2/4
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
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucSop
    >>
    %{
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
    %}
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
