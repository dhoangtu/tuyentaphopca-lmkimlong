% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ca Mừng Thiên Chúa" }
  composer = "Nhạc và Lời: Lm. Kim Long"
  %arranger = " "
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
  r2 |
  r8 g f g |
  a4 g |
  d( e) |
  f2( |
  f4) r |
  r2 |
  r8 c d e |
  f4 f8 e |
  c2( |
  c4) r
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
  c
  <<
    {
      \voiceOne c'8 _(bf)
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      c,4
    }
  >>
  \oneVoice
  <a' \=1^( f, \=2_( >2 |
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
  Ca mừng Thiên Chúa hỡi muôn, hỡi muôn dân.
  Cùng tung hô Chúa các nước trên gian trần.
}

loiDiepKhucAlto = \lyricmode {
  Ca mừng Thiên Chúa hỡi ngàn dân.
  Cùng tung hô Chúa hỡi gian trần.
}

loiDiepKhucBas = \lyricmode {
  Ca mừng Thiên Chúa hỡi ngàn dân.
  Cùng tung hô Chúa hỡi muôn dân trên thế trần.
}

loiDiepKhucBasPhu = \lyrics {
  \repeat unfold 15 { _ }
  \override Lyrics.LyricText.font-shape = #'italic
  gian
}

% Lời phiên khúc
loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Vì tình Ngài yêu thương ta,
  nồng nàn thắm thiết bao la.
  Lòng Ngài trung trinh tín nghĩa
  Bền vững qua muôn đời.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Phụng mừng rạng danh Ba Ngôi
  Từ ngàn trước tới khi nay
  Và ngàn sau luôn nối tiếp
  Bền vững qua muôn đời.
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
        \new Lyrics \lyricsto beBas \loiDiepKhucBasPhu
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
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
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucMot
      \new Lyrics \lyricsto nhacThamChieu \loiPhienKhucHai
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
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
