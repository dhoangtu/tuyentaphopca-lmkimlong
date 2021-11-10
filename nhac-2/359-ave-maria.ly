% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ave Maria" }
  composer = "Huyền Linh"
  arranger = "Bè phụ: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  d8 d d d |
  d4 d8 d |
  a4 a |
  a2 |
  f'8 f f f |
  f4 f8 f |
  d4 d |
  d2 |
  f8 e e f |
  d4. d8 |
  a' a a g |
  a2 |
  d8 d d c |
  d4 a |
  d8 e f e |
  d2 \bar "|."
  
  d8 d d a |
  a4 a |
  f8 f f d |
  a'2 |
  g8 g g f |
  g4. f8 |
  g a a f |
  d2 |
  d'8 d d a |
  a4 a |
  f8 f f d |
  a'2 |
  g8 g g f |
  g4. f8 |
  g d' d c |
  d2 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  d8 d d d |
  d4 d8 d |
  a4 a |
  a2 |
  d8 d d d |
  d4 d8 d |
  c4 bf |
  a2 |
  f'8 e e f |
  d4. d8 |
  f f e d |
  cs2 |
  d8 e f g |
  f4 e |
  f8 g a g |
  f2
}

nhacDiepKhucBas = \relative c {
  R2*3
  f8 e d c |
  d2 ~ |
  d8 e f f |
  fs4 g |
  f8 e f e |
  d2 |
  d8 c d e |
  d4. bf'8 |
  a g f e |
  f2 ~ |
  f8 g a (g) |
  f e a, c |
  d2 |
  R2
  f8 f f c |
  d4 d |
  f8 f f d |
  bf'2 |
  bf8 a g f |
  e4 d |
  g8 bf a g |
  f4 r |
  f8 f f c |
  d4 d |
  f8 f f d |
  bf'2 |
  bf8 a g f |
  e d a4 |
  d2
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  A -- ve Ma -- ri -- a, con dâng lời chào Mẹ.
  A -- ve Ma -- ri -- a con dâng lời chào Mẹ.
  
  \set stanza = "1."
  Khi tàn mầu nắng chiều
  và khi sương đêm nặng gieo,
  Con say sưa lời ca chào
  A -- ve Ma -- ri -- a.
  Con dâng lên Mẹ lời mừng:
  Ma -- ri -- a đầy phúc
  Ma -- ri -- a đầy ơn,
  Mẹ luôn có Chúa ở cùng
  Ma -- ri -- a Mẹ hiền từ,
  xinh hơn muôn phụ nữ,
  Con dâng lên lời ca:
  Mẹ tươi hơn muôn ngàn hoa.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 20 { _ }
  \set stanza = "2."
  Khi trời gặp nắng hồng,
  bình minh êm vui trời đông,
  Con hân hoan lời ca mừng:
  A -- ve Ma -- ri -- a.
  Ma -- ri -- a Mẹ dịu dàng,
  xin nghe con cầu khấn
  Cho nhân dân Việt Nam
  được vui sống kiếp an bình,
  Ma -- ri -- a Mẹ hiền từ
  xin đưa tay gìn giữ,
  Cơn gian nan dần qua,
  đoàn con yên vui gần xa.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 20 { _ }
  \set stanza = "3."
  Khi đời đầy môi cười
  và khi cô đơn lệ rơi,
  Con say sưa đọc lên lời:
  A -- ve Ma -- ri -- a.
  Qua bao năm lạc đường đời,
  bao đêm sương mờ tối,
  Ma -- ri -- a Mẹ ơi,
  hồn con héo úa rã rời.
  Con trông lên Mẹ dịu dàng,
  ôi sao mai bừng sáng,
  Ma -- ri -- a tình thương,
  Mẹ ơi trông xem hồn con.
}

loiPhienKhucBasMot = \lyricmode {
  A -- ve Ma -- ri -- a này con dâng lời chào
  A -- ve Ma -- ri -- a
  
  \set stanza = "1."
  Khi trời nhạt nắng chiều
  tới khi sương đêm nặng gieo,
  con chào:
  A -- ve Ma -- ri -- a.
  Con dâng lên Mẹ lời mừng:
  Ma -- ri -- a đầy phúc
  Ma -- ri -- a Mẹ luôn đầy ơn,
  có Chúa ở cùng.
  Ma -- ri -- a Mẹ hiền từ
  Xinh hơn muôn phụ nữ
  kính dâng lên Mẹ tươi hơn ngàn hoa.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 15 { _ }
  \set stanza = "2."
  Khi trời gặp nắng hồng
  với khi êm vui trời đông,
  con xướng:
  A -- ve Ma -- ri -- a.
  Ma -- ri -- a Mẹ dịu dàng
  xin nghe con cầu khấn
  giúp nhân dân Việt Nam
  được vui sống kiếp an bình.
  Ma -- ri -- a Mẹ hiền từ,
  xin đưa tay gìn giữ,
  hết gian nan đoàn con vui gần xa.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 15 { _ }
  \set stanza = "3."
  Khi đời đầy môi cười
  với khi cô đơn lệ rơi
  con tới
  A -- ve Ma -- ri -- a.
  Qua bao năm lạc đường đời,
  bao đêm sương mờ tối,
  Ma -- ri -- a Mẹ ơi,
  hồn con héo hắt rã rời,
  Con trông lên Mẹ dịu dàng,
  ôi sao mai bừng sáng,
  Ma -- ri -- a Mẹ ơi trông hồn con.
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
    \override LyricHyphen.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}