% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Giáo Xứ Của Mẹ" }
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
  R2*2
  c8 d c b! |
  c4. d8 |
  d (bf) g bf |
  a4 a8 c |
  a4 f |
  g2 |
  f8 f g a |
  bf2 |
  g8 g a bf |
  c4 c8 c |
  a4 d |
  bf bf8 bf |
  g4 c |
  a2 |
  f8 f g a |
  bf2 |
  g8 g a bf |
  c4 c8 c |
  a4 d |
  bf4 bf8 bf |
  g4 c |
  a2 ~ |
  a8 bf bf a |
  g4 g8 g |
  c4 e, |
  f2 \bar "|." \break
  
  R2*2
  r8 d' a d |
  cs4 r |
  r8 cs cs cs |
  d4 f,8 f |
  g4 a |
  bf g8 g |
  a4 bf |
  c d8 c | \break
  bf4 g8 g |
  c4 c |
  f,2 ~ |
  f4 r \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  R2
  \stemDown
  a8 a
  \tweak extra-offset #'(0 . -2.2)
  ^\markup { \halign #-5 \rest #"1" }
  a g
  a4 f |
  e4. bf'8 |
  bf (g) d e |
  f4 f8 g |
  f4
  \tweak font-size #0
  f |
  e2 |
  \tweak font-size #0
  f8
  \tweak font-size #0
  f e e |
  f2 |
  bf,8 bf f' f |
  e4 f8 g |
  f4 f |
  d d8 d |
  d4 g |
  f2 |
  \tweak font-size #0
  f8
  \tweak font-size #0
  f e e |
  f2 |
  bf,8 bf f' f |
  e4 f8 g |
  f4 f |
  d d8 d |
  d4 g |
  f2 ~ |
  f8 f f e |
  d4 d8 e |
  f4 c8 (bf) |
  a2 |
  
  R2*2
  r8 a' f a |
  e4 r |
  r8 e e e |
  f4 d8 d |
  c4 f |
  f bf,8 bf |
  c4 d |
  g g8 g |
  f4 f8 f |
  e4 e |
  c2 ~ |
  c4 r
}

nhacDiepKhucBas = \relative c {
  f8 f f e |
  f4 d |
  f d |
  c8. c'16 c8 bf |
  g4. g8 |
  f4 f8 e |
  f4 d |
  c8. c16 d8 e |
  f4 r |
  d8 d e f |
  g2 |
  d8 c d e |
  f4 d |
  g g8 g |
  bf4 e, |
  f8. f16 f8 ef |
  d4 r |
  d8 d e f |
  g2 |
  c,8 c d e |
  f4 d |
  g g8 g |
  bf4 e, |
  f8. f16 f8 ef |
  d4. c8 |
  <g' bf,>4 <g bf,>8 <g bf,> |
  <<
    {
      \voiceOne
      g4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      a,8 (g)
    }
  >>
  \oneVoice
  <g' c,>4 |
  <f f,>2 |
  
  f8 f f f |
  e4 e8 (a) |
  d,2 |
  a'8 a a bf |
  a4 g8 g |
  f4 f8 f |
  e4 ef |
  d g8 g |
  f4 f |
  e e8 e |
  d4 d8 d |
  c4
  <<
    {
      \voiceOne
      c'8 (bf)
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,4
    }
  >>
  \oneVoice
  <a' f>2 ~ |
  <a f>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Qua bao năm hồng ân
  Giáo xứ của chúng con vui sống trong tình thân
  Người người luôn ghi nhớ được Mẹ luôn nâng đỡ
  Khi cơ cực thống khổ, khi an hòa sướng vui
  Mẹ từ bi nhân ái
  đồng hành bên con cái,
  Nay xin cùng cảm tạ, hân hoan hòa tiếng ca:
  Giáo xứ chúng con của Mẹ mãi Mẹ ơi.

  \set stanza = "1-3."
  Luôn là của Mẹ
  của Mẹ, Mẹ ơi
  <<
    {
      \set stanza = "1."
      Người người luôn thăng tiến bên lòng tin, cậy, mến,
      Sẽ ca ngợi và cảm mến suốt đời.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beSop"
	    \set stanza = "2."
	    Lần hạt chuyên chăm mãi,
	    lòng bình an thư thái
	    Sẽ ca
	  }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beSop"
	    \set stanza = "3."
	    Nhìn ngày mai đi tới,
	    trăm niềm vui phơi phới
	    Sẽ ca
	  }
  >>
  ngợi và cảm mến suốt đời.
}

loiDiepKhucAlto = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  Qua bao năm hồng ân muôn
}

loiDiepKhucBas = \lyricmode {
  Qua bao năm hồng ân
  hồng ân muôn phần Giáo xứ chúng con
  chúng con vui sống trong tình thân
  người người ghi nhớ,
  Người người luôn ghi nhớ được Mẹ luôn nâng đỡ
  sầu khổ khi an hòa
  mừng vui luôn luôn bên Mẹ
  Mẹ từ bi nhân ái
  đồng hành bên con cái
  cảm tạ hân hoan hòa lời ca,
  Giáo xứ chúng con
  đoàn con của Mẹ mãi Mẹ ơi.
  
  \set stanza = "1-3."
  Qua bao năm luôn là của Mẹ
  
  <<
    {
      \set stanza = "1."
      Bao ân thiêng Chúa ban qua tay Mẹ
      Người người luôn tăng triển bên lòng tin cậy mến
      Sẽ ca
    }
    \new Lyrics \with {
      %alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beBas"
	    \set stanza = "2."
	    Xin ghi tâm sắt son noi gương Mẹ,
	    Lần hạt chuyên chăm mãi,
	    lòng bình an thư thái,
	    Sẽ ca
	  }
    \new Lyrics \with {
      %alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beBas"
	    \set stanza = "3."
	    Tương lai xin phó dâng trong tay Mẹ
	    Nhìn ngày mai đi tới
	    tràn niềm vui phơi phới
	    Sẽ ca
	  }
  >>
  ngợi và cảm mến suốt đời.
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
      \new NullVoice = beAlto \nhacDiepKhucAlto
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
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
