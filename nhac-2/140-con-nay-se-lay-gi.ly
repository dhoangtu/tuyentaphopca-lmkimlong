% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Con Nay Sẽ Lấy Gì" }
  composer = "Tv. 115"
  arranger = "Lm. Kim Long"
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

nhacDiepKhucSop = \relative c'' {
  d8 d c16 (e) d (c) |
  g2 ~ |
  g4 e8 e |
  a2 ~ |
  a4 d8 (c) |
  b4 e8 (d) |
  c2 |
  a16 (c) d8 c a |
  g4. g8 |
  <<
    {
      e'8 e f (e) |
      d2 ~ |
      d4
    }
    \notBePhu -2 {
      c8 c d (c) |
      b2 ~ |
      b4
    }
  >>
  r4 |
  r4. e,8 |
  c'8. c16 c8 (b) |
  c2 |
  d8 d e d16 (c) |
  g4 e8. e16 |
  a8 a g8. g16 |
  c8 c r c |
  b (c) d d |
  e2 |
  d |
  c ~ |
  c4 r \bar "||"
}

nhacDiepKhucBas = \relative c' {
  R2
  e8 e d16 (g) e (d) |
  c2 ~ |
  c4 c8 c |
  f4 d8 d |
  g4. f8 |
  e2 ~ |
  e4 r |
  r8 f e d |
  c4 b8 (c) |
  g'2 ~ |
  g4 r8 c, |
  a'8. a16 a8 (g) |
  a4. f8 |
  e d c4 |
  g'4 g8 f |
  e4 c8. c16 |
  f8 f f8. d16 |
  e8 e r4 |
  r4. g8 |
  c, e g c |
  <<
    {
      a4 ^(b) |
      g2 ~ |
      g4
    }
    {
      f4 _(g) |
      <e c>2 ~ |
      <e c>4
    }
  >>
  r4 \bar "||"
}

nhacPhienKhuc = \relative c'' {
  c8. c16 a8 a |
  a4. g8 |
  g8. a16 f8 g |
  e2 |
  d8 e16 (d) c8 (d) |
  g2 |
  g8. e16 e8 e |
  a2 |
  a8 b a a |
  g4. g8 |
  g8 g g (a) |
  c2 \bar "|."
}

% Lời
loiDiepKhucSop = \lyricmode {
  Con nay sẽ lấy gì mà đền đáp Chúa ơi, Chúa ơi.
  Bởi biết bao ơn lành mà Chúa đã khứng ban.
  Này đây con dâng lên, dâng lên chén cứu độ,
  một lòng tin yêu, một lòng tin yêu,
  ca tụng uy danh Chúa muôn đời.
}

loiDiepKhucBas = \lyricmode {
  Con nay sẽ lấy gì mà đền đáp, mà đền đáp Chúa ơi.
  Biết bao ơn lành Ngài ban.
  Này đây con dâng lên, tiến lên con hiệp dâng chén cứu độ,
  một lòng tin yêu, với lòng tin yêu,
  tán tụng uy danh Chúa muôn đời.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Giữa lúc con than van: Thân con khốn khổ cơ cùng.
  Con vẫn cậy trông, khi lòng ngợp sầu thương.
  Con đã tuyên ngôn rằng: Mọi người đều giả dối.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Dẫu khó nguy truân chuyên, con luôn giữ lời đoan nguyền.
  Ngay trước toàn dân, ôi thực là đẹp thay.
  Ai chết nơi nhan Ngài, vì một lòng nghĩa tín.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Hiến lễ dâng tri ân, môi con khấn nguyện âm thầm.
  Danh thánh Thượng Đế, xin thề nguyền từ nay,
  Đi trước tôn nhan Ngài, trọn một niềm cậy tin.
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
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
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

%\pageBreak

\score {
  \new ChoirStaff <<
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
