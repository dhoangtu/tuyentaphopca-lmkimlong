% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nếu Chúa Không Xây Nhà" }
  composer = "Tv. 126"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  R2
  c8. c16 a8 a |
  g2 ~ |
  g4 \tuplet 3/2 { d'8 b! d } |
  c2 |
  f8. f16 d8 e16 (d) |
  c2 ~ |
  c8 g c d |
  bf4 \tuplet 3/2 { bf8 g c } |
  f,2 \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  R2
  a8. a16 f8 f |
  e2 ~ |
  e4 \tuplet 3/2 { g8 g f } |
  e2 |
  f'8. f16 d8 e16 (d) |
  a8. a16 f8 g16 (f) |
  e2 ~ |
  e4 \tuplet 3/2 { f8 e e } |
  c2
}

nhacDiepKhucBas = \relative c {
  f8. f16 d8 d |
  c2 ~ |
  c8 c e f |
  \slashedGrace { g16 (a } g4) \tuplet 3/2 { g8 g, g } |
  c2 |
  R2
  f8. f16 d8 e16 (d) |
  c2 |
  c4 \tuplet 3/2 { g'8 <c c,> <bf c,> } |
  <a f>2
}

nhacPhienKhuc = \relative c' {
  r4 c8 c16 (d) |
  f8. a16 g8 f16 (g) |
  a8. c16 d,8 f |
  g2 ~ |
  g4 g8 g |
  d'8. d16 c (bf) c8 |
  g8. g16 e (d) b!8 |
  c2 \bar "|."
}

% Lời
loiDiepKhucSop = \lyricmode {
  Nếu Chúa không xây nhà
  vất vả luống công.
  Nếu Chúa không giữ thành
  thì thức trắng đêm canh phòng ích gì.
}

loiDiepKhucAlto = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  \repeat unfold 13 { _ }
  Nếu Chúa không giữ thành
}

loiDiepKhucBas = \lyricmode {
  Nếu Chúa không xây nhà thợ nề tổn sức vất vả luống công.
  Nếu Chúa không giữ thành canh phòng lợi chi.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Người uổng công thức khuya dậy sớm kiếm tìm của ăn.
  Còn bạn Chúa, Chúa ban dư đầy chính khi ngủ say.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Đoàn tử tôn đó như hồng phúc Chúa Trời thưởng ban.
  Người hạnh phúc ví trang anh hùng ống tên đầy luôn.
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
      \new NullVoice = beAlto \nhacDiepKhucAlto
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
      >>
    %{
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
    %}
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
    \new Lyrics \with {
          \override VerticalAxisGroup.
            nonstaff-relatedstaff-spacing.padding = #1
        } \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override LyricHyphen.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
