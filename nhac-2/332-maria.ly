% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Maria" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \partial 4 r4 |
  r c8 d16 (c) |
  b4 r |
  r d8 g, |
  d'4 ^(e8) d |
  c2 ~ |
  c4 g8 af |
  f4. ef8 |
  g ef4 d8 |
  c2 |
  r4 \tuplet 3/2 { c'8 b c } |
  d4 \slashedGrace { b16
  \tweak extra-offset #'(0 . 0.3)
  _( } a8) [d] |
  g,4. fs8 |
  g2 ~ |
  g4 r8 \bar "||" \break
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key ef \major
  g16 g |
  g4. f8 |
  ef f4 f16 f |
  g4 r8 d'16 ef |
  d4. c8 |
  d d4 b!8 |
  c2 ~ |
  c4 r8 g16 g |
  g4. f8 |
  g \slashedGrace { ef16 ( } d4) g8 |
  c,4 r8 d16 g, |
  ef'4. d8 |
  f ef4 f8 |
  g2 ~ |
  
  \key c \major
  g4 \bar "||" \break
  
  c8. b16 |
  c4 c8 g |
  a (g4) e8 |
  e4 f8. f16 |
  f4. f8 |
  d4 c8 c |
  g'2 ~ |
  g4 c8. c16 |
  c4. c8 |
  e b4 b8 |
  a4 gs8. a16 |
  f4. d8 |
  e4 c8 e |
  g2 ~ |
  g4 r \bar "||" \break
  
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  e'8. e16 e8 f ~ |
  f d b c |
  g2 |
  a8. f16 d8 e ~ |
  e c g' e |
  a2 |
  a8. b16 b8 b |
  c c4 d8 |
  g,4. a8 |
  a8. a16 g8 g |
  g d'4 b8 |
  c2
  ^\markup { \halign #-4 \fontsize #2 \bold "Tận" }
  \bar "|."
  \break
  
  e4. e16 e |
  e4. d8 |
  e c4 c8 |
  b4 r8 c |
  a g4 g8 |
  c b c d |
  e2 |
  c4. d8 |
  d4. d8 |
  b c4 d8 |
  g,4 r8 g |
  e a4 a8 |
  g g a4 |
  c2
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r4 |
  r e8 f16 (e) |
  d4 r |
  r f8 e |
  f4 _(g8) f |
  e2 ~ |
  e4 g8 af |
  f4. ef8 |
  g ef4 d8 |
  c2 |
  r4 \tuplet 3/2 { e8 d e } |
  f4 e8 [e] |
  d4 c |
  bf2 ~ |
  bf4 r8
  
  \key ef \major
  g'16 g |
  g4. f8 |
  ef f4 f16 f |
  g4 r8 d'16 ef |
  d4. c8 |
  d d4 b!8 |
  c2 ~ |
  c4 r8 g16 g |
  g4. f8 |
  g \slashedGrace { ef16 ( } d4) g8 |
  c,4 r8 d16 g, |
  ef'4. d8 |
  f ef4 f8 |
  g2 ~ |
  
  \key c \major
  g4 e8. d16 |
  e4 e8 e |
  f (e4) d8 |
  c4 d8. d16 |
  d4. c8 |
  b4 a8 a |
  b2 ~ |
  b4 e8. e16 |
  e4. a8 |
  a gs4 e8 |
  f4 e8. f16 |
  d4. b8 |
  c4 a8 c |
  b2 ~ |
  b4 r |
  
  g'8. g16 g8 a ~ |
  a a g e |
  d2 |
  c8. d16 b8 c ~ |
  c c e c |
  c2 |
  f8. f16 f8 f |
  e d4 c8 |
  b4. f'8 |
  e8. e16 d8 d |
  e f4 f8 |
  d2 |
  
  c'4. c16 c |
  c4. b8 |
  c a4 a8 |
  gs4 r8 a |
  f e4 e8 |
  a g e g |
  c2 |
  a4. af8 |
  g4. fs8 |
  g a4 f8 |
  e4 r8 e |
  c f4 f8 |
  e e d (f) |
  e2
}

nhacDiepKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  c8 c |
  g'2 ~ |
  g4 g8 g |
  d'2 ~ |
  d4 g, |
  c,2 ~ |
  c4 g'8 af |
  f4. ef8 |
  g ef4 d8 |
  c4 c8 c |
  g'2 ~ |
  g8 g
  <<
    {
      c8 c |
      b4 a |
      g2 ~ |
      g4
    }
    {
      c,8 c |
      d4 d |
      g,2 ~ |
      g4
    }
  >>
  r8
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key ef \major
  r8
  R2*13
  
  \key c \major
  R2*15
  c'8. c16 c8 f, ~ |
  f f g c |
  b2 |
  a8. d,16 g8 c, ~ |
  c e c c |
  f2 |
  d8. d16 d8 d |
  c f4 fs8 |
  g4. d8 |
  cs8. c!16 b8 b |
  c f ([d]) <g g,> |
  <g c,>2
}

% Lời
loiDiepKhucSop = \lyricmode {
  hay suối nhạc hay một cõi thiên hương.
  Yêu mến thay cặp mắt Mẹ thiên đường.
  Ôi huyền diệu quá như ý trời mầu nhiệm.
  Ma -- ri -- a Linh hồn con mơ xao xuyến.
  Say ngất ngư trong sóng gió tình yêu.
  Ma -- ri -- a con mến Mẹ rất nhiều,
  mến cặp mắt huyền tươi ngàn nhân ái.
  Đang nhìn con trong tình yêu vời vợi,
  đang nghe con ca ngợi ngàn lời kinh.
  Đang xem con mơ giấc mộng thiên đường,
  Và đang phủ hồn con ngàn tia sáng.
  Vang muôn cung hỡi âm nhạc thiên đàng,
  Múa muôn điệu hỡi nhạc công trần thế,
  Để tung hô và khong khen Đức Mẹ, cao sang thay
  và hiền hậu quá bồ câu.
  Ôi Ma -- ri -- a, Danh Thánh Mẹ nhiệm mầu,
  Bút ca tụng mà tâm hồn say ngây ngất.
  Mẹ cho con trong chiều nay tím nhạt
  muôn lời thơ ca tụng Mẹ, Mẹ ơi.
}

loiDiepKhucBas = \lyricmode {
  Là vườn thơ, là trời trăng thiên hương,
  Yêu mến thay cặp mắt Mẹ thiên đường,
  Huyền diệu quá tựa như ý trời mầu nhiệm.
  Vang muôn cung hỡi âm nhạc thiên đàng,
  Múa nhịp yêu hỡi các lòng trần thế,
  Để tung hô và khong khen Đức Mẹ, cao sang thay
  và hiền hậu tựa bồ câu.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 20\mm
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
  %systems-per-page = 5
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
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
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
    \override LyricHyphen.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
