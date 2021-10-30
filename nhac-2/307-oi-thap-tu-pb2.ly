% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ôi Thập Tự" }
  poet = "Bản dịch: CGKPV"
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 g8. d16 |
  d2 ~ |
  d8 a'16 (g) fs8 b |
  b4 g8. g16 |
  c4. a16 a |
  c8 d d4 ~ |
  d8 fs,16 fs a8 b |
  b4. e,16 e |
  g8 a a e |
  d2 ~ |
  d4 r |
  R2
  r8 d bf'16 (c) bf8 |
  a4. g8 |
  d d' b16 (d) b (a) |
  g4. a8 |
  fs16 (a) fs (e) d4 ~ |
  d8 d' c b |
  a4. b8 |
  b2 ~ |
  b4 \bar "|." \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key bf \major
  r4 |
  R2
  r4 r8 d |
  bf8. a16 g8 a ~ |
  a g fs g |
  a2 ~ |
  a4 r8 d16 c |
  c8 c bf a |
  a4. c16 bf |
  bf8 bf a g |
  g4 r8 d |
  bf'8. g16 ef'8 ef |
  d2 ~ |
  d ~ |
  d8 ef c4 ~ |
  c8 d bf4 ~ |
  bf8 c a bf16 g |
  g8 g4 g8 |
  a2 ~ |
  a4 \bar "||" \break
  
  \key g \major
  b8 b |
  c4. a8 |
  g4 g8 (a) |
  b4 g8 b |
  fs4. g8 |
  e4 g |
  a2 |
  d8 b4 c8 |
  c4 a8 (g) |
  fs4 r8 fs8 |
  e e e4 |
  a8 a4 \afterGrace a8 ({
    \override Flag.stroke-style = #"grace"
    b16)}
  \revert Flag.stroke-style
  g2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  g8. d16 |
  d2 ~ |
  d8 fs16 (e) d8 d |
  g4 g8. f!16 |
  e4. g16 g |
  g8 fs fs4 ~ |
  fs8 d16 d e8 e |
  d4. e16 e |
  d8 d d cs |
  d2 ~ |
  d4 r |
  R2
  r8 d g16 (a) g8 |
  fs4. g8 |
  d d d d |
  b4. e8 |
  d c b4 ~ |
  b8 b' a g |
  fs4. g8 |
  g2 ~ |
  g4
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key bf \major
  r4 |
  R2
  r4 r8 fs |
  g8. f16 ef8 d ~ |
  d bf a bf |
  d2 ~ |
  d4 r8 bf'16 a |
  a8 a g g |
  fs4. fs16 g |
  d8 d d d |
  bf2 ~ |
  bf4 r |
  r8 g'16 g c8 c |
  bf8 d,16 d bf'8 bf |
  a4. a16 (g) |
  fs4. g16 (ef) |
  d4. d16 d |
  c8 bf4 ef8 |
  d2 ~ |
  d4
  
  \key g \major
  d8 d |
  g4. c,8 |
  b4 e |
  ds e8 e |
  d4. d8 |
  c4 b |
  d2 |
  d8 d4 d8 |
  e4 e |
  ds r8 d! |
  c c c4 |
  c8 c4 c8 |
  b2
}

nhacDiepKhucBas = \relative c' {
  r4 |
  r
  <<
    {
      b8. a16 |
      a4. a8 |
      g4
    }
    {
      g8. g16 |
      fs4. fs8 |
      e4
    }
  >>
  e8. d16 |
  c4. e16 e |
  ef8 (d4) d'8 |
  d4 c |
  b4. c16 c |
  b8 fs g a |
  <fs d>2 ~ |
  <fs d>4 g8 g |
  ef g4 ef8 |
  d2 ~ |
  d8 d e (g) |
  fs4 g8 d |
  e8. e16 e8 c |
  d4. d8 |
  a' a, c cs |
  d4. d8 |
  <g d g,>2 ~ |
  <g d g,>4
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key bf \major
  d8 g |
  ef4. c8 |
  a c d4 ~ |
  d2 ~ |
  d4 r8 g |
  fs8. e!16 d8 bf' |
  a16 (bf) a8 g4 ~ |
  g8 fs g c, |
  d4. d16 ef |
  g8 g fs g |
  g2 ~ |
  g4 r |
  r8 bf16 bf a8 a |
  g fs16 fs g8 g |
  <fs d>4 a, |
  c g |
  g' fs8 (g) |
  ef8 ef4 g8 |
  <fs d>2 ~ |
  <fs d>4
  
  \key g \major
  g8 g |
  e4. fs8 |
  g4 e |
  b c8 cs |
  d4.
  <<
    {
      g8 |
      g4 g |
      fs2
    }
    {
      b,8 |
      c4 e |
      d2
    }
  >>
  <fs d>8 g4 g,8 |
  c4 cs |
  d r8 b |
  c c c4 |
  <<
    {
      e8 e fs4 |
      g2
    }
    {
      a,8 a d4 |
      g,2
    }
  >>
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ôi Thập tự phúc lành thế giới, nguồn cậy trông,
  nguồn cậy trông cứu rỗi, nguồn cậy trông cứu rỗi,
  nguồn cậy trông cứu rỗi lan tràn.
  Hình khổ nhục nhằn nay thành ngưỡng cửa thiên đàng,
  ngưỡng cửa thiên đàng ngưỡng cửa thiên đang quang vinh
  Tế phẩm trên mình ngươi trên mình ngươi đó đã giang tay quy tụ người trần,
  đã giang tay quy tụ người trần mặc cho thủ lãnh thế gian
  tấn công tấn công tấn công cũng chẳng được phần lợi chi.
  Giê -- su hỡi con quỳ tạ Chúa và Thánh Thần, Thánh Phụ cao tôn
  Giúp con chiến đấu chẳng sờn theo cờ thập tự thiên môn khải hoàn.
}

loiDiepKhucAlto = \lyricmode {
  Ôi Thập tự phúc lành thế giới, nguồn cậy trông,
  nguồn cậy trông cứu rỗi, nguồn cậy trông cứu rỗi,
  nguồn cậy trông cứu rỗi lan tràn.
  Hình khổ nhục nhằn nay thành ngưỡng cửa thiên đàng,
  ngưỡng cửa thiên đàng ngưỡng cửa thiên đang quang vinh
  Tế phẩm trên mình ngươi trên mình ngươi đó đã giang tay quy tụ người trần,
  đã giang tay quy tụ người trần
  mặc thủ lãnh thế gian mặc thủ lãnh thế gian
  chẳng được, chẳng được cũng chẳng được phần lợi chi.
  Giê -- su hỡi con quỳ tạ Chúa và Thánh Thần, Thánh Phụ cao tôn
  Giúp con chiến đấu chẳng sờn theo cờ thập tự thiên môn khải hoàn.
}

loiDiepKhucBas = \lyricmode {
  Ôi thập tự cứu đời, chốn ước trông, chốn ước trông cứu rỗi,
  cứu rỗi, chốn ước trông cứu rỗi lan tràn.
  Xưa nên hình khổ nhục nhằn mà nay thành cửa hiển vang,
  nay nên ngưỡng cửa hiển vang, ngưỡng cửa hiển vang quang vinh
  Này tế phẩm trên mình ngươi đó tế phẩm trên mình ngươi đã giang tay
  quy tụ người trần, đã giang tay quy tụ người trần
  dẫu thủ lãnh thế gian mặc thủ lãnh thế gian chẳng được thì
  cũng chẳng được phần ích gì.
  Giê -- su hỡi con quỳ ca hòa và Thánh Thần, Thánh Phụ cao tôn
  Giúp con tranh đấu chẳng sờn theo cờ thập tự thiên môn khải hoàn.
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
}

TongNhip = {
  \key g \major \time 2/4
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
    %{
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
      \new NullVoice = beAlto \nhacDiepKhucAlto
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
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
