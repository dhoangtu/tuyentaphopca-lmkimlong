% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vị Cứu Tinh" }
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
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(5 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  \partial 4 r4 |
  r8. c16 d8 c |
  b4 r |
  r8 c16 a c (e) d8 |
  c2 ~ |
  c4 r |
  R2
  r4 e,8 ^> e ^> |
  c'4. b8 |
  e a,4 a8 |
  b2 ~ |
  b ~ |
  b4 r8 e |
  e8. f16 e8 c |
  d d4. |
  R2*2
  \once \override Score.RehearsalMark.font-size = #0.1
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar ":|." \break
  \notBePhu -2 { g8. g16 e8 c } \bar ".|"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  g8. c16 c8 c |
  c a a a |
  d8. f16 f8 d |
  e2 ~ |
  e4 r |
  r4. d8 |
  b8. b16 a8 a |
  g4 g8 g |
  e'4 (f8 e) |
  d4 b8 b |
  c2 ~ |
  c4 r |
  R2*3
  e4. e8 |
  f _> ^\ff (e) c4 |
  d d8 ^\p b |
  c4. a8 |
  a4 b8 c |
  g2 ~ |
  g4 r |
  r8. c16 d8 c |
  b4 r |
  r8 c16 a d (e) d8 |
  c4 r8 g |
  g g16 g e' (f) e8 |
  d4. d8 |
  b b d b16 (a) |
  g2 ~ |
  g8 g c d |
  e4. d8 |
  b b4 d8 |
  c2 ~ |
  c4 r8 \bar "|." \break
  c8 |
  c d16 (c) a8 af |
  g4.
  <<
    {
      e'8 |
      e f16 (e) c8 d |
      d2 | \break
    }
    {
      c8 |
      c d16 (c) a8 af |
      g2 |
    }
  >>
  e'8 c d16 (c) a8 |
  a4. g8 |  
  <<
    {
      d'8 d4 b8 |
    }
    {
      f8 f4 d8 |
    }
  >>
  <<
    {
      \voiceOne
      <c' e,>2 |
    }
    \new Voice = "splitpart" \notBePhu -2 {
      \voiceTwo
      \tweak extra-offset #'(4 . 0)
      e,4\rest e8\rest
      g16
      _\markup { \italic "(kèn)" }
      g |
      g'8. g16 e8 c 
    }
  >>
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  r4 |
  r8. e16 f8 e |
  d4 r |
  r8 a'16 e f8 [f] |
  e2 ~ |
  e4 r |
  R2
  r4 e8 ^> e ^> |
  a4. a8 |
  g e4 e8 |
  f2 ( |
  e) ~ |
  e4 r8 c' |
  c8. d16 c8 a |
  b b4. |
  R2*3
  
  e,8. e16 g8 g |
  f f f f |
  g8. g16 a8 af |
  g2 ~ |
  g4 r |
  r4. a8 |
  g8. g16 fs8 fs |
  g4 g8 [g] |
  g2 |
  fs4 f!8 f |
  e2 ~ |
  e4 r |
  R2*3
  c'4. c8 |
  d _> ^\ff (c) e,4 |
  g4 g8 ^\p f |
  e4. e8 |
  f4 f8 f |
  d2 ~ |
  d4 r |
  r8. e16 f8 e |
  d4 r |
  r8 a'16 e f8 [f] |
  e4 r8 g |
  g [g16 g] g (a) g8 |
  fs4. f!8 |
  d d d8. c16 |
  b4. b8 |
  c b e g |
  a4. a8 |
  g g4 f8 |
  e2 ~ |
  e4 r8
}

nhacDiepKhucTenor = \relative c {
  r4
  R2
  r4 e8 e |
  a8. c16 b8 b |
  g2 ~ |
  g4 b8 ^\p c16 (b) |
  a4. gs8 |
  a2 |
  a8 ^> a ^> d4 |
  b8 a4 a8 |
  a2 ( |
  gs ~ |
  gs4) r |
  R2
  r4. b8 |
  b8. c16 b8 e |
  e a,4. |
  R2
  c8. c16 e8 e |
  a, c c a |
  g2 ~ |
  g4 g'8. ^\f g16 |
  e8 e c e |
  d2 ~ |
  d8 d16 d d8 c |
  b4 b8 b |
  c4 (d8 c) |
  a4 a8 af |
  g2 ~ |
  g4 r |
  R2*3
  r4 g8 g |
  a4. _> ^\ff c8 |
  b4 b8 ^\p d |
  c4. c8 |
  c4. c8 |
  b2 ~ |
  b4 a8 a |
  g2 ~ |
  g4 e8 e |
  a8. c16 b8 b |
  g4 r8 g |
  g g16 g c8 b |
  a4. a8 |
  g g fs fs |
  g8. af16 ^> g8 ^> f ^> |
  e4 a8 g |
  g' ^> g4 ^> f8 |
  d d4 b8 |
  c2 ~ |
  c4 r8
}

nhacDiepKhucBas = \relative c {
  c8 c |
  g'2 ~ |
  g4 e8 e |
  a8. a16 g8 g |
  c,2 |
  e8 ^\f f e (d) |
  c8. d16 c8 b |
  a2 ~ |
  a4 f'8 ^> f ^> |
  d d c c |
  d2 ( |
  e) ~ |
  e4 r |
  R2
  r4. d8 |
  e8. e16 e8 e |
  d c4. |
  
  R2
  c8. c16 c8 c |
  d d d d |
  b8. b16 b8 b |
  c2 ~ |
  c4 e8. c16 |
  f8 ^> f ^> d ^> d ^> |
  f4 r |
  r g8 g |
  c,4 (b8 c) |
  d4 g,8 g |
  c2 ~ |
  c4 r |
  e4. ^\p (f16 e) |
  d4 c8 ^> c16 (d) |
  \slashedGrace { d16 (} g2) ~ |
  g4 c,8 c |
  f4. _> ^\ff a8 |
  g4 g8 ^\p gs |
  a4. a8 |
  d,4. d8 |
  g2 ~ |
  g4 r |
  R2
  r4 e8 e |
  a8. a16 g8 g |
  c,4 r8 g' |
  f e16 d c8 cs |
  d4. d8 |
  g g d d |
  e8. f!?16 ^> e8 ^> d ^> |
  c4. b8 ^> |
  c ^> d ^> e ^> f ^> |
  g g4 g8 |
  <g c,>2 ~ |
  <g c,>4 r8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Mơ cõi thiên đường trông đợi ánh thái dương.
  Này trần thế xin Chúa dủ tình thương.
  Không trung hãy gieo làn sương mai.
  \override Lyrics.LyricText.font-shape = #'italic
  (Kèn) _ _ _
  \revert Lyrics.LyricText.font-shape
  Đồng Be -- lem reo vui và ngàn vì sao chiếu sáng màn đêm.
  Báo tin vui cho nhân trần:
  Một Vị Cứu Tinh vừa hạ sinh.
  Mây ơi hãy ngừng trôi,
  Đến quỳ đây thờ lạy Con Chúa Trời.
  Tinh tú xôn xao náo động khắp đất trời,
  triều thần cùng hợp tiếng tung hô:
  Sáng danh Thiên Chúa trên trời
  bình an dưới thế cho loài người Chúa thương.
  
  Ôi đêm phước lộc diệu huyền,
  Say sưa đất trời giao duyên.

  Bốn ngàn năm đợi chờ Lời Thánh Ước nở hoa.
  \override Lyrics.LyricText.font-shape = #'italic
  (Kèn)
}

loiDiepKhucAlto = \lyricmode {
  Mơ cõi thiên đường trông đợi ánh thái dương.
  Này trần thế xin Chúa dủ tình thương.
  Không trung hãy gieo làn sương mai.
  Đồng Be -- lem reo vui và ngàn vì sao chiếu sáng màn đêm.
  Báo tin vui cho nhân trần:
  Một Vị Cứu Tinh vừa hạ sinh.
  Mây ơi hãy ngừng trôi,
  Đến quỳ đây thờ lạy Con Chúa Trời.
  Tinh tú xôn xao náo động khắp đất trời,
  triều thần cùng hợp tiếng tung hô:
  Sáng danh Thiên Chúa trên trời
  Bình an, bình an dưới thế cho loài người Chúa thương.
}

loiDiepKhucTenor = \lyricmode {
  Tựa tuần phiên ngóng ánh thái dương.
  Bao tháng năm sầu thương.
  Này trần thế xin dủ yêu thương.
  Mây ơi hãy mưa Đấng Cứu Đời.
  Đồng Be -- lem reo vui với các vì sao.
  Lớp lớp muôn thiên thần xướng ca
  loan tin cho nhân trần:
  Một Vị Cứu Tinh đã giáng sinh.
  Mây ơi hãy ngừng trôi,
  Đến quỳ đây thờ lạy Chúa Trời.
  Thơ tuôn trào
  Nhạc vàng bay tỏa khắp đất trời,
  triều thần cùng hợp tiếng tung hô:
  Sáng danh Thiên Chúa trên trời,
  sáng danh trên trời
  an bình dưới thế cho loài người Ngài thương.
}

loiDiepKhucBas = \lyricmode {
  Từ trần gian
  Tựa tuần phiên mong ánh thái dương.
  Bao tháng năm lần bước trong đêm trường.
  Khắp thế nhân xin dủ tình thương.
  Mây ơi hãy mưa Đấng Cứu Đời.
  Đồng Be -- lem reo vui và ngàn vì sao ngời rạng màn đêm.
  Thiên thần lớp lớp cùng hòa ca.
  Một Vị Cứu Tinh đà hạ sinh.
  Gió ơi đừng thổi nữa.
  Mây ơi hãy ngừng trôi,
  Vào quỳ đây bái lạy Vua Trời.
  Nhạc vàng bay tỏa khắp đất trời.
  triều thần cùng hợp lời tung hô:
  Rạng danh Thiên Chúa trên trời, sáng danh trên trời,
  Bình an dưới thế cho ai ơi Chúa thương.
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
  %page-count = #2
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
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacDiepKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
    >>
    \new Staff <<
        \clef bass
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
