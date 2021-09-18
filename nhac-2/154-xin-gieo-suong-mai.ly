% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Gieo Sương Mai" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  r8 e16 e <f c a>8 <e c g> |
  r d16 d <e c g>8 <d b f> |
  <c g e> r r4 |
  R2
  r8 a16 a b8 a |
  g4 r8 g |
  d' d4 c8 |
  e e16 e f8 e |
  d4. d8 |
  b b16 c d8 c |
  a g4. ~ |
  g4 r |
  R2
  r8 c16 a b8 a |
  g4 r8 g |
  d' d4 c8 |
  e e16 e f8 e |
  d4. a8 |
  a b g8. d'16 |
  b8 c4. ~ |
  c4 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  R2*2
  r8 e16 e f8 e |
  d2 ~ |
  d8 r16 d d8 c |
  b a16 b c8 r |
  r f e r |
  r g16 g c8 g |
  a2 |
  r8 g f g16 e |
  c8 c b4 ~ |
  b8 g'16 e f8 e |
  d2 ~ |
  d8 r16 d d8 c |
  b a16 b c8 r |
  r f e r |
  r g16 g a8 c |
  b8. (a16 g8) c, |
  c d c8. f16 |
  f8 e4. ~ |
  e4 r8
}

nhacDiepKhucBas = \relative c {
  <c c,>4 r <d d,> <g, b,> |
  <c c,>8 r r4 |
  r8 g'16 g a8 g |
  f4. fs8 |
  g8. f16 e8 r |
  r b c r |
  r c'16 c a8 c |
  f,8. d16 e8 fs |
  g g16 e d8 <e a,> |
  <fs d> <g g,>4. ~ |
  <g g,>4 r |
  r8 b16 g a8 g |
  f4. f8 |
  g8. f16 e8 r |
  r b' c r |
  r c16 c f,8 fs |
  g4. a8 |
  f f <g e>8. <a d,>16 |
  <af g,>8 <g c,>4. ~ |
  <g c,>4 r8
}

nhacPhienKhucSop = \relative c'' {
  \partial 8 c |
  b g e8. a16 |
  f8 d r c |
  f8. e16 a8 a |
  c b4. ~ |
  b8 r r b |
  d8. d16 d8 c |
  d e r e, |
  c' b4 gs8 |
  a2 ~ |
  a8 \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  r8
  g4 a ~ |
  a8 b c4 ~ |
  c b8 c |
  d4 d8 b |
  a gs4 r8 |
  f2 |
  e4 r8 e |
  a d4 d8 |
  c2 ~ |
  c8
}

nhacPhienKhucTenor = \relative c' {
  r8
  e2 |
  f4 e |
  f2 ~ |
  f4 g8 f |
  f e4 r8 |
  b2 |
  g4 r8 c |
  f f4 f8 |
  e2 ~ |
  e8
}

nhacPhienKhucBas = \relative c {
  r8
  e4 c |
  d a' ~ |
  a8 g f e |
  d4 b8 c |
  d8 e4 r8 |
  f2 |
  e4 r8 a |
  f d4 e8 |
  a,2 ~ |
  a8
}

% Lời
loiDiepKhucSop = \lyricmode {
  \repeat unfold 9 { _ }
  Xin gieo rắc sương mai trời cao ơi,
  trời cao xin gieo rắc sương mai,
  mây ngàn hãy mưa xuống Đấng Công Bình.
  Ước chi đất mở rộng để ân thiêng
  để ân thiêng cứu rỗi khai hoa,
  đồng thời chính trực sẽ trổ sinh.
}

loiDiepKhucAlto = \lyricmode {
  Xin gieo rắc sương mai, gieo rắc sương mai,
  trời cao ơi, hỡi ơi xin gieo rắc sương mai,
  mây ngàn hãy mưa Vị Công Bình.
  Ước chi đất mở rộng chi đất mở rộng
  để ân thiêng cứu rỗi
  ân cứu rỗi khai hoa,
  đồng thời chính trực sẽ trổ sinh.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 4 { _ }
  Xin gieo rắc sương mai,
  sương mai hỡi trời,
  trời ơi xin gieo rắc sương mai
  và ngàn mây ơi hãy mưa xuống Vị Công Bình.
  Ước chi đất mở rộng, mở rộng ân thiêng cứu rỗi
  ân cứu rỗi nở hoa, đồng thời chính trực sẽ trổ sinh.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Chúng con lưu lạc kiếp phong trần mòn mỏi
  vì đau thương vấn vương,
  ngày đêm mi hoen lệ kêu khấn:
  lạy Chúa xin dủ thương.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Bóng đêm bao trùm khắp cõi đời
  cầu khẩn Ngài sai Ngôi Cứu Tinh,
  từ nơi cao quang nào mau tới dọi chiếu lên Bình Minh.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Chúng con nay tựa lá cây vàng
  bị gió thổi tung bay khắp nơi,
  sầu đau dâng cau cùng năm tháng
  Ngài thấu chăng, Ngài ơi!
}

loiPhienKhucAltoMot = \lyricmode {
  Hm __ \repeat unfold 6 { _ }
  vấn vương trăm đường
  Hm __ _ lạy Chúa xin dủ thương.
}

loiPhienKhucAltoHai = \lyricmode {
  \repeat unfold 7 { _ }
  Cứu Tinh an bình
  _ _ dọi chiếu lên bình minh.
}

loiPhienKhucAltoBa = \lyricmode {
  \repeat unfold 7 { _ }
  khắp nơi trên đời
  _ _ Ngài hay chăng, Chúa ơi!
}

loiPhienKhucBasMot = \lyricmode {
  Hm __ \repeat unfold 7 { _ }
  sầu vương trăm hướng
  Hm __ _ nay Ngài xin dủ thương.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 8 { _ }
  hiển vinh tôn kính
  _ _ chói dọi nền thái bình.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 8 { _ }
  mọi nơi thế giới
  _ _ có thấu chăng, Chúa Trời.
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
  page-count = #2
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
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucAlto
        \notBePhu -2 { \nhacPhienKhucTenor }
      \new NullVoice = beAlto \nhacPhienKhucAlto
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoHai
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoBa
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
