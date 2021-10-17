% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nếu Con Nhớ" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhuc = \relative c'' {
  \partial 8 a16 g |
  a4. g8 |
  g f4 a8 |
  e4. \slashedGrace { e16 ( } f16) cs |
  cs4. a8 |
  f'8 e4 cs8 |
  d4. d16 d |
  g4. f8 |
  g g4 a8 |
  a4. a16 a |
  e4. e8 |
  a \slashedGrace { e16 (f } e4) cs8 |
  d4 r8 \bar "||"
}

nhacDiepKhucSop = \relative c'' {
  \partial 8 a16 d |
  d4. d8 |
  c4 \tuplet 3/2 { bf8 bf d } |
  a4. f16 f |
  g4. g8 |
  a4 f16 (e) a8 |
  d,4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  a16 g |
  f4. f8 |
  e4 \tuplet 3/2 { d8 d d } |
  cs4. d16 d |
  e4. e8 |
  d4 d8 [cs] |
  d4
}

nhacDiepKhucBas = \relative c' {
  a16 a |
  d,4 d'8 ^> b! |
  c4 \tuplet 3/2 { g8 g g } |
  a4. a16 bf |
  g4. g8 |
  f4 a8 <g a,> |
  <f d>4
}

% Lời
loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Nếu con nhớ thân con là cát bụi
  nghĩa cuộc đời giờ vĩnh quyết chìm sâu.
  Còn gì đâu ngoài dăm ba tấc đất
  với tháng ngày thêm một nắm cỏ khâu.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Nếu con nhớ chuông ngân sầu tiễn biệt
  mãn tiệc đời điểm trắng mấy vành khăn.
  Mộ phần kia cỏ chưa đan kín hết
  đã vắng lạnh không một bóng người thăm.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Nếu con nhớ vinh sang cùng phúc lộc
  sẽ nhập nhòa tựa chút khói nhẹ bay.
  Mà hành trang để con qua vĩnh viễn
  có những gì mong đừng trắng bàn tay.
}

loiPhienKhucBon = \lyricmode {
  \set stanza = "4."
  Nếu con nhớ trăm năm còn có gì
  nghĩa địa buồn lạnh lẽo tiếng trùng ca.
  Trời về khuya tuông vui khi mãn lớp
  nuối tiếc hoài danh vọng cũng vuột xa.
}

loiDiepKhucSop = \lyricmode {
  Thì con ơi! Hãy lo phụng sự lẽ thật
  mà tìm ra chân đích của kiếp người.
}

loiDiepKhucBas = \lyricmode {
  Thì con ơi! Hãy lo phụng sự lẽ thật
  mà kiếm ra chân đích của phận người.
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
  %page-count = #1
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
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
    \new Lyrics \lyricsto beSop \loiPhienKhucBon
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

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
      \new Lyrics \lyricsto beAlto \loiDiepKhucSop
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
