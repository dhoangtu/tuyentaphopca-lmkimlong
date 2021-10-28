% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tìm Người" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  g8. g16 g8 a |
  \slashedGrace { a16 ( } b4.) d,8 |
  g a4 g8 |
  fs2 |
  c'8. c16 a8 a |
  b4. g8 |
  g g4 e8 |
  d2 |
  d8. fs16 g8 a |
  \slashedGrace { b16 ( } a4.) a8 |
  e' b4 c8 |
  d2 |
  b8. c16 b8 a |
  e4. e8 |
  d c'4 a8 |
  b2 |
  g8. g16 g8 a |
  \slashedGrace { g16 (a } b4.) b8 |
  e, e4 g8 |
  fs2 |
  c'8. a16 a8 c |
  b4. g8 |
  a a4 fs8 |
  g2 \bar "|."
  
  \key bf \major
  R2*2
  a8. bf16 g (a) g8 |
  fs4 r8 d ^\f |
  bf'8 bf4 bf8 |
  a4. a8 ^\ff |
  c8 c4 d8 |
  \slashedGrace { g,16 (a } g2)
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  g8. g16 g8 a |
  \slashedGrace { a16 ( } b4.) d,8 |
  g a4 g8 |
  fs2 |
  e8. e16 e8 e |
  ds4. e8 |
  e d4 cs8 |
  d2 ~ |
  d4 r |
  r8 e e a |
  gs4 r |
  r8 fs fs fs |
  g4 r |
  r8 c, c c |
  c4 g'8 (e) |
  fs2 |
  g8. g16 g8 a |
  \slashedGrace { g16 (a } b4.) b8 |
  e, e4 g8 |
  fs2 |
  e8. e16 e8 e |
  ds4. e8 |
  e c4 a8 |
  b2 |
  
  \key bf \major
  R2*2
  d8. c16 bf8 bf |
  bf4 r8 d ^\f |
  d d4 d8 |
  ef4. ^\ff d8 |
  g g4 fs8 |
  \slashedGrace { g16 (a } g2)
}

nhacDiepKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  R2
  g8. g16 g8 a |
  \slashedGrace { a16 ( } b4) cs |
  d8 d4 b8 |
  a4 c8. c16 |
  b8 b c4 |
  e,8 g a
  <<
    {
      g8 |
      fs2 ~ |
      fs4 r |
      r8 c' b c |
      d4 r |
      r8 a a a |
      b4
    }
    {
      a8 |
      d2 ~ |
      d4 r |
      r8 a g f! |
      e4 r |
      r8 d d d |
      g4
    }
  >>
  r4 |
  r8
  <<
    {
      \voiceOne
      a8 a a |
      a4. c8 |
      b2
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      g8 g g |
      fs4 e |
      ds2
    }
  >>
  \oneVoice
  R2
  g8. g16 g8 g |
  c4 cs |
  e8 d4 b8 |
  a4 c8. a16 |
  a8 b c4 |
  a8 a d,4 |
  <g g,>2
  
  \key bf \major
  d8. g16 d8 g |
  c, (d4.) ~ |
  d2 ~ |
  d4 r8 d ^\f |
  g8 g4 g,8 |
  c4. d8 ^\ff |
  ef ef4 d8 |
  \slashedGrace { g16 (a } g2)
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ai cho thiên lý mã
  cần chi cỡi thanh ngưu.
  Tôi đi tìm người yêu trong không gian biền biệt.
  Từ nơi kim ô chết tận xứ Nàng Nguyệt sinh.
  Đi mãi trong hương tình
  mơ màng mắt say đắm.
  Nghe xa xa văng vẳng tiếng cầm nhạc véo von.
  Ngỡ tưởng là nước non của chư tiên quần hội.
  Sao lý tưởng của đời
  để chiếm hữu lấy Người nguyện hy sinh tất cả.
}

loiDiepKhucAlto = \lyricmode {
  Ai cho thiên lý mã
  cần chi cỡi thanh ngưu.
  Tôi đi tìm người yêu trong không gian biền biệt.
  Nơi kim ô lặn miền Nàng Nguyệt sinh.
  Đi trong mơ màng say đắm.
  Nghe xa xa văng vẳng tiếng cầm nhạc véo von.
  Ngỡ tưởng là nước non của chư tiên quần hội.
  Sao lý tưởng của đời
  để chiếm hữu lấy Người nguyện hy sinh tất cả.
}

loiDiepKhucBas = \lyricmode {
  Ai cho thiên lý mã
  cần chi cỡi thanh ngưu.
  Tôi đi tìm người yêu từ không gian biền biệt.
  Nơi kim ô
  <<
  { chết }
  \new Lyrics {
	  \set associatedVoice = "beBas"
	  \override Lyrics.LyricText.font-shape = #'italic
	  lặn
	}
  >>
  miền Nàng Nguyệt sinh.
  Đi trong mơ màng say đắm.
  Nghe xa xa văng vẳng nhạc véo von, véo von.
  Ngỡ tưởng là non nước chư tiên quần hội.
  Càng đi càng sáng tỏ
  để chiếm hữu được Người nguyện hy sinh tất cả.
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
  page-count = #2
  ragged-bottom = ##f
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
