% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Cửa Ơi" }
  composer = "Ý: Tv. 23"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  r8 a g a |
  bf4 d |
  c4. c8 |
  bf4 (g8 bf) |
  a2( |
  a4) r |
  r8 c, d e |
  g4 bf8 bf |
  a4. g8 |
  f2( |
  f4) r \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  
}

nhacDiepKhucBas = \relative c {
  r2 |
  r2 |
  r8 f e f |
  g4 g8 c, |
  f2( |
  f8) f g a |
  bf4 g8 f |
  e4( d) |
  c <c' \=1( c, \=2_( >8 <bf \=1) c, \=2) >8 |
  <a \=1^( f, \=2( >2 |
  <a \=1) f, \=2) >4 r
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  a8 a a bf |
  c4 c |
  g8 g bf bf |
  a4 a |
  bf8 bf c c |
  d4 d |
  g,8 bf a g |
  f2 \bar "||"
}

nhacPhienKhucAlto = \relative c' {
  f8 f f f |
  e4 e |
  d8 d e e |
  f4 f |
  d8 d a' a |
  f4 f |
  d8 g f e |
  f2
}

nhacPhienKhucBas = \relative c {
  f8 f d d |
  c4 c |
  bf8 bf g g |
  d'4 d |
  g8 g f f |
  bf4 bf |
  bf8 bf c c, |
  f2
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  Hãy cất đầu lên
  Để Vua vinh quang ngự qua
  Chính Chúa dũng
  
  lực Thượng Đế oai phong trong cơn chinh chiến.
  
  lực Thượng Đế thiên binh vinh thắng muôn đời.
}

loiDiepKhucAlto = \lyricmode {
  _ _ _ _ cửa muôn đời (mau vươn cao lên nữa)
}

loiDiepKhucBas = \lyricmode {
  Cửa ơi Hỡi cửa muôn đời
  mau vươn cao lên nữa
  Để Vua vinh quang ngự qua
  Vua vinh quang đó là ai
  quyền
  
  lực Thượng Đế oai phong trong cơn chinh chiến.
  
  lực Thượng Đế thiên binh vinh thắng ngàn đời.
}

% Lời phiên khúc
loiPhienKhucMotSop = \lyricmode {
  \set stanza = #"1."
  Địa cầu và cả muôn loài đều là của Chúa
  Vì Ngài thiết lập trên nước biển khơi ở trên sông nước.
}

loiPhienKhucHaiSop = \lyricmode {
  \set stanza = #"2."
  Kìa là dòng giống nhân hiền
  ngàn đời diễm phúc
  Là người chẳng hề vương vấn phù vân
  mừng vui muôn nơi.
}

loiPhienKhucMotBas = \lyricmode {
  \set stanza = #"1."
  Thế giới với cả chư dân đều là của Chúa
  Và đặt đất liền ở trên sông ngòi. Cửa
}

loiPhienKhucHaiSop = \lyricmode {
  \set stanza = #"2."
  Những giữ tấm lòng trinh nguyên ngàn đời diễm phúc
  Được vào thánh điện sống vui muôn đời.
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
      "Liberation Serif"
      "Liberation Serif"
      "Liberation Serif"
      (/ 20 20)))
  page-count = #1
  %print-page-number = #f
  %system-system-spacing = #'((basic-distance . 33))
  %score-system-spacing = #'((basic-distance . 33))
}

% Thiết lập tông và nhịp
TongNhip = { \key f \major \time 2/4 }

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
        \clef "treble"
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
        \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
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
    \override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \override Score.NonMusicalPaperColumn.page-break-permission = ##f
  }
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -3 { \nhacPhienKhucAlto }
      \new NullVoice = nhacThamChieu \nhacPhienKhucSop
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucMotSop
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucHaiSop
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
