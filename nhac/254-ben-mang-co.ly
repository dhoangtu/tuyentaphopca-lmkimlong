% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bên Máng Cỏ" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  f8 bf d,16 (g) e!8 |
  \slashedGrace { e16 ( } d4) c8. bf16 |
  c8 d g,16 (bf) g (f) | \break
  g2 |
  g8 c bf c |
  d2 ~ |
  d8 r16 d bf'8 a |
  a a d g, |
  a r16 d, bf'8 a |
  a a c16 (d) bf8 |
  g2 ~ |
  g4 r \bar "||" \break
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \key g \major
  %\time 2/4
  b8 b16 (a) g8 a |
  a4. a8 |
  b8. g16 a8 g |
  e4 e8 g |
  d d b'16 (c) b8 |
  a2 |
  b8 b16 (a) g8 a |
  a4. a8 |
  b8. g16 a8 g |
  e4 e8 g |
  d8 d16 d a'8 fs |
  g2 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  R2*12
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \key g \major
  g8 g16 (fs) e8 e |
  fs4. fs8 |
  g8. e16 d8 d |
  c4 c8 b |
  a a d [g] |
  fs2 |
  g8 g16 (fs) e8 e |
  fs4. fs8 |
  g8. e16 d8 d |
  c4 c8 c |
  b b16 b c8 c |
  b2
}

nhacDiepKhucTenor = \relative c'' {
  R2*3
  r8 d bf a |
  g r8 r4 |
  r8 a bf c |
  d4 r |
  r8 a g g |
  fs4 r |
  r8 f fs fs |
  d2 ~ |
  d4 r |
  
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \key g \major
  R2
  d''8. d16 d,8 d |
  g4. g8 |
  a8. a16 a8 g |
  fs fs g g |
  d d'16 (c) b8 a |
  g4 r |
  d'8. d16 d,8 d |
  g4. g8 |
  a8. a16 g8 c, |
  d8 d16 d d8 d |
  <g g,>2
}

nhacDiepKhucBas = \relative c'' {
  R2*3
  r8 bf g fs |
  g r r4 |
  r8 d g a |
  bf4 r |
  r8 c, bf ef |
  d4 r |
  r8 c c c |
  bf2 ~ |
  bf4 r |
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Bên máng cỏ hôi tanh,
  con quỳ đây với cả lòng thành,
  niệm suy và cảm thấu:
  Tình Chúa yêu con cao vút trời xanh,
  đành giáng sinh đây hiu hắt cô quạnh.
  
  Đất với trời giao duyên:
  Thiên Chúa ở với nhân trần,
  xa hút rồi ngày tháng điêu linh.
  Hãy cất lời ca lên chung tiếng cùng các thiên thần
  xin tán tụng ngàn đời Chúa hiển vinh.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Sao Chúa bỏ thiên cung
  sinh hạ nơi máng cỏ bần cùng?
  Này con đà suy thấu:
  Tình Chúa bao la như sóng đại dương,
  Ngài tới đem con lên cõi thiên đường.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Dâng tiến quả tim con,
  xin được yêu Chúa mãi vẹn tròn
  và luôn hằng ghi nhớ:
  Tình Chúa yêu con kiên vững ngàn năm
  dịu mát lung linh như ánh trăng rằm.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  với cả lòng thành
  niệm suy cảm thấu
  cao vút trời xanh
  hiu hắt cô quạnh.
  
  Đất với trời hợp duyên
  nhân trần nên xa hút rồi ngày tháng điêu linh
  hãy ca lên này
  Hãy cất lời hòa ca lên
  thiên thần xin ca tụng ngàn đời Chúa hiển vinh.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  máng cỏ bần cùng
  này con suy thấu
  như sóng đại dương
  lên cõi thiên đường.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  Chúa mãi vẹn tròn
  và luôn ghi nhớ:
  kiên vững ngàn năm
  như ánh trăng rằm.
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 5\mm
  bottom-margin = 5\mm
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
  page-count = #1
}

TongNhip = {
  \key bf \major \time 2/4
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef treble
        \new Voice \TongNhip \partCombine 
          \nhacDiepKhucTenor
          \nhacDiepKhucBas
        \new NullVoice = beBas \nhacDiepKhucTenor
        \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
        \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
        \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Lyrics.LyricSpace.minimum-distance = #0.6
    %\override LyricHyphen.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}