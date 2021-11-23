% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Thần Trí Tôi Mừng Vui" }
  poet = "Ý: Lc. 1: 46-49"
  composer = "Thơ dịch: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \autoPageBreaksOff
  R2*3
  f8. a,16 d8 b |
  c4 c8 d16 (c) |
  g4. g8 |
  g8. e'16 d8 b |
  c2 |
  a4. c8 |
  a (g) e (f) |
  g4. g8 |
  f' e4 c8 |
  d16 (c) b8 b4 ~ |
  b
  ^\markup { \huge \bold "Tận" }
  \bar "|." \break
  
  g8 g |
  d' (e) b16 (c) d8 |
  g,2 ~ |
  g ~ |
  g4 r | \pageBreak
  
  r r8 g |
  g4 e'8 c |
  d4. d8 |
  g, d' c (b) |
  c2 ~ |
  c4
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||" \break
  
  r4
  R2*2
  e8. ^> e16 a,8 a |
  a2 |
  d8. ^> d16 g,8 g |
  g2 ~ |
  g8 g e e |
  a8. a16 g8 g |
  c2 ~ |
  c4 r \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  e8. c16 f8 d |
  g4 g8 a16 (g) |
  e4 c |
  a'4. d,8 |
  e (g) f f |
  e4. e8 |
  e8. c'16 g8 f |
  f4 (e) |
  d4. e8 |
  c4 c |
  b4. c8 |
  d g4 g8 |
  f16 (e) d8 d4 ~ |
  d
  r4
  R2
  r4 r8 e |
  e8. e16 e8 d |
  d4 r |
  r4 r8 d |
  e4 g16 (a) e8 |
  f4. g8 |
  e f e (d) |
  e2 ~ |
  e4
  r
  R2*2
  g8. ^> g16 f8 e |
  f2 |
  f8. ^> f16 e8 d |
  e2 ~ |
  e8 d c c |
  f8. e16 d8 e |
  a2 ( |
  g4) r
}

nhacDiepKhucBas = \relative c' {
  R2*2
  c8. g16 a8 e |
  f4 f8 g16 (f) |
  c4. b8 |
  c8. e16 d8 c |
  g'4. g8 |
  a (c) a16 (g) e8 |
  f4 f8 ^> e |
  f4 (a) |
  g f8 e |
  d4 c8 e |
  d <g g,> <g g,>4 ~ |
  <g g,>4
  
  r4
  R2
  r4 r8 c |
  c8. c16 c8 b |
  b4 a8 a |
  a4 a16 (b) g8 |
  c4. c8 |
  b g ^> a ^> b ^> |
  c f, g4 |
  c,2 ~ |
  c4
  
  g8 c |
  d4 e16 (d) c8 |
  f4 g8. ^> g16 |
  c,4 r |
  r8 c f8. ^> e16 |
  d4 r |
  r8 d c c |
  g'4 r |
  r8 a b c |
  f,2 ( |
  e4) r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chúa là Đấng hồn tôi muôn ca ngợi
  Này thần trí tôi mừng vui
  Trong Đấng Cứu Chuộc tôi,
  Thần trí tôi mừng vui vời vợi.
  \set stanza = "1."
  Phận bồ liễu của Nữ Tỳ
  Mọi đời sẽ gọi tôi có hồng phúc vô biên.
  Đã tác thành kỳ diệu,
  Đã tác thành kỳ diệu
  Danh Ngài là Thánh, Danh Ngài là Thánh.
}

loiDiepKhucAlto = \lyricmode {
  Chúa là Đấng hồn tôi muôn ca ngợi
  là Chúa hồn tôi muôn ca ngợi
  Này thần trí tôi mừng vui
  Trong Đấng Cứu Chuộc tôi,
  Thần trí tôi mừng vui vời vợi.

  Chúa đã ghé mắt thương xem.
  Mọi đời sẽ gọi tôi có hồng phúc vô biên.
  Đã tác thành kỳ diệu,
  Đã tác thành kỳ diệu
  Danh Ngài là Thánh, Danh Ngài là Thánh.
}

loiDiepKhucBas = \lyricmode {
  Chúa là Đấng hồn tôi muôn ca ngợi.
  Này thần trí tôi mừng vui,
  thần trí tôi mừng vui trong Vị Cứu tôi
  sướng vui vời vợi, sướng vui vời vợi.
  Chúa đã ghé mắt thương xem,
  Và mọi đời sẽ gọi tôi,
  sẽ gọi rằng tôi có phúc thực vô biên.
  \set stanza = "2."
  Vì trong tôi Đấng vạn năng
  Đã tác thành,
  Ngài đã tác thành,
  Danh Ngài là Thánh Ngài đã tác thành.
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
  %page-count = #1
}

TongNhip = {
  \key c \major \time 2/4
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
