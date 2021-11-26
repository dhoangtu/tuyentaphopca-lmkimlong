% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hãy Vui Mừng Lên" }
  composer = "Nhạc: César Geofray"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \autoPageBreaksOff
  \partial 4. d8 c bf |
  \time 3/4
  c4 c8 c bf g |
  \time 4/4
  bf a g4 r8 g g f |
  \time 2/4
  bf bf f g |
  f4 r8 g |
  c4 r8 e |
  \time 3/4 c2 \bar "|." \break
  
  g8 g |
  \time 4/4
  a4. c8 b4 g8 f |
  \time 2/4 a4 a8 d, |
  e4. f8 |
  \time 3/4
  g4. r8 f f |
  \time 2/4 g4 d8 d |
  \pageBreak
  
  \time 3/8
  g d' d |
  d c b |
  \time 2/4
  d4 d \bar "||"
}

nhacPhienKhucAlto = \relative c' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  d8 c bf |
  \time 3/4
  ef4 c8 ef f f |
  \time 4/4 f ef d4 r8 g g f |
  \time 2/4
  d f f [ef] |
  d4 r8 d |
  g4 r8 g |
  \time 3/4
  f2
  d8 d |
  \time 4/4
  f4. a8 g (f) e d |
  \time 2/4
  f4 f8 d |
  c4. c8 |
  \time 3/4
  ef4. r8 d c |
  \time 2/4
  b!?4 a8 a |
  \time 3/8
  b g' g |
  gs gs gs |
  \time 2/4 a4 a
}

nhacPhienKhucTenor = \relative c' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  d8 c bf |
  \time 3/4
  g4 ef8 g a bf |
  \time 4/4
  c c b!?4 r8 g g f |
  \time 2/4
  g a c b |
  a4 r8 bf |
  b4 r8 b |
  \time 3/4
  a2
  b8 (c) |
  \time 4/4
  c4. e8 (d4) c8 (a) |
  \time 2/4
  c4 c8 (a) |
  bf4. a8 |
  \time 3/4
  bf4. r8 c af |
  \time 2/4
  g4 f8 f |
  \time 3/8
  g d' d |
  e e e |
  \time 2/4
  d4 d
}

nhacPhienKhucBas = \relative c {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  d8 c bf |
  \time 3/4
  bf4 bf8 bf bf c |
  \time 4/4
  d f g4 r8 g g f |
  \time 2/4
  g g, bf c |
  d4 r8 g |
  e4 r8 c |
  \time 3/4
  f2
  g4 ~ |
  \time 4/4
  g8 d g2 g4 ~ |
  \time 2/4
  g8 d g4 ~ |
  g8 d g4 ~ |
  \time 3/4
  g8 d g4 g8 ef |
  \time 2/4
  d4 ef8 ef |
  \time 3/8
  d g g |
  g!? g g |
  \time 2/4 g4 g
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Hãy vui mừng lên hỡi các dân tộc khắp địa cầu.
  Mau mau tỉnh thức đón mừng Sinh Nhật.
  No -- el, No -- el!
  \set stanza = "1."
  Trần hoàn ơi! Thức tỉnh sao còn đắm đuối,
  còn ngủ chi nữa.
  Vì giờ đây giờ nửa đêm chính Chúa đến trong nguồn thánh đức.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 23 { _ }
  \set stanza = "2."
  Mục đồng ơi! Tất cả mau hãy thức giấc còn ngủ chi mãi.
  Nào cùng đi để nhìn xem Chúa chí thánh nay đã giáng thế.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 23 { _ }
  \set stanza = "3."
  Hãy nhìn xem Chúa Cả nay Ngài giáng thế nghèo khổ cô vắng.
  Mà ngày sau Ngài hiển linh đến phán xét trong triều ánh sáng.
}

loiPhienKhucSopBon = \lyricmode {
  \repeat unfold 23 { _ }
  \set stanza = "4."
  Tầng trời cao sáng tỏ tinh cầu lấp lánh thờ lạy tôn kính.
  Đoàn hùng binh cùng hòa ca hát kính Chúa muôn đời chí thánh.
}

loiPhienKhucBasMot = \lyricmode {
  Hãy vui mừng lên hỡi các dân tộc khắp địa cầu.
  Mau mau tỉnh thức đón mừng Sinh Nhật.
  No -- el, No -- el!
  \set stanza = "1."
  Ôi còn ngủ, ôi còn ngủ, còn ngủ gì nữa.
  Vì này đây giờ nửa đêm chính Chúa đến trong nguồn thánh đức.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 23 { _ }
  \set stanza = "2."
  Ôi còn ngủ, ôi còn ngủ, còn ngủ gì mãi.
  Nào cùng đi để nhìn xem Chúa chí thánh nay đã giáng thế.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 23 { _ }
  \set stanza = "3."
  Ôi nghèo khổ, ôi nghèo khổ, nghèo khổ cô vắng.
  Mà ngày sau Ngài hiển linh đến phán xét trong triều ánh sáng.
}

loiPhienKhucBasBon = \lyricmode {
  \repeat unfold 23 { _ }
  \set stanza = "4."
  Ôi thờ lạy, ôi thờ lạy, thờ lạy tôn kính.
  Đoàn hùng binh cùng hòa ca hát kính Chúa muôn đời chí thánh.
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
  %systems-per-page = 4
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
      >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef "bass"
        \new Voice \TongNhip \partCombine 
        \nhacPhienKhucTenor
        \notBePhu -2 { \nhacPhienKhucBas }
      \new NullVoice = beBas \nhacPhienKhucBas
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBon
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
