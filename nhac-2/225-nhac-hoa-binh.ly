% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nhạc Hòa Bình" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \partial 4 r4 |
  R2*3
  r4 r8 a |
  fs fs4 d8 |
  g2 ~ |
  g8 b b16 (c) b8 \bar ".|:"
  a4. a8 |
  e'8. e16 e (fs) e8 |
  d2 ~ |
  d8 d4 c8 |
  b4. e8 |
  e2 ~ |
  e4 r8 e, |
  e a4 b8 |
  b2 ~ |
  b4 a8 b16 (a) |
  g4. e'8 |
  cs cs4 cs8 |
  d2 ~ |
  d8 b b16 (c) b8 \bar ":|."
  d2 ~ |
  
  \key bf \major
  \time 3/8
  d4. \bar "||"
  \partial 8 bf8 |
  bf8. g16 g8 |
  a4 fs8 |
  g8. g16 ef8 |
  d4. ~ |
  d8 r g |
  g8. fs16 g8 |
  a4 a8 |
  ef'8. a,16 d8 |
  d4 c8 |
  d8. g,16 a8 |
  a4. \bar "||"
  \time 2/4
  R2*3
  c8 ^> c4 ^> a8 |
  a a a4 |
  d8 ^> d ^> r8 b! \bar "||"
  \key g \major
  b8 c4 e8 |
  d2 ~ |
  d4 r |
  R2
  R2
  d8 ^> d4 ^> cs8 |
  d e d4 |
  c8 ^> c \fermata r8 e, |
  e fs4 g8 |
  
  g2 ~ |
  g4 r \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  
  g2 ~ |
  g ~ |
  g ~ |
  g4 r \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  
}

nhacPhienKhucTenor = \relative c' {
  \set Staff.printKeyCancellation = ##f
  
}

nhacPhienKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  
}

% Lời
loiPhienKhucSop = \lyricmode {
  Muôn hộc nhạc trào tuôn sao sáng sao thơm
  Kìa trông sao sáng sao thơm
  Trên biển đời phép tắc
  Nhạc hiền như tiếng trúc
  Ca khải hoàn phút trọng vọng ngàn xưa
  Sao sáng sao xưa
  Đêm nay một vì Vua nghìn thu dân mong đợi
  Đêm nay Ngài sẽ tới
  Trời đất cùng chưa bưa
  Mây nước cùng say sưa
  A ha này nhạc hòa bình
  A ha Ngập trời như suối xanh
  A ha này thơ sáng danh
  A ha Đầy trời bay lung linh
  linh
}

loiPhienKhucAlto = \lyricmode {
  \repeat unfold 10 { _ }
  A ha này nhạc hòa bình
  A ha hòa bình
  \repeat unfold 5 { _ }
  tựa biển xanh tựa như suối xanh
  A ha này thơ sáng danh
  A ha
  rạng danh A ha
  \repeat unfold 5 { _ }
  linh
  Đầy trời lung linh.
}

loiPhienKhucTenor = \lyricmode {
  Thấy không em Nghe không em nhạc trào tuôn
  ơ sao sáng sao thơm ơ sao sáng sao thơm
  trên biển đời
  Nhạc vàng reo la la la la la la la la la la la là
  Khúc ca khải hoàn khi xưa
  Đêm nay đức Vua nghìn thu dân mong đợi
  Đêm nay Ngài tới rồi
  Trời đất cùng mây nước say sưa
  A ha này nhạc hòa bình
  A ha hòa bình
  A ha hòa binh
  A ha Ngập trời tựa biển xanh
  A ha này thơ sáng danh
  A ha rạng danh
  A ha rạng danh
  A ha Đầy trời tỏa lung linh
  Thấy không
  linh Đầy trời bay lung linh.
}

loiPhienKhucBas = \lyricmode {
  Một vì sao lạ
  Muôn hộc nhạc trào nguồn
  \repeat unfold 15 { _ }
  vọng ngàn xưa
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
      \new NullVoice = beAlto \nhacPhienKhucAlto
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
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
      \new NullVoice = beTenor \nhacPhienKhucTenor
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
      \new NullVoice = beBas \nhacPhienKhucBas
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
