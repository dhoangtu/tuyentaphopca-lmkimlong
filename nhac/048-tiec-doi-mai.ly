% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Than Sầu Chi Mãi" }
  arranger = "Lm. Kim Long"
  composer = "Thơ: Lm. Đỗ Xuân Quế"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  r2
  r
  a8. a16 a8 c |
  f,4. g16 (f) |
  e4 f16 (g) c,8 |
  bf'4. a8 |
  g2 ~ |
  g4 r |
  r2
  bf8. bf16 bf8 d |
  g,4. a16 (g) |
  f4 f16 (g) c,8 |
  a'4. g8 |
  f2 ~ |
  f4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r2
  a8. a16 a8 c |
  f,4. e8 |
  d4. c8 |
  d4 a8 a |
  d4 (g8) f |
  e2 ~ |
  e4 r |
  bf'8. bf16 bf8 d |
  g,4. f8 |
  e4. c8 |
  a4 a8 a |
  f'4. e8 |
  c2 ~ |
  c4
}

nhacDiepKhucBas = \relative c' {
  a8. a16 a8 c |
  f,4. e8 |
  f8. f16 f8 c |
  d8. d16 d8 bf |
  c4 d8 (f) |
  bf,4. b!8 |
  c2 |
  bf'8. bf16 bf8 d |
  g,4. f8 |
  g4. bf8 |
  c c, d e |
  f4 d |
  c
  <<
    { \voiceOne c'8 _(bf) }
    \new Voice = "splitpart" { \voiceTwo c,4 }
  >>
  \oneVoice
  <a' f f,>2 ~ |
  <a f f,>4
}

nhacPhienKhucSop = \relative c' {
  \partial 4 r8 e |
  e4. e16 a |
  d,4 r8 e16 f |
  a,4. bf8 |
  \slashedGrace { c16 (d } c4.) c8 |
  g'4. g16 bf |
  f4 r8 f16 g |
  d4. c8 |
  f2 \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  r4 |
  a bf8 a |
  g r d' d |
  c d16 d g,4 ~ |
  g8 g a r |
  bf2 |
  a8 r g4 |
  bf8 bf16 a g8 g |
  a2
}

nhacPhienKhucTenor = \relative c' {
  r4
  cs2 |
  d8 r bf' bf |
  a a16 f d4 ~ |
  d8 e f r |
  d4 e8 d |
  cs r d4 |
  g8 f16 f e8 e |
  c2
}

nhacPhienKhucBas = \relative c' {
  r4
  a g8 a |
  bf r g g |
  a f16 f g4 ~ |
  g8 c, f r |
  g2 |
  a8 r f4 |
  g8 bf,16 b! c8 c |
  f2
}

% Lời
loiDiepKhucSop = \lyricmode {
  Con tin mai sẽ về, sẽ về thấy mặt Chúa yêu thương.
  Con tin mai sẽ về, sẽ về nếm hạnh phúc thiên đường.
}

loiDiepKhucAlto = \lyricmode {
  Con tin mai sẽ về, sẽ về, sẽ về nhìn mặt Chúa yêu thương.
  Con tin mai sẽ về, sẽ về, sẽ về niềm hạnh phúc thiên đường.
}

loiDiepKhucBas = \lyricmode {
  Con tin mai sẽ về, sẽ về tin mai sẽ về,
  tin mai sẽ về thấy mặt yêu thương.
  Con tin mai sẽ về,
  sẽ về mai sẽ về hưởng hạnh phúc ân lộc thiên đường.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Đêm xưa khi vĩnh biệt
  nghe nhắn nhủ tha thiết,
  hẹn mai trên Nước Trời nâng chén tiệc mừng vui.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Uy nghi như núi đồi cũng có ngày chuyển lay,
  lời xưa tuyên phán rồi không biến đổi nhạt phai.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Hôm nay rượu bánh này tiên báo tiệc đời mai,
  làm tim con khát vọng thao thức niềm chờ mong.
}

loiPhienKhucAltoMot = \lyricmode {
  Hm __ _ _ _
  khi vĩnh biệt nghe nhắn nhủ tha thiết,
  Hm __ _
  hẹn mai nâng chén tiệc mừng vui.
}

loiPhienKhucAltoHai = \lyricmode {
  _ _ _ _
  như núi đồi cũng có ngày chuyển lay.
  _ _
  lời xưa không biến đổi nhạt phai.
}

loiPhienKhucAltoBa = \lyricmode {
  _ _ _ _
  nay bánh rượu tiên báo tiệc đời mai.
  _ _
  làm tim thao thức niềm chờ mong.
}

loiPhienKhucBasMot = \lyricmode {
  Hm __ _ _ _
  khi vĩnh biệt nghe nhắn nhủ tha thiết,
  Hm __ _
  hẹn mai dự bàn tiệc mừng vui.
}

loiPhienKhucBasHai = \lyricmode {
  _ _ _ _
  như núi đồi cũng đổi thay chuyển lay.
  _ _ _ _
  lời xưa chẳng chuyển đổi nhạt phai.
}

loiPhienKhucBasBa = \lyricmode {
  _ _ _ _
  nay rượu bánh tiên báo tiệc đời mai.
  _ _ _ _
  làm tim rạo rực niềm chờ mong.
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
  page-count = #2
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  %score-system-spacing = #'((basic-distance . 15))
}

TongNhip = {
  \key f \major \time 2/4
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
      \new Voice = "beSop" { \clef treble \TongNhip \nhacDiepKhucSop }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacDiepKhucAlto }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacDiepKhucBas }
      \new Lyrics \lyricsto beBass \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" { \clef treble \TongNhip \nhacPhienKhucSop }
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
      \new NullVoice = nhacThamChieuAlto \nhacPhienKhucAlto
      \new Lyrics \lyricsto nhacThamChieuAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto nhacThamChieuAlto \loiPhienKhucAltoHai
      \new Lyrics \lyricsto nhacThamChieuAlto \loiPhienKhucAltoBa
    >>
    \new Staff <<
      \new Voice = "beBass" { \clef bass \TongNhip \nhacPhienKhucBas }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  } 
}
