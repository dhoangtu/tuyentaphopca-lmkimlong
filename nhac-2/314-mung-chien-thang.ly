% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mừng Chiến Thắng" }
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
nhacDiepKhucSop = \relative c' {
  \partial 8 c8 |
  f4 f8 f |
  e f g4 |
  g r8 f |
  bf ^> bf ^> r g |
  c8 ^> c4. ^> |
  c8. ^> bf16 a8 g |
  f2 ~ |
  f4. r8 |
  r4. bf8 |
  g ^> g ^> a4 ~ |
  a8 r4
  <<
    {
      f'8 |
      f ^> f ^> c4 ~ |
      c
    }
    { \notBePhu -2 {
      bf8 |
      c c a4 ~ |
      a
    }}
  >>
  r8 a |
  c4 c8 c |
  b! c d4 |
  d r8 c |
  f ^> f ^> r d |
  g ^> g4. ^> |
  g8. ^> f16 e8 d |
  c2 ~ |
  c4 c |
  af4. f8 |
  g g4 c,8 |
  c2 ~ |
  c4 r |
  r4. af'8 |
  bf8. c16 bf8 af |
  g2 ~ |
  g4 r8 c, |
  f4 f8 f |
  e f g4 |
  g r8 f |
  bf ^> bf ^> r g |
  c ^> c ^> r d16 (e) |
  c8. c16 d8 e |
  f2 ~ |
  f4 r \bar "|." \break
  
  a,4. f16 g |
  d4 \tuplet 3/2 { g8 g f } |
  a4 \tuplet 3/2 { a8 a bf } |
  g4 r8 a |
  a4 \tuplet 3/2 { g8 d df } |
  c2 |
  <<
    {
      bf'4 \tuplet 3/2 {d8 d d } |
      c4 \tuplet 3/2 { bf8 g bf } |
      a2 |
      g8 e4 g8 |
      f2 ~ |
      f4.
    }
    { \notBePhu -2 {
      g4 \tuplet 3/2 { bf8 bf bf } |
      a4 \tuplet 3/2 { g8 e g } |
      f2 |
      e8 c4 bf8 |
      a2 ~ |
      a4.
    }}
  >>
  r8 | \break
  
  f'4 \tuplet 3/2 { f8 e g } |
  g4. g16 f |
  a2 |
  <<
    {
      bf4 \tuplet 3/2 { d8 d g, } |
      g4. c16 c |
      a2 |
      e4. f16 d
    }
    {
      g4 \tuplet 3/2 { f8 f f } |
      e4. e16 e |
      f2 |
      c4. d16 b!
    }
  >>
  <<
    {
      \voiceOne
      c4 \tuplet 3/2 { c8 c c } |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c4 \tuplet 3/2 { c8 c c } |
    }
  >>
  \oneVoice
  <<
    {
      bf'4. bf8 |
      a4 \tuplet 3/2 { g8 g c } |
      f,2 ~ |
      f4.
    }
    {
      d4. e8 |
      f4 \tuplet 3/2 { c8 c bf } |
      a2 ~ |
      a4.
    }
  >>
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  c8 |
  f4 f8 f |
  e f g (f) |
  e4 r8 ef |
  d ^> d ^> r f |
  e ^> e4. ^> f8. ^> g16 f8 e |
  c2 ~ |
  c4 r |
  r4. g'16 (f) |
  e8 ^> e ^> f4 ~ |
  f8 r4 g8 |
  a ^> a ^> f4 ~ |
  f r8 f |
  e4 f8 f |
  d g a (c) |
  b!4 r8 bf |
  a ^> a ^> r c |
  bf ^> bf4. ^> |
  c8. ^> a16 g8 f |
  e2 ~ |
  e4 e |
  f4. df8 |
  c b!4 c8 |
  c2 ~ |
  c4 r |
  r4. f8 |
  g8. af16 g8 f |
  df4 f8 df |
  c4 r8 c |
  f4 f8 f |
  e f g (f) |
  e4 r8 ef |
  d ^> d ^> r f |
  e ^> e ^> r f |
  f8. f16 bf8 bf |
  a2 ~ |
  a4 r
}

nhacDiepKhucTenor = \relative c {
  c8 |
  f4 f8 a |
  c c d4 |
  c r8 a |
  bf ^> bf ^> r b! |
  c ^> c4. ^> |
  c8. ^> d16 c8 bf |
  a2 ~ |
  a4 r8 f |
  bf8. ^> bf16 g8 ^> g ^> |
  c4. a8 |
  d ^> bf ^> c ^> c ^> |
  f,4. c8 |
  f4 f8 f |
  g4 a8 a |
  g c f4 |
  d r8 e |
  f ^> f ^> r fs |
  g ^> g4. ^> |
  c,8. ^> c16 bf8 b! |
  c2 ~ |
  c4 r |
  R2*2
  r4. c,8 |
  af'8. ^> af16 g8 g |
  c2 ~ |
  c4 r8 f, |
  bf4 g8 f |
  e4 e8 e |
  f4 f8 a |
  c c d4 |
  c4 r8 a |
  bf ^> bf ^> r8 b! |
  c ^> c ^> r g |
  a8. a16 bf8 c |
  c2 ~ |
  c4 r
}

nhacDiepKhucBas = \relative c {
  c8 |
  f4 f8 d |
  c c b!4 |
  c r8 c |
  bf ^> bf ^> r d |
  c ^> c4. ^> |
  a8. ^> d16 c8 c |
  f2 ~ |
  f4 r8 f |
  bf8. ^> bf16 g8 ^> g ^> |
  c4. a8 |
  d ^> bf ^> c ^> c ^> |
  f,4. c8 |
  f4 f8 f |
  c4 f8 f |
  g e d4 |
  g r8 g |
  f ^> f ^> r a |
  g ^> g4. ^> |
  e8. ^> f16 g8 g |
  c,2 ~ |
  c4 r |
  R2*2
  r4. c8 |
  f8. ^> f16 f8 df |
  c2 ~ |
  c4 r8 f |
  bf4 bf,8 b! |
  c4 c8 c |
  f4 f8 d |
  c c b!4 |
  c r8 c |
  bf8 ^> bf ^> r d |
  c ^> c ^> r bf |
  c8. c16 g8 c |
  <c f,>2 ~ |
  <c f,>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  \set stanza = "ĐK:"
  Hòa ca lên, chung lời hòa ca lên.
  Mừng chiến thắng, mừng chiến thắng Đức Ki -- tô khải hoàn.
  Đánh bại thần chết đập tan gông cùm.
  Hòa ca lên, chung lời hòa ca lên.
  Mừng chiến thắng, mừng chiến thắng Đức Ki -- tô khải hoàn.
  Chính khi bị treo trên thập tự và khai lối lên Quê Trời.
  Hòa ca lên, chung lời hòa ca lên.
  Mừng chiến thắng,
  mừng chiến thắng đất trời ngợp trong vui sướng.
  
  \set stanza = "1."
  Nếu hạt lùa mì gieo trong lòng đất không hư thối đi
  mãi mãi trơ trọi một mình.
  Nhưng nếu nó thối thân sẽ làm trổ sinh muôn nghìn bông hạt.
  
  \set stanza = "2."
  Khi Ta bị treo lên Cây Thập Giá.
  Ta sẽ kéo mọi người
  <<
    { đến với }
    \new Lyrics {
	    \set associatedVoice = "beBas"
	    \override Lyrics.LyricText.font-shape = #'italic
	    lại cùng
	  }
  >>
  Ta. Để muôn muôn người dự phần sự chết của Ta
  mà được sống lại.
}

loiDiepKhucAlto = \lyricmode {
  Hòa ca lên, chung lời hòa ca lên.
  Chúc chiến thắng,
  chúc chiến thắng Vị Ki -- tô khải hoàn.
  Đánh bại thần chết đập tan gông cùm.
  Hòa ca lên, chung lời hòa ca lên.
  Mừng chiến thắng, chúc chiến thắng
  Đức Ki -- tô khải hoàn.
  Chính khi bị treo trên thập tự
  và khai lối lên Quê Trời, lên Quê Trời.
  Hòa ca lên, chung lời hòa ca lên.
  Chúc chiến thắng, chúc chiến thắng
  đất trời ngợp trong vui sướng.
}

loiDiepKhucTenor = \lyricmode {
  Hòa ca lên, chung lời ca hát lên.
  Mừng chiến thắng,
  mừng chiến thắng Vị Ki -- tô khải hoàn.
  Ngài đã đánh bại thần chết
  và đã đập tan gông cùm.
  Hòa ca lên, hòa ca lên, chung lời ca hát lên.
  Mừng chiến thắng, mừng chiến thắng
  Vị Ki -- tô khải hoàn.
  Ngài đã xóa mọi tội lỗi.
  Người ơi! Lên Quê Trời nào hát ca lên,
  chung lời ca hát lên.
  Mừng chiến thắng,
  mừng chiến thắng thật nơi nơi ngợp vui sướng.
}

loiDiepKhucBas = \lyricmode {
  Hòa ca lên, chung lời ca hòa lên.
  Chúc chiến thắng,
  chúc chiến thắng Vị Ki -- tô khải hoàn.
  Ngài đã đánh bại thần chết
  và đã đập tan gông cùm.
  Hòa ca lên, hòa ca lên, chung lời ca hòa lên.
  Chúc chiến thắng, chúc chiến thắng
  Vị Ki -- tô khải hoàn.
  Ngài đã xóa mọi tội lỗi.
  Người ơi! Lên Quê Trời nào hòa ca lên,
  chung lời ca hát lên.
  Chúc chiến thắng,
  chúc chiến thắng thật nơi nơi ngợp vui sướng.
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
  page-count = #3
  %ragged-bottom = ##f
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

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
