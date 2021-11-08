% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trong Thánh Thần Và Chân Lý" }
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

nhacDiepKhucSop = \relative c'' {
  \partial 4. b8 b16 (a) g8 |
  a4. fs8 |
  fs fs g a |
  d,4. g8 |
  a fs g a |
  b4 r8 b |
  c a b c |
  d4 \tuplet 3/2 { d8 e e } |
  e4 \tuplet 3/2 { c8 c d } |
  d4. b8 |
  a d b16 (a) g8 |
  a2 |
  g8 g g e |
  d4. g16 g |
  g8 a fs a |
  b4. b16 b |
  b8 a b c |
  d4 \tuplet 3/2 { d8 e e } |
  c4 \tuplet 3/2 { a8 a d } |
  g,2 ~ |
  g4 r \bar "|." \pageBreak
  
  g8 g g e |
  d4. g8 |
  fs g4 a8 |
  b4. b16 b |
  c8 c c a |
  b4. g8 |
  fs a g e |
  d4 r8 g |
  a fs g a |
  b4. b16 b |
  a8 a d fs, |
  g2 ~ |
  g8 \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  b8 b16 (a) g8 |
  a4. fs8 |
  fs fs e c |
  b4. b8 |
  c d e d |
  g4 r8 g |
  e e d g |
  fs4 \tuplet 3/2 { b8 b b } |
  c4 \tuplet 3/2 { g8 g g } |
  fs4. g8 |
  e fs e e16 (d) |
  cs2 |
  g'8 g g e |
  d4. g16 f! |
  e8 e e e |
  ds4. e16 e |
  g8 fs g a |
  b4 \tuplet 3/2 { b8 a gs } |
  a4 \tuplet 3/2 { fs8 fs fs } |
  d2 ~ |
  d4 r |
  
  g8 g g e |
  d4. e8 |
  d d4 d8 |
  d4. e16 e |
  e8 e e e |
  ds4. e8 |
  d d cs cs |
  d4 r8 g |
  a fs g a |
  b4. g16 g |
  e8 e fs d |
  b2 ~ |
  b8
}

nhacDiepKhucBas = \relative c' {
  r8 r4 |
  r8 c b a |
  d4. fs,8 |
  g g g g |
  d4 g8 fs |
  e4 e |
  a g8 g |
  fs4 \tuplet 3/2 { g8 gs gs } |
  a4 \tuplet 3/2 { e8 ef ef } |
  d4. e8 |
  c b e e |
  a,2 |
  R2
  r8 c' b a |
  g c, c c |
  b4. g16 g |
  d'8 d b a |
  g4 \tuplet 3/2 { d'8 c b } |
  a4 \tuplet 3/2 { d8 d d } |
  <b' g>2 ~ |
  <b g>4 r |
  
  g8 g4 e8 |
  d4. c8 |
  d b4 g8 |
  g4. g16 g |
  a8 a a c |
  b4. c8 |
  d d e g |
  fs4 r8 g |
  a fs g a |
  b4. <b e,>16 <b e,> |
  <c c,>8 <c c,> <d b,> <c d,> |
  <b g,>2 ~ |
  <b g,>8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chúa đã gọi con phục vụ và tôn kính Ngài
  trong Thánh Thần và Chân Lý,
  trong Thánh Thần và Chân Lý.
  Con đã bước tới, tự nguyện ''xin vâng'',
  trung thành suốt cả đời con.
  Năm mươi năm qua rồi,
  năm mươi năm Thánh thần soi lối,
  con hăng say truyền rao Chân lý.
  Xin cất tiếng ca trọn niềm cảm tạ.
  
  <<
    {
      \set stanza = "1."
      Năm mươi năm Linh mục bao buồn vui đưa tới,
      Ân thiêng Chúa vẫn dắt dìu con,
      Tin cậy mến luôn vuông tròn.
      Trong Thánh Thần và Chân Lý
      mong luôn trọn vẹn tấm lòng son.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "2."
      Năm mươi năm Linh mục, chan hòa muôn ân phúc,
      Con mong chiếu ánh sáng mọi nơi,
      mong làm muối men cho đời.
      Trong Thánh Thần và Chân Lý
      luôn theo Ngài nhịp bước thảnh thơi.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "3."
      Năm mươi năm Linh mục, ân tình luôn thôi thúc,
      Con theo Chúa dẫn dắt đoàn chiên,
      ân cần thiết tha nhân hiền.
      Trong Thánh Thần và Chân Lý,
      xin dâng lời cảm mến triền miên.
    }
  >>
}

loiDiepKhucBas = \lyricmode {
  Chúa đã gọi con phục vụ và tôn vinh Ngài
  trong Chân Lý trong Thánh Thần Chân Lý
  Con đã bước tới tự nguyện ''xin vâng''
  trung thành trọn cả đời con.
  Đã năm mươi năm Thánh Thần soi rồi
  con hăng say truyền rao Chân Lý,
  Xin cất tiếng mà trọn niềm cảm tạ.
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
  page-count = #2
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
    \new Staff = "1" \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
      >>
    \new Staff = "2" <<
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
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
