% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ơn Phù Trợ" }
  poet = "Ý: Tv. 120"
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
  \partial 4 a8 a |
  d, g f (g) |
  a2 ~ |
  a8 d cs cs |
  d4 bf8 a |
  g4 r |
  r8 bf ^\p d (bf) |
  \once \stemDown a4 r8 a |
  d d b! (a) |
  g fs ([g]) a |
  d,2 ~ |
  d ~ |
  d4 r8 \bar "|." \break
}

nhacDiepKhucAlto = \relative c' {
  a'8 a d, g f (g) |
  a2 ~ |
  a8 f e e |
  f4 g8 f |
  d4 r |
  r8 d <f d>4 |
  <e cs> r8 a |
  d d b! (a) |
  g fs ([g]) a |
  d,2 ~ |
  d ~ |
  d4 r8
}

nhacDiepKhucBas = \relative c' {
  a8 a |
  d, g f (g) |
  a8. g16 f8 e |
  d4 r |
  r8 d e (f) |
  g8. g16 ^\f e8 e |
  g4 f8 (g) |
  a4 r8 a |
  d d b! (a) |
  g fs ([g]) a |
  d,4
  <<
    {
      bf'4 ~ |
      bf c8 (bf) |
      a4
    }
    {
      g4 ~ |
      g f8 (g) |
      d4
    }
  >>
  r8
}

nhacPhienKhuc = \relative c' {
  \partial 8 d8 |
  a'8. g16 g (b!) a8 |
  a4 f16 (g) a8 |
  e4 f8 f |
  e8. d16 bf8 a |
  a4 r8 a' |
  f f bf a |
  g4. g8 |
  f e r a |
  g8. e16 f8 d |
  d2 ~ |
  d4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ngước mắt nhìn lên rặng núi.
  Ơn phù trợ tôi bởi nơi nào? bởi nơi nào.
  Là Đấng đã tác tạo cả đất trời.
}

loiDiepKhucBas = \lyricmode {
  Ngước mắt nhìn lên rặng núi tôi tự nhủ thầm,
  bởi nơi nao, ơn phù trợ tôi bởi Chúa
  Là Đấng đã tác tạo cả đất trời, cả đất trời.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Nguyện Chúa đừng để chân ngươi phải ngã quỵ,
  Đấng giữ ngươi không ngủ chập chờn.
  Chúa phù trợ Is -- ra -- el không ngủ gục
  cũng không chợp mắt đành lòng.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Nguyện bóng Ngài phủ che ngươi trọn tháng ngày,
  Đấng giữ ngươi luôn ở gần kề.
  Suốt ngày trời nắng can chi,
  năm canh chầy bóng trăng chẳng tác hại gì.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Nguyện Chúa hằng chở che ngươi khỏi mắc nạn,
  Chúa giữ cho sinh mạng vẹn toàn,
  hết mọi nẻo bước chân ngươi luôn canh chừng
  tới nay và mãi ngàn đời.
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
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

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
    \override LyricHyphen.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
