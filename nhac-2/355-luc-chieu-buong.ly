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
  \partial 8 a8 |
  d,4 \tuplet 3/2 { a'8 g a } |
  a2 ~ |
  a4 \tuplet 3/2 { f8 f g } |
  e4 \tuplet 3/2 { a8 c, e } |
  d2 ~
  \break
  
  d4 r4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar ".|"
  r4 r8 e a8. g16 g8 g |
  c4. f8 |
  e r16 d cs8 d |
  a4 a8 (bf) |
  g4 g8 (d') |
  cs2 ~ |
  cs4 r8 d \bar "||"
  
  \key d \major
  b8 b d b |
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
  r8
  R2*7
  r4 r8 d |
  g8. f16 f8 f |
  bf4. g8 |
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
  <fs d>4
  <<
    {
      \voiceOne
      e8 (g) |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      cs,4
    }
  >>
  \oneVoice
  <fs d>2 ~ |
  <fs d>4 r
}

nhacDiepKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  r8 |
  R2*5
  r4 r8 a |
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
  e4. e8 |
  a4 a, |
  d2 ~ |
  d4 r
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
  c8. d16 bf8 a |
  g
  <<
    {
      f4 f8 |
      g e4 e8 |
    }
    {
      d4 d8 |
      e c4 c8 |
    }
  >>
  d4 c8\rest
  \tweak extra-offset #'(0 . -3)
  ^\markup { \rest #"4" }
  a \bar "|."
}

% Lời
loiDiepKhucSop = \lyricmode {
  Lúc chiều buông nhẹ nơi nơi,
  Tìm về bên Mẹ cất lời kính thân.
  Tụng ca Mẹ đầy hồng ân, phúc ân,
  thiên đường suy phục, thế trần hỷ hoan.
  Thái dương nên áo lung linh
  Vầng trăng lấp lánh
  kính tôn nâng gót vàng Nữ trinh.
}

loiDiepKhucAlto = \lyricmode {
  Tụng ca Mẹ đầy hồng ân,
  lạy phục, thế trần hỷ hoan.
  nên như áo lung linh
  kính tôn nâng gót vàng Nữ trinh.
}

loiDiepKhucBas = \lyricmode {
  Tụng ca Mẹ đầy hồng ân,
  Hát ca hồng ân
  lạy phục, thế trần hỷ hoan.
  Nên như áo lung linh
  Vầng trăng suy tôn nâng gót Nữ trinh
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Khi bóng đêm buông chập chùng,
  từ trong đớn đau cơ cùng,
  trông lên Mẹ cất tiếng van
  Dù hiểm nghèo luôn vướng lối,
  có Mẹ luôn chở che rồi,
  đời lặng trôi trong yên hàn.
  Tụng
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Con chắp đôi tay nguyện cầu,
  đời như bóng đêm vương sầu,
  luôn trôi dạt biết tới đâu
  Mòn mỏi tìm đâu thấy hướng,
  giữa ngàn nguy hiểm khôn lường,
  nguyện Mẹ thương xin soi đường.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Con vững tin nơi Mẹ lành,
  Mẹ chê chối con sao đành,
  khi con cầu nỡ nín thinh
  Chiều thuở nào trên thánh giá
  Chúa đã trao gửi cho Mẹ
  một đoàn con xin thương tình.
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
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
