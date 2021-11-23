% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Như Cha Trên Trời" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4 e8 e |
  c f f d |
  g2 |
  a8 (c) d e |
  d4 d8 d |
  b16 (c) d8 a a |
  g4. a8 |
  f a g e |
  d2 ~ |
  d4 e8 e |
  c f f d |
  g2 ~ |
  g8 g c c |
  b2 |
  a16 (b) c8 g c |
  d2 |
  e8 [f] d d |
  c2 ~ |
  c4 r \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  e8 e |
  c f f d |
  g2 |
  \once \override NoteColumn.force-hshift = #1.5
  a4 a8 c |
  b4 b8 a |
  g16 (a) g8 e e |
  d4. r8 |
  R2*2
  r4 e8 e |
  c f f d |
  g2 ~ |
  g8 e a a |
  g2 |
  f8 [f] d g |
  f2 |
  c8 f f f |
  e2 ~ |
  e4 r
}

nhacDiepKhucBas = \relative c {
  r4
  R2
  e8 e c c |
  f4 d |
  g4. fs8 |
  g4 c8 c |
  b8. a16 b8 c |
  d4. c8 |
  f,8. d16 e8 (f) |
  g4 r |
  R2
  e8 e b b |
  c2 |
  g'8 g e e |
  f4. e8 |
  d8. d16 e8 (f) |
  g <a d,> <b g> <b g> |
  <g c,>2 ~ |
  <g c,>4 r
}

nhacPhienKhucSop = \relative c' {
  e4 e8 c |
  f4. d8 |
  g f e e |
  a2 ~ |
  a8 b c c |
  g4. c8 |
  c a a c |
  d2 ~ |
  d8 c c d |
  e8. g,16 g8 d' |
  c2 ~ |
  c4 \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ánh mắt đầy yêu thương của Chúa
  tỏ cho chúng ta dung nhan của Chúa Cha trên trời,
  hoán cải biết bao tâm hồn.
  Ánh mắt đầy yêu thương của Chúa
  dạy dỗ chúng ta phải có lòng thương xót như Chúa Cha trên trời.
}

loiDiepKhucAlo = \lyricmode {
  Ánh mắt đầy yêu thương của Chúa
  tỏ cho chúng ta dung nhan của Chúa Cha trên trời,
  Ánh mắt đầy yêu thương của Chúa
  dạy dỗ chúng ta phải có lòng thương xót như Chúa Cha trên trời.
}

loiDiepKhucBas = \lyricmode {
  Ánh mắt đầy tình thương tỏ ra thần nhan Cha trên trời
  là Cha nhân ái, tâm hồn được cải hóa.
  Ánh mắt đầy tình thương, ánh mắt đầy tình thương
  tỏ hiện lòng thương xót của Cha trên trời.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Xin cho Hội Thánh phản chiếu gương mặt của Chúa trên trái đất này:
  Đấng đã biểu lộ quyền năng bằng lòng thương xót và sự thứ tha.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Chúa đã từng muốn thừa tác viên phụng sự Chúa
  thương mến tiếp cận ai mê muội và khổ đâu
  cảm nhận Thiên Chúa trọn niềm mến thương.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Mong sao Hội Thánh truyền giảng Tin Mừng của Chúa cho kẻ khó nghèo,
  ai lao tù được tự do, người mù vui sướng được nhìn ánh quang.
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
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlo
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

