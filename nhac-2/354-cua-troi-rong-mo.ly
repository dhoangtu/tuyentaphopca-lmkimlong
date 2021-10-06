% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Cửa Trời Rộng Mở" }
  poet = "Thánh thi: Kinh chiều"
  meter = "Lễ: Đức Maria thân mẫu Chúa Giêsu"
  composer = "Lời: PV giờ kinh"
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
  \autoPageBreaksOff
  \partial 4 r4 |
  r8 d d e |
  c2 ~ |
  c8 c c d |
  b a16 (d) g,8 g |
  c4. b16 a |
  b4. a16 g |
  a8 a e16 (g) e8 |
  d2 ~ |
  d4 r |
  r8 d' e16 (d) b8 |
  c2 ~ |
  c8 c d16 (c) a8 |
  b4 r8 g16 (a) |
  fs8 g \slashedGrace { a16 (b } a4) ~ |
  a8 d d c |
  b2 \bar "|."
  R2
  
  \pageBreak
  
  R2
  r4 c8. b16 |
  a8 c e d |
  d2 ~ |
  d4 r8 a |
  a8. d16 d8 g, ~ |
  g8. a16 a8 fs ~ |
  fs [e16 (fs)] fs (e) d8 |
  g2 ~ |
  g4 r |
  r8 d' g, c |
  c4. b8 |
  b4 a8 (g) |
  fs2 ~ |
  fs4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r4 |
  r8 b' b c |
  a2 ~ |
  a8 a a b |
  g g [g f!] |
  e4. g16 fs |
  g4. fs16 e |
  fs8 d cs [cs] |
  d2 ~ |
  d4 r |
  r8 b' c16 (b) g8 |
  a2 ~ |
  a8 a b16 (a) fs8 |
  g4 r8 e |
  d8 d e4 ~ |
  e8 fs fs fs |
  g2 |
  R2*2
  r4 fs8. g16 |
  fs8 a c c |
  b2 ~ |
  b4 r8 d, |
  e8. fs16 fs8 e ~ |
  e8. e16 e8 d ~ |
  d c a4 |
  g8 e' e16 (d) cs8 |
  d4 r |
  r8 b' e, g |
  a4. g8 |
  g (e) cs4 |
  d2 ~ |
  d4 r
}

nhacDiepKhucBas = \relative c' {
  g8 g |
  g2 ~ |
  g8 a16 (g) fs8 g |
  \slashedGrace { g16 ( } a4) a8 d, |
  e4. d8 |
  c b a d |
  g,8. b16 c4 ~ |
  c8 a <a' a,> <g a,> |
  <fs d>2 |
  d8. a16 d8 (fs) |
  g2 |
  fs8. d16 fs8 (g) |
  a4. d8 |
  g,8. g16 b,8 c |
  d4. c8 |
  d4 d |
  <g g,>2 |
  d'8 b b4 ~ |
  b8 g a a16 (g) |
  \slashedGrace { b,16 ( } d2) ~ |
  d4 r8 d |
  g8. d16 b8 d |
  g16 (a) g8 fs4 |
  r8 d d8. e16 |
  e8 c r a |
  d4 d8 c |
  b2 ~ |
  b8 b b16 (a) d8 |
  g,4 r8 e' |
  d d' fs, g |
  e4 a |
  d,2 ~ |
  d4 g8 g
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ôi Ma -- ri -- a
  Ôi Ma -- ri -- a cửa trời rộng mở cho hồng ân
  cho hồng ân tuôn đổ chan hòa
  hương gió thoảng qua hương gió thoảng qua
  Cửa cài then đóng tinh hoa muôn đời.
  Đã bởi lòng Trinh nữ sinh ra
  Người là Đấng Cứu độ Đấng Cứu độ
  Đấng Cứu độ ta
  Giáo hội âu ca âu ca muôn lời.
}

loiDiepKhucAlto = \lyricmode {
  Ôi Ma -- ri -- a
  Ôi Ma -- ri -- a cửa trời rộng mở cho hồng ân
  cho hồng ân tuôn đổ chan hòa
  hương gió thoảng qua hương gió thoảng qua
  Cửa cài then đóng tinh hoa muôn đời.
  Đã bởi lòng Trinh nữ sinh ra
  Người là Đấng Cứu độ Đấng Cứu độ
  Đấng Cứu ta Đấng Cứu độ ta
  Giáo hội âu ca âu ca muôn lời.
}

loiDiepKhucBas = \lyricmode {
  Ma -- ri -- a Cửa trời rộng mở
  Ma -- ri -- a rộng mở cửa trời chan hòa hồng ân
  tuôn đổ tràn hòa
  Vườn là vườn xuân
  Vườn là vườn xuân thoáng qua
  Cửa cài then đóng then đóng muôn đời
  Chúa Giê -- su ở ngôi thiên tử
  Người đã bởi lòng trinh nữ sinh ra
  Người là Đấng Cứu độ
  Là Đấng Cứu độ ta
  Bạn hiền Giáo hội
  Bạn hiền Giáo hội tấu ca muôn lời Ma -- ri
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
  %page-count = #2
  %systems-per-page = 5
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
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
