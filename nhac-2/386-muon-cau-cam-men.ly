% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Muôn Câu Cảm Mến" }
  composer = "Lm. Kim Long"
  tagline = ##f
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

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \key bf \major
  \partial 8 d16 d |
  <<
    {
      d8 d   bf16 a g8 |
      a bf a16 g fs8
    }
    \\
    {
      <bf g>8 r <g d> r |
      <ef c> r <d c>4
    }
  >>
  <g d bf>4 r8 \bar "||"
  
  fs16 g |
  d4 \tuplet 3/2 { a'8 g bf } |
  a4 \tuplet 3/2 { ef'8 c ef } |
  d4. bf16 c |
  d8 d bf16 (a) g8 |
  a2 ~ |
  a4 r8 fs16 g |
  d4 \tuplet 3/2 { bf'8 g a } |
  a4 \tuplet 3/2 { ef'8 c d } |
  d4. bf16 c |
  d8 d bf16 (a) f8 |
  g2 ~ |
  g4 r \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  \key bf \major
  r8 |
  R2*2
  r4.
  r8 |
  g4 d |
  ef \tuplet 3/2 { g8 g g } |
  fs2 ~ |
  fs4 r8 g |
  ef ef g4 |
  fs4 r |
  d \tuplet 3/2 { g8 ef d } |
  ef4 \tuplet 3/2 { g8 g g } |
  fs4. g16 a |
  bf8 a g16 (f) d8 |
  d2 ~ |
  d4 r
}

nhacPhienKhucBas = \relative c {
  \key bf \major
  r8 |
  g r g' r |
  c, r d4 |
  g g,8
  r |
  bf'4 g4 |
  c \tuplet 3/2 { c,8 ef c } |
  d2 ~ |
  d4 r8 ef |
  c c g4 |
  d' r |
  r \tuplet 3/2 { g8 g g } |
  c4 \tuplet 3/2 { c,8 ef c } |
  d4. ef8 |
  d4 d8 d |
  g,2 ~ |
  g8
  d' e! fs
}

nhacDiepKhucSop = \relative c'' {
  \key g \major
  b8. b16 b8 a |
  f! c'4 a8 |
  d8. d16 e (d) cs8 |
  d4. a8 |
  b8. b16 c (b) g8 |
  a2 |
  b8. b16 b8 a |
  g c4 a8 |
  d8. d16 e (d) cs8 |
  d4. d,8 |
  a'8. a16 b (a) fs8 |
  g2 \bar "|."
}

nhacDiepKhucBas = \relative c' {
  \key g \major
  g8. g16 g8 d |
  df c4 e8 |
  d8. d16 g8 g |
  fs4. fs8 |
  g8. g16 c,8 e |
  d8. d16 e8 fs |
  g8. g16 g8 d |
  df c4 g'8 |
  fs8. fs16 g8 a |
  d,4. d8 |
  c8. c16 d8 d |
  <g g,>2
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \repeat unfold 3 { _ }
  \set stanza = "1."
  Tự muôn đời Chúa đã đoái trông,
  Chúa đã mến thương gọi con giữa thế nhân ngàn muôn.
  Dù con này có trổi hơn ai vẫn thường đơn sai
  mà ân phúc Chúa luôn phủ đầy.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 3 { _ }
  \set stanza = "2."
  Ngày qua ngày sứ mạng đã mang biết rằng vẻ vang
  mà sao lắm lúc con trở trăn.
  Bàn tay Ngài đỡ vực con lên
  xuống hồng ân thêm để con có phút vinh hạnh này.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 3 { _ }
  \set stanza = "3."
  Tình yêu Ngài vẫn dìu dắt con vững niềm sắt son
  làm nhân chứng Chúa cho mọi nơi.
  Đường theo Ngài dẫu nhiều chông gai
  hướng về tương lai nguyện trung tín dõi theo trọn đời.
}

loiPhienKhucAltoMot = \lyricmode {
  Hm __ _ _ Chúa đã mến thương giữa muôn muôn thế nhân.
  này có trổi hơn ai vẫn thường đơn sai
  mà ân phúc Chúa luôn phủ đầy.
}

loiPhienKhucAltoHai = \lyricmode {
  _ _ _
  Biết rõ vẻ vang
  lắm khi con trơ trăn.
  Ngài đỡ vực con lên
  xuống hồng ân thêm để con có phút vinh hạnh này.
}

loiPhienKhucAltoBa = \lyricmode {
  _ _ _
  Vững chí sắt son chứng nhân cho khắp nơi.
  Ngài dẫu nhiều chông gai
  hướng về tương lai nguyện trung tín dõi theo trọn đời.
}

loiPhienKhucBasMot = \lyricmode {
  \repeat unfold 6 { _ }
  Hm __ _ _ Ngài đã rủ thương giữa muôn muôn phàm nhân.
  Nào trổi hơn ai vẫn thường đơn sai ân phúc luôn phủ đầy.
  \set stanza = "ĐK:"
  Giờ đây con
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 9 { _ }
  Thật rõ vẻ vang lắm khi con trở trăn.
  Đỡ vực con lên
  xuống hồng ân thêm
  còn phút vinh hạnh này.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 9 { _ }
  Bền vững lòng son chứng nhân cho mọi nơi.
  Dẫu nhiều chông gai hướng về tương lai
  trung tín theo cuộc đời.
}

loiDiepKhucSop = \lyricmode {
  Xin dâng muôn câu cảm mến ngàn ân thiêng Chúa rộng ban
  ngày đêm nâng đỡ ủi an.
  Hai mươi lăm năm hồng phúc nguyện dâng lên xác hồn đây
  để nên hy lễ từng giây.
}

loiDiepKhucBas = \lyricmode {
  xin dâng muôn câu cảm mến ngàn ân thiêng
  Chúa khấng ban ngày đêm nâng đỡ ủi an.
  Rầy lần qua hai mươi lăm năm ân lộc
  tiến dâng lên hồn xác nầy để nên hy lễ từng giây.
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
}

TongNhip = {
  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
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
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
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
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}

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
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #0.6
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
