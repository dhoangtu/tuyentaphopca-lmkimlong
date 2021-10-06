% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Lúc Chiều Buông" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \autoPageBreaksOff
  \set Staff.printKeyCancellation = ##f
  \partial 4 r8 a |
  d4 \tuplet 3/2 { a8 g a } |
  bf2 ~ |
  bf4 \tuplet 3/2 { f8 f g } |
  e4 \tuplet 3/2 { a8 c, e } |
  d2 \fermata \bar "|." \break
  
  \partial 4 r4 \bar "||"
  r4 r8 e a8. g16 g8 g |
  c4. f8 |
  e r16 d cs8 d |
  a4 a8 (bf) |
  g4 g8 (d') |
  cs2 ~ |
  cs4 r8 d \bar "||"
  
  \key d \major
  b8 b \slashedGrace { b16 ( } d8) b |
  a2 ~ |
  a8 a cs d |
  e4. fs8 |
  b, b cs (b) |
  a4. e'8 |
  d2 ~ |
  d4
  <>^\markup { \fontsize #2 \bold "Tận" }
  r \bar "|."
  \pageBreak
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  r4
  R2*5
  r4
  R2
  r4 r8 d |
  g8. f16 f8 f |
  bf4. a8 |
  a4 a8 (bf) |
  g4 g8 (f) |
  e2 ~ |
  e4 r |
  
  \key d \major
  R2
  r8 fs16 fs g8 fs |
  e4 r |
  r r8 a |
  g g a (g) |
  e4 e8 (g) |
  fs2 ~ |
  fs4 r
}

nhacDiepKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  r4 |
  R2*5
  r8 a |
  d8. c16 c8 c |
  f4. f8 |
  e4 d |
  g e |
  a a8 (bf) |
  g4 g |
  a2 ~ |
  a4 r |
  
  \key d \major
  R2
  r8 d16 d e8 d |
  <cs a>4 r8 fs, |
  g (fs) e (d) |
  <d' g,>4. <d e,>8 |
  <cs a>4 <cs a,> |
  <d a d,>2 ~ |
  <d a d,>4 r
}

nhacPhienKhuc = \relative c'' {
  a8. bf16 a8 e |
  d d r d |
  e8. f16 e8 cs |
  a
  <<
    {
      a'4 a8 |
      g bf4 bf8 |
      a2
    }
    {
      f4 f8 |
      e g4 g8 |
      f2
    }
  >>
  a8. bf16 a8 d |
  e e r e |
  cs8. d16 bf8 a |
  g
  <<
    {
      f4 f8 |
      g e4 e8 |
    }
    {
      d4 d8 |
      e cs4 cs8 |
    }
  >>
  d4 c8\rest
  \tweak extra-offset #'(0 . -3)
  ^\markup { \rest #"4" }
  a \bar "|."
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lúc chiều buông nhẹ nơi nơi
  Tìm về bên Mẹ cất lời kính thân.
  Tụng ca Mẹ đầy hồng ân phúc ân
  thiên đường suy phục thế trần hỷ hoan
  Thái dương nên áo lung linh
  Vầng trăng lấp lánh
  Kính tôn nâng gót vàng Nữ trinh.
}

loiDiepKhucAlto = \lyricmode {
  Tụng ca Mẹ đầy hồng ân
  lạy phục thế trần hỷ hoan
  nên như áo lung linh
  Kính tôn nâng gót vàng Nữ trinh.
}

loiDiepKhucBas = \lyricmode {
  Tụng ca Mẹ đầy hồng ân
  Hát ca hồng ân
  lạy phục thế trần hỷ hoan
  Nên như áo lung linh
  Vầng trăng suy tôn nâng gót Nữ trinh
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Khi bóng đê buông chập chùng
  Từ trong đớn đau cơ cùng trông lên Mẹ cất tiếng van
  Dù hiểm nghèo luôn vướng lối
  Có Mẹ luôn chở che rồi
  Đời lặng trôi trong yên hàn.
  Tụng
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Con chắp đôi tay nguyện cầu
  Đời như bóng đêm vương sầu
  Luôn trôi dạt biết tới đâu
  Mòn mỏi tìm đâu thấy hướng
  Giữa ngàn nguy hiểm khôn lường
  Nguyện Mẹ thương xin soi đường.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Con vững tin nơi Mẹ lành
  Mẹ chê chối con sao đành
  Khi con cầu nỡ nín thinh
  Chiều thuở nào trên thánh giá
  Chúa đã trao gửi cho Mẹ
  Một đoàn con xin thương tình.
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}

%\pageBreak

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
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
