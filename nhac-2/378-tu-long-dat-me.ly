% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ca Vang Khải Hoàn" }
  poet = "Thơ: Lm. Xuân Ly Băng"
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
  \partial 4. d16 (e) b8 c |
  c a4 d8 |
  g,2 ~ |
  g8 g fs fs16 (a) |
  e8 e4 d8 |
  g2 ~ |
  g4 r8 d' |
  a (d b) a |
  fs g4 a8 |
  \slashedGrace { d,16 (e } d4.) g8 |
  a2 ~ |
  a8 c d e16 (d) |
  a8 (d) b16 (a) fs8 |
  g2 ~ |
  g4 r \break
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  \repeat volta 2 {
    r8 bf a r |
    r c bf r |
    r4 r8 d |
    bf4. g8 |
    g4. a16 a |
    d2 ~ |
    d4 r |
    R2*2
    c4. bf16 g |
    a4. a16 f
  }
  \alternative {
    {
      g2
    }
    {
      \key g \major
      g2      
    }
  }
  r8 d d' d |
  g,4 c8 d |
  g,2 ~ |
  g8 fs fs b |
  e,4 d8 a' |
  a4. c8 |
  c4 a8 d |
  d2 ~ |
  d4 r8 fs,16 (g) |
  a4 r8 g16 (a) |
  bf4 r8 a16 d |
  g,4. e16 a |
  d4. a8 |
  b b4 a8 |
  g2 ~ |
  g ~ |
  g4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  b8 g a |
  a fs4 fs8 |
  e2 ~ |
  e8 e d d |
  cs cs4 c!8 |
  b2 ~ |
  b4 r |
  r8 d g e |
  d4 d8 c |
  b2 |
  r8 e fs4 |
  r8 e g g |
  fs (g) d c |
  b2 ~ |
  b4 r
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  r8 g' f r |
  r a g r |
  r4 r8 fs |
  g4. ef8 |
  ef4. d16 c |
  bf2 ~ |
  bf4 r |
  R2*2
  a'4. g16 d |
  ef4. c16 c |
  bf2 |
  
  \key g \major
  b2 ~ |
  b4 r8 b |
  c c16 (b) a4 |
  r8 e'16 (d) c8 c |
  b4 r |
  r8 c b e |
  d4 d8 a' |
  g4. g8 |
  fs2 ~ |
  fs4 r8 d |
  ef4 r8 d |
  g4 r8 fs16 fs |
  e4. c16 c |
  b4. c8 |
  d d4 c8 |
  b4. d8 |
  e e4 ef8 |
  d4
}

nhacDiepKhucBas = \relative c {
  r8 r4 |
  r d |
  e8. e16 e8 d |
  c4 d |
  a' a,8 d |
  e2 ~ |
  e4 r |
  r r8 cs |
  d4 g8 fs |
  g g16 g e (g) e8 |
  d4. d8 |
  a'4. c8 |
  d d,4 d8 |
  g2 ~ |
  <<
    {
      \voiceOne
      g4 r
    }
    \new Voice = "splitpart" \notBePhu -2 {
      \voiceTwo
      g8. g16 f!8 ef
    }
  >>
  \oneVoice
  
  \set Staff.printKeyCancellation = ##f
  \key bf \major
  d4. d16 g |
  c,4. g'16 g |
  \slashedGrace { f16 (g } a2) |
  r8 d, ef r |
  r c d r |
  r4 r8 d |
  \slashedGrace { d16 ( } g4.) ef8 |
  c4. g'16 g |
  \slashedGrace { fs16 (g } a2) ~ |
  a8 g fs (g) |
  c,4 d8. d16 |
  <<
    {
      \voiceOne
      g2
    }
    \new Voice = "splitpart" \notBePhu -2 {
      \voiceTwo
      g8. g16 f8 ef
    }
  >>
  \oneVoice
  
  \key g \major
  g2 ~ |
  g4 r8 g |
  a a16 (g) fs4 |
  r8 g16 (fs) e8 e |
  d4 r |
  r8 e g g |
  fs4. f!8 |
  e4. ef8 |
  d4. a16 d |
  d2 |
  r8 c e r |
  r g, d' r |
  r e16 d e8 r |
  r g16 fs g8 <g e> |
  <g d> <g d>4 <fs d>8 |
  <<
    {
      \voiceOne
      \stemDown g4. b8 |
      c c4 c8 |
      b4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,2 ~ |
      g ~ |
      g4
    }
  >>
}

% Lời
loiDiepKhucSop = \lyricmode {
  Giáo Hội năm châu mừng chư vị anh hùng Tử Đạo tại Việt Nam.
  Đau khổ muôn trùng ba thế kỷ đầu rơi,
  đầu rơi máu đổ vẫn bền gan.
  Hm __ _ _ _
  Tiếng chuông tuyệt mệnh mới dứt hồi.
  Trong bụi mù bay chiếc đầu rơi.
  rơi.
  Hạt giống thối rồi cây đã mọc
  từ lòng đất mẹ mùa bao la,
  bao la mùa bao la.
  Vừa gieo vừa khóc ngày trở về,
  ngày trở về ôm bó lúa hoan ca.
}

loiDiepKhucAlto = \lyricmode {
  Giáo Hội năm châu mừng chư vị anh Hùng Tử Đạo tại Việt Nam.
  Cực khổ muôn trùng ba thế kỷ đầu rơi,
  đầu rơi máu đổ vẫn bền gan.
  Hm __ _ _ _
  Tiếng chuông tuyệt mệnh mới dứt hồi.
  Trong bụi mù bay chiếc đầu rơi.
  rơi.
  Hạt giống thối rồi cây nay đã mọc
  từ lòng đất mẹ mùa bao la, bao la.
  Vừa gieo vừa khóc ngày trở về,
  ngày trở về ôm bó lúa hoan ca,
  ôm bó lúa hoan ca.
}

loiDiepKhucBas = \lyricmode {
  Mừng vui hát kính chư vị tuần giáo tại Việt Nam.
  Ngàn trung ba thế kỷ ôi đau khổ muôn trùng
  đầu rơi máu đổ vẫn bền gan.
  Trời miệt pháp trường mây loang lổ hồi chuông tuyệt mệnh.
  Ngọc thể anh hùng như cây đổ trong bụi mù bay đầu rơi.
  rơi.
  Hạt giống thối rồi cây nay đã mọc
  từ lòng đất mẹ bao la, bao la.
  Ngày đi gieo vừa gieo vừa khóc ngày trở về,
  ngày trở về ôm bó lúa hoan ca,
  ôm bó lúa hoan ca.
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
  %systems-per-page = 4
}

TongNhip = {
  \key g \major \time 2/4
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
