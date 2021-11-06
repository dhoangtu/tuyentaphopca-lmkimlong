% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Nơi Belem" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 a8 a
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
  
  a (g) f g a f |
  d2 a'8 a |
  a4 d8 bf g a |
  a2. |
  a8 a d c d (e) |
  d4 d8 bf d bf |
  a4 f'8 e f (e) \bar "||"
  
  d2. \bar "|." \break
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 2/4
  d4 d16 (f) e8 |
  d4 e16 (f) e8 |
  d c d bf |
  a4 f8 g |
  a bf a16 (g) e8 |
  a2 |
  g4 g16 (a) g8 |
  g4 g16 (a) g8 |
  g g a f |
  e4 e8 g |
  a bf a16 (g) e8 |
  
  \time 3/4
  d2 a'8 a
  \once \override Score.RehearsalMark.font-size = #0.1
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||" \break
  
  d4 f8 e d (cs) |
  d2. \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  
}

nhacDiepKhucBas = \relative c' {
  r4 |
  R2. |
  r8 bf a g f e |
  d4 r2 |
  r4 a'16 (bf) a8 g e |
  f2 a,8 a |
  d2 d8 d |
  cs4 d8 g, a4 |
  d2. |
  
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \time 2/4
  R2
  r4 a'8 a |
  bf4 bf,8 (c) |
  d4 r |
  r r8 bf' |
  a e g a |
  bf2 ~ |
  bf4 r |
  R2
  r4 a8 g |
  f e a a |
  
  \time 3/4
  f2 r4 |
  
  d4 d8 g a4 |
  d2.
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Nơi Be -- lem mùa sương tuyết lạnh lùng,
  Trong đêm thâu giữa cánh đồng hoang vu
  Một Hài nhi vừa giáng sinh,
  giáng sinh cứu nhân loại
  Al -- le -- lu -- ia.
  
  \set stanza = "1."
  Trong bóng đêm thây gió vi vu sương tuyết lạnh lùng
  nào ai có thấu chăng, người ơi?
  Con Chúa cao quang giáng sinh nơi hang đá cơ cùng
  vì yêu thương chúng nhân muôn đời.
  Nơi Be
  
  \set stanza = "CODA:"
  ia, Al -- le -- lu - -ia.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 31 { _ }
  \set stanza = "2."
  Bao khúc hoan ca khắp nhân gian chung tiếng vang hòa,
  nhạc thiên quốc mến yêu vọng ngân.
  Qua khắp không gian chúc vinh quang Thiên Chúa trên trời,
  bình an cho chúng nhân muôn đời.
  Nơi Be
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 31 { _ }
  \set stanza = "3."
  Con tiến dâng lên trót tâm tư,
  thân xác linh hồn, cầu mong Chúa giáng sinh ngự đây,
  Ban xuống muôn ơn giúp con luôn vui sống bên Người,
  niềm tin yêu sắt son khôn rời.
  Nơi Be
  
}

loiPhienKhucBasMot = \lyricmode {
  Tuyết sương lạnh lùng đêm thâu
  giữa cánh đồng hoang vu
  vừa hạ sinh
  cứu nhân loại
  Al -- le -- lu -- ia.
  
  \set stanza = "1."
  Gió vi vu lạnh lùng
  hỡi ơi nào ai suy thấu
  vì yêu thương phàm nhân muôn đời.

  % CODA
  ia, Al -- le -- lu -- ia.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 21 { _ }
  \set stanza = "2."
  Khắp nhân gian vang hòa
  sóng ngân từ nơi thiên quốc
  Bình an cho phàm nhân muôn đời.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 21 { _ }
  \set stanza = "3."
  Trọn tâm tư linh hồn tới đây cầu mong sinh xuống
  niềm tin yêu vẹn tròn khôn rời.
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
  \key f \major \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
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
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}