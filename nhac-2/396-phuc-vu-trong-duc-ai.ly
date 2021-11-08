% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Phục Vụ Trong Đức Ái" }
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
  \partial 4. c8 a a |
  a4 f8 g16 (f) |
  d2 ~ |
  d8 d e16 (d) c8 |
  f8. d16 g8 g |
  a8. f16 a8 a |
  bf8. g16 bf8 c |
  c2 |
  c8. a16 a8 a |
  bf2 |
  bf8. g16 g8 g |
  a4 a8 g16 (f) |
  d4. d8 |
  d g f d |
  c2 ~ |
  c4 r8 c |
  f8 f16 f f8 g |
  a a16 g a8 bf |
  c2 ~ |
  c8 c d d |
  bf bf c c |
  a a bf bf |
  g4 g8 g |
  c4. e,8 |
  f2 ~ |
  f4 r \bar "|." \break
  
  f8. e16 f8 a |
  \slashedGrace { a,16 (bf } c2) ~ |
  c4. r8 |
  r g'16 a f8 g16 (f) |
  d4 r8 d |
  c f e (f) |
  g4. f8 |
  a a bf8. g16 |
  c8 c4 bf8 |
  g c a16 (g) e8 |
  f2 ~ |
  f8 \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  c8 a a |
  a4 f8 g16 (f) |
  d2 ~ |
  d8 d e16 (d) c8 |
  f8. d16 c8 c |
  f8. d16 f8 e |
  d8. f16 f8 g |
  e2 |
  a8. f16 f8 f |
  e2 |
  d8. d16 d8 d |
  c4 c8 [c] |
  bf4. c8 |
  b! b b b |
  c2 ~ |
  c4 r8 c |
  f8 f16 f f8 e |
  f8 f16 d f8 f |
  e2 ~ |
  e8 e f f |
  d e g g |
  f f d d |
  e4 e8 e |
  f ([g f]) bf, |
  a2 ~ |
  a4 r |
  
  f'8. e16 f8 a |
  \slashedGrace { a,16 (bf } c2) ~ |
  c4. r8 |
  r g'16 a f8 g16 (f) |
  d4 r8 d |
  c f e (d) |
  c4. c8 |
  f8 f f8. f16 |
  e8 f4 f8 |
  e f c [bf] |
  a2 ~ |
  a8
}

nhacDiepKhucBas = \relative c' {
  r8 r4 |
  R2
  r8 bf a g |
  f4 r |
  r8 f e e |
  d4 c8 c |
  bf4 d8 d |
  c8. c16 f8 g |
  f4 r |
  c8. c16 c8 c |
  g'2 |
  f8. f16 a,8 a |
  bf c bf a |
  g4 g'8 f |
  e4 e8 e |
  f d c4 |
  r8 f16 ef d8 c |
  f4 d |
  c8. c'16 c8 (bf) |
  a4 d,8 d |
  g g e e |
  f f bf, bf |
  c4 c'8 (bf) |
  a g c c |
  f,2 ~ |
  f4 r |
  
  R2
  r4 f8 g |
  e a16 c a16 (g) f8 |
  g4. f8 |
  g (a) bf bf |
  a g g (f) |
  e4. f8 |
  d d d8. d16 |
  c8 c4 g8 |
  bf a c c |
  f,2 ~ |
  f8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chúa yêu thương con tự muôn đời
  nên đã gọi con, gọi con theo Chúa,
  dạy con yêu Chúa và nên giống Chúa
  Biết yêu thương như Chúa,
  Biết ky sinh như Chúa,
  biết quên mình phục vụ Chúa trong muôn người.
  Giờ đây  con hân hoan gieo bước,
  tô đẹp bao mơ ước
  Xin thánh hiến con, xin giúp sức con,
  luôn mãi tín trung
  hầu đền đáp hồng ân.
  <<
    {
      \set stanza = "1."
      Thân phận con bé nhỏ
      đâu có tài năng gì,
      đôi việc con khởi công là do ơn Chúa ở trong con,
      bời Ngài vẫn bang trợ con.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "2."
      Đâu ngại chi thống khổ
      đâu khiếp sợ cơ cùng,
      Ơn Ngài luôn phủ che,
      ngày đêm nuôi dưỡng bằng Đức Aia,
      sẵn sàng dấn thân phục vụ.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
      \set stanza = "3."
      Xin được nên khí cụ trên khắp mọi nẻo đường,
      nhân loại mau cảm thông,
      cùng nhau vun đắp tình Bác Ái,
      để cùng sống trong bình an.
    }
  >>
}

loiDiepKhucBas = \lyricmode {
  Chúa yêu muôn đời nói con theo Ngài,
  con yêu Ngài nên như Ngài và cho con biết
  mà yêu thương như Chúa,
  Biết quên mình phục vụ,
  biết luôn phục vụ trong muôn người,
  phục vụ trong muôn người.
  con hân hoan gieo bước
  tô đẹp những ước mơ
  thánh hiến con,
  xin trợ lục con luôn mãi tín trung
  để con đền đáp phúc ân.
  <<
    {
      \set stanza = "1."
      Con bé nhỏ, đâu có công trạng chi,
      dù cho có đôi việc con khởi công
      đã do ơn Chúa ở trong con
      bởi Ngài vẫn bang trợ con.
    }
    \new Lyrics {
      \set stanza = "2."
      Bao thống khổ, đâu xá chi hiểm nguy,
      vì luôn có ơn Ngài luôn phù che ngày đêm
      nuôi dưỡng bởi Đức Ái,
      sẵn sàng liều thân phục vụ.
    }
    \new Lyrics {
      \set stanza = "3."
      Nên khí cụ luôn rắc gieo tình thương,
      cầu mong khắp nhân loại mau cảm thông
      chung nhau vun đắp tình Bác Ái
      để chung sống trong bình an.
    }
  >>
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
  %systems-per-page = 5
}

TongNhip = {
  \key f \major \time 2/4
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
