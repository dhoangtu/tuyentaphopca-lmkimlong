% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trần Thế Vang Khúc Hoan Ca" }
  composer = "Nhạc: L. Deiss"
  arranger = "Lời Việt: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhuc = \relative c'' {
  g4 g8 b4 b8 |
  a b a g e g |
  a4 \bar "||"
}

nhacCongDoan = \relative c'' {
  \partial 2 g8 g4 e8 |
  d4 g8 a (b) a |
  g4. \bar "|."
}

nhacCaDoanSop = \relative c'' {
  b8 d4 e8 |
  fs4 b,8 e4 e8 |
  d4.
}

nhacCaDoanAlto = \relative c'' {
  g8 g4 g8 |
  a4 b8 c4 c8 |
  b4.
}

nhacCaDoanTenor = \relative c' {
  g8 b4 b8 |
  d4 d8 \override Stem.length = #15 \stemDown e4 fs8 |
  d4.
}

nhacCaDoanBas = \relative c' {
  g8 g4 e8 |
  d4 g8 c,4 d8 |
  g4.
}

nhacPhienKhuc = \relative c' {
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
  \partial 4. e8 d e |
  g4. e8 g a |
  b4 b8 b cs d |
  cs ([b a]) b4 r8 |
  g b d e4 e8 |
  d (e) d b ([a]) g |
  a b c a ([g fs] |
  e [fs g]) e4. \bar "||"
}

% Lời
loiDiepKhuc = \lyricmode {
  Nào nhân thế hãy vang khúc hoan ca ngợi khen Chúa.
}

loiCongDoan = \lyricmode {
  AL -- LE -- LU -- IA! AL -- LE -- LU -- IA!
}

loiCaDoanSop = \lyricmode {
  AL -- LE -- LU -- IA! AL -- LE -- LU -- IA!
}

loiCaDoanBas = \lyricmode {
  AL -- LE -- LU -- IA! AL -- LE -- LU -- IA!
}

loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Ca mừng Thiên Chúa ngàn dân trên thế giới ngợi khen Chúa hiển vinh.
  Hòa lên muôn khúc thánh thi tán dương vì vinh quang Chúa sáng ngời.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Tâu cùng Thiên Chúa: thực uy linh biết mấy kỳ công Chúa tác sinh.
  Quyền năng uy dũng khiến cho quân thù đều phải kinh hãi thán phục.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Trong niềm tin kính mọi dân trên thế giới phục suy trước Thiên Nhan.
  Ngợi khen Danh Chúa rất đáng ca tụng hòa vang muôn khúc thánh vịnh.
}

loiPhienKhucBon = \lyricmode {
  \set stanza = "4."
  Mau cùng nhau đến và hãy chiêm ngưỡng rõ kỳ công Chúa dựng nên.
  Vì yêu con cái thế nhân biết bao việc uy dũng Chúa đã làm.
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
  %systems-per-page = 4
}

TongNhip = {
  \key g \major \time 6/8
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
        \TongNhip \nhacDiepKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiDiepKhuc
  >>
  \layout {
    ragged-right = ##f
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

\score {
  <<
  \new Staff \with { instrumentName = \markup { \bold "Cộng đoàn" }} <<
      \clef treble
      \new Voice = congDoan {
        \TongNhip \nhacCongDoan
      }
    \new Lyrics \lyricsto congDoan \loiCongDoan
  >>
  \new PianoStaff \with { instrumentName = \markup { \bold "CA ĐOÀN" }} <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacCaDoanSop
        \notBePhu -2 { \nhacCaDoanAlto }
      \new NullVoice = beSop \nhacCaDoanSop
      \new Lyrics \lyricsto beSop \loiCaDoanSop
      >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef "bass"
        \new Voice \TongNhip \partCombine 
        \nhacCaDoanTenor
        \notBePhu -2 { \nhacCaDoanBas }
      \new NullVoice = beBas \nhacCaDoanTenor
      \new Lyrics \lyricsto beBas \loiCaDoanBas
    >>
  >>
  >>
  \layout {
    ragged-right = ##f
    indent = 30
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override LyricHyphen.minimum-distance = #1.5
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
    \new Lyrics \lyricsto beSop \loiPhienKhucBon
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
