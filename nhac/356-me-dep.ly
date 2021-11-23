% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mẹ Đẹp" }
  composer ="Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c' {
  \partial 8 c8 |
  c4 d8 |
  a'8. (g16) f8 |
  c'4. ~ |
  c8. d16 b!8 |
  c4 c8 |
  c4. ~ |
  c4 r8 |
  r4 f,8 |
  bf8. (d16) a8 |
  g4 r8 |
  R4. |
  r4 d'8 |
  d4 e8 |
  f8. (e16) d8 |
  d4. ~ |
  d4 r8 |
  R4. |
  c8 c g |
  c4 a16 (g) |
  f8. d16 f8 |
  g4. ~ |
  g4 r8 |
  R4.*2
  a8 g a16 (bf) |
  c8. (bf16) g8 |
  g8. g16 a8 |
  a4. ~ |
  a8 r8 d |
  f (e) d |
  d4 r8 |
  R4.*2
  r4 bf8 |
  a4. |
  R4.
  r4 c8 |
  a8. a16 f'8 |
  f4 d8 |
  c4. ~ |
  c4. ~ |
  c4 r8 |
  R4.*2
  r8 f c ~ |
  c b!16 ([a b8]) |
  c4. ~ |
  c4 \bar "|." \break
  
  c,8 |
  f8. f16 e8 |
  a (bf) g |
  c4 c8 |
  <<
    {
      f8 e d |
      c (bf) a |
      g4.
    }
    {
      a8 c bf |
      a (g) f |
      c4.
    }
  >>
  \break
  
  c8 d f |
  e (f) g |
  g8. f16 g8 |
  a4. g8 g
  <<
    {
      a8 |
      c4 c8 |
      b!8. a16 b8 |
      c4
    }
    {
      f,8 e4 e8 |
      g8. g16 f8 |
      e4
    }
  >>
  \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  c8 |
  c4 d8 |
  a'8. (g16) f8 |
  c'4 g8 |
  a4 d,8 |
  e4 e8 |
  f4 c8 |
  f16 (g a g) f (g) |
  c4 c,8 |
  f4 f8 |
  e4 e8 |
  f8. f16 f8 |
  e4 f8 |
  f8. (d16) a'8 |
  a8. (c16) bf8 |
  a4. ( |
  f4) r8 |
  R4.
  f8 f f |
  e4 f16 (e) |
  d8. c16 d8 |
  d4 c8 |
  d4 d8 |
  f16 (g a g) f (g) |
  c4. ~ |
  c4 r8 |
  r4 c,8 |
  f8. e16 f8 |
  f4. ~ |
  f8 r f |
  a (c) bf |
  a4 r8 |
  R4.
  r4 f8 |
  e4 e8 |
  f4 c8 |
  f4 a8 |
  g16 (c a8) g8 |
  f4. ~ |
  f8 d f |
  f8. g16 f8 |
  e4. ~ |
  e4 r8 |
  R4.*3
  r8 g f ~ |
  f g (f) |
  e!?4
}

nhacPhienKhucTenor = \relative c' {
  r8 |
  R4.*3
  r4 g8 |
  g8. g16 g8 |
  a4. ~ |
  a4 a16 (c) |
  a8. (g16) a (c) |
  d4 d8 |
  g,4 r8 |
  r4 a8 |
  a4. ~ |
  a8. f'16 e8 |
  d8. g,16 d'8 |
  d4. ~ |
  d4 r8 |
  a8 a g |
  a4 bf8 ~ |
  bf bf ([c]) |
  a4 a16 (c) |
  b!4 (
  \once \stemDown a8 |
  b!) r a |
  d8. d16 d8 |
  e4. ~ |
  e8 r f |
  c4. ~ |
  c4 c8 |
  c4 c,8 |
  d (f) bf |
  a4 r8 |
  r4 \slashedGrace { \once \stemDown cs16 ^( } d8) |
  a8 r \slashedGrace { \once \stemDown a16 ^( } d8) |
  \slashedGrace { \once \stemDown f16 ^( } e8) r d |
  cs4 cs8 |
  d4 r8 |
  r4 f,8 |
  e8. e16 e8 |
  f4 a8 |
  bf (c) bf |
  a8. bf16 a8 |
  g4. ~ |
  g4 r8 |
  R4.*4
  r8 c af |
  g4
}

nhacPhienKhucBas = \relative c {
  r8 |
  R4.
  r4 f8 |
  e4. |
  f8 (d) g |
  c,8. c16 c8 |
  f4. ~ |
  f ~ |
  f4 f8 |
  bf,8. bf16 bf8 |
  c4 c8 |
  d8. d16 d8 |
  <cs a>4 d8 |
  d4 c8 |
  d8. e16 g8 |
  f4. |
  f8 f e |
  f f c |
  f4 d8 |
  c4. |
  d4 (a'8) |
  g4. ~ |
  g8 r f |
  d8. d16 d8 |
  c4. |
  f8 c f16 (g) |
  a8. (g16) e8 |
  d8. c16 f8 |
  f4. ~ |
  f4 f8 |
  d8. d16 e8 |
  f r \slashedGrace { \once \stemDown cs16 ^( } d8) |
  a r \slashedGrace { \once \stemDown a16 ^( } d8) |
  \slashedGrace { \once \stemDown f16 ^( } e8) r d |
  a4 a8 |
  d4 r8 |
  r4 f8 |
  c8. c16 c8 |
  d4 f8 |
  bf,4 bf8 |
  c4. ~ |
  c ~ |
  c4 c'8 |
  \slashedGrace { \stemDown c16 ^(df } \stemNeutral c4) f,16 (g) |
  \slashedGrace { \once \stemDown a16 ^( } g4) a!16 (g) |
  f4. |
  df4. |
  c4. ~ |
  c4
}

% Lời
loiPhienKhucSop = \lyricmode {
  Mẹ đẹp tựa ánh bình minh,
  ánh bình minh lung linh
  lời kinh ngợp trời
  Như trăng chiếu sáng nơi nơi
  Uy danh Mẹ vẫn muôn đời (mà) tôn cao.
  Con hèn biết lấy lời nào (mà) tôn vinh.
  Trong phút uy linh nghẹn lời
  Quê trời, hồn ước tới quê trời
  mắt khơi lệ mừng.
  
  Đoàn con nay hợp tiếng mọi nơi
  cùng hát ca danh Mẹ muôn đời.
  
  <<
    {
      \set stanza = "1."
      Mẹ đầy vinh hiển nơi thiên tòa cao sáng,
      Mẹ tràn ân phúc,
      thế nhân hằng ca vang.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beSop"
      \set stanza = "2."
      Lòng Mẹ như biển bao la
      tràn muôn sóng,
      Dạt dào thương mến
      chúng con hằng trông mong.
    }
    \new Lyrics \with {
      alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beSop"
      \set stanza = "3."
      Nguyệt cầu, tinh đẩu thua xa Mẹ duyên dáng,
      Vầng trăng le lói kém xa Mẹ cao quang.
    }
  >>
}

loiPhienKhucAlto = \lyricmode {
  Mẹ đẹp tựa ánh bình minh
  như ánh bình minh lung linh
  nhạc quyện lời kinh,
  lời kinh ngợp trời,
  lời kinh vang cung trời
  Như trăng chiếu sáng nơi nơi
  Uy danh Mẹ vẫn muôn đời (mà) tôn cao.
  Tình yêu mầu nhiệm làm sao.
  lời nào (mà) tôn vinh.
  Trong phút uy linh
  ân tình đầy vơi,
  Hồn con ước vọng quê trời,
  hồn con mong tới quê trời
  mắt khơi lệ mừng.
}

loiPhienKhucTenor = \lyricmode {
  Mẹ đẹp tựa bình minh
  lung linh lời kinh vang trời.
  như trăng sáng chiếu soi (là) nơi nơi
  Uy danh Mẹ vẫn, vẫn muôn đời tôn cao,
  mầu nhiệm (là) làm sao
  biết đâu tôn vinh.
  Lặng nhìn phút giây
  nghẹn lời chẳng nói
  ân tình đầy vơi.
  Ước vọng được về trời,
  ước tới quê trời
  tới quê trời
  khơi lệ mừng.
}

loiPhienKhucBas = \lyricmode {
  Mẹ đẹp như ánh
  đẹp tựa bình minh.
  ánh bình minh ngợp trời,
  lời kinh vang cung trời,
  như trăng dọi sáng (là) nơi nơi
  Uy danh Mẹ, uy danh Mẹ vẫn muôn đời tôn cao.
  sâu nhiệm (là) làm sao,
  Con hèn biết lấy lời nào (mà) tôn vinh.
  phút này thực uy linh,
  nghẹn lời chẳng nói,
  ân tình đầy vơi.
  Ước vọng được về trời,
  ước vọng về trời.
  Tâm tư thổn thức mắt khơi lệ mừng.
}

loiPhienKhucSolo = \lyricmode {
  \set stanza = "Solo Nữ:"
  Xin ân phúc cho bốn trời sương gió
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
  \key f \major \time 3/8
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff = "1" <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff = "2" <<
      \new Voice = beAlto {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff = "3" <<
      \new Voice = beTenor {
        \clef "violin_8" \TongNhip \nhacPhienKhucTenor
      }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff = "4" <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
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
