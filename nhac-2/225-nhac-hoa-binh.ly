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

nhacPhienKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
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
  g4. g8 |
  e e4 g8 |
  fs2 ~ |
  fs8 b b16 (c) b8 |
  fs2 ~ |
  
  \key bf \major
  \time 3/8
  fs4.
  
  g8 |
  g8. ef16 ef8 |
  d4 d8 |
  ef8. ef16 c8 |
  bf4. ~ |
  bf8 r bf |
  c8. d16 ef8 |
  d4 d8 |
  g8. g16 g8 |
  fs4 a8 |
  g8. ef16 c8 |
  d4. |
  
  \time 2/4
  R2
  r4 a'8 ^> a ^> ~ |
  a g g g |
  g4 ef8 ef ~ |
  ef ef ef (g) |
  fs ^> fs ^> r8 g |
  
  \key g \major
  g e4 g8 |
  fs8. fs16 a8 c |
  b4 r |
  r b8 ^> b ^> ~ |
  b as b c |
  b4 a8 a ~ |
  a gs a (b) |
  e, ^> e r8 e |
  cs d4 d8 |
  d2 ~ |
  d4 r |
  d4 d8 d |
  ef4. ef8 |
  d2 ~ |
  d4 r
}

nhacPhienKhucTenor = \relative c' {
  \set Staff.printKeyCancellation = ##f
  d16 (e) d8 |
  d2 ~ |
  d ~ |
  d4 c8. c16 |
  c2 ~ |
  c4 a8 a |
  b2 ~ |
  b4 r |
  r8 c16 c c (d) c8 |
  b2 ~ |
  b8 b16 b b (c) b8 |
  a2 ~ |
  a8 a b (a) |
  gs4 b8 b |
  c8 d16 c b8 c16 b |
  a8 r a r |
  r a a b16 a |
  gs4 r |
  r8 e' d b |
  a4. a8 |
  a2 ~ |
  a4 r |
  a2 ~ |
  
  \key bf \major
  \time 3/8
  a4.
  g8 |
  g4 a16 (g) |
  fs4 r8 |
  r4 fs8 |
  g8. g16 g8 |
  ef4. ~ |
  ef8 r c |
  c8. bf16 c8 |
  a4 g8 |
  d'8. d16 d8 |
  g4 g8 |
  fs4. |
  
  \time 2/4
  g8 ^> g4 ^> d8 |
  d d d4 |
  ef8 ^> ef4 ^> d8 |
  c4 c8 ^> c ^> ~ |
  c c c (ef) |
  d ^> d ^> r g |
  
  \key g \major
  e8 g4 c8 |
  a2 |
  g8 ^> g4 ^> fs8 |
  g a g4 |
  c,8 ^> e4 ^> e8 |
  g4 fs8 ^> fs ~ |
  fs e fs (g) |
  a8 ^> a \fermata r a |
  a a (c) b |
  b2 ~ |
  b4 d16 (e) d8 |
  b4 b8 b |
  c4. c8 |
  d2 ~ |
  d4 r
}

nhacPhienKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r4 |
  R2
  g8 g4 a16 (g) |
  d4 r |
  r r8 c |
  d d4 d8 |
  g,2 ~ |
  g4 r |
  r8 a'16 a a (b) a8 |
  g2 ~ |
  g8 g16 g g (a) g8 |
  d2 ~ |
  d8 d f!4 |
  e g8 g |
  a b16 a e8 e16 d |
  c8 r c r |
  r d d c16 d |
  e4 r |
  r8 c' b g |
  a4 a,8 a |
  d2 ~ |
  d4 r |
  d2 ~ |
  
  \key bf \major
  \time 3/8
  d4.
  g8 |
  g4 a16 (g) |
  fs4 r8 |
  r4 fs8 |
  g8. g16 g8 |
  ef4. ~ |
  ef8 r c |
  c8. bf16 c8 |
  a4 g8 |
  d'8. d16 d8 |
  bf4 ef8 |
  d4. |
  
  \time 2/4
  g8 ^> g4 ^> d8 |
  d d d4 |
  ef8 ^> ef4 ^> d8 |
  c4 c8 ^> c ^> ~ |
  c c c (ef) |
  d ^> d ^> r g |
  
  \key g \major
  e8 c4 a8 |
  d2 |
  g8 ^> g4 ^> fs8 |
  g a g4 |
  c,8 ^> e4 ^> e8 |
  g4 fs8 ^> fs ~ |
  fs e fs (g) |
  a8 ^> a \fermata r a |
  a d,4 g8 |
  g2 ~ |
  g4 r |
  g4 g8 g |
  c,4. c8 |
  g2 ~ |
  g4 r
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
  A ha hòa bình
  A ha Ngập trời tựa biển xanh tựa như suối xanh
  A ha này thơ sáng danh
  A ha
  rạng danh A ha
  Đầy trời bay lung linh
  linh
  Đầy trời bay lung linh.
}

loiPhienKhucTenor = \lyricmode {
  Thấy không em Nghe không em nhạc trào tuôn
  ơ sao sáng sao thơm ơ sao sáng sao thơm
  trên biển đời
  Nhạc vàng reo la la la la la la la la la la la la
  Khúc ca khải hoàn khi xưa
  xưa
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
  ơ sao sáng sao thơm ơ sao sáng sao thơm
  trên biển đời
  Nhạc vàng reo la la la la la la la la la la la la
  Khúc ca khải hoàn
  vọng ngàn xưa
  xưa
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
  linh Đầy trời bay lung linh.
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
  %page-count = #3
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
    \new Staff <<
      \clef treble
      \new Voice = beSop {
        \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \clef treble
      \new Voice = beAlto {
        \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacPhienKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
