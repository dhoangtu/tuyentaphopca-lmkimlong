% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Than Sầu Chi Mãi" }
  composer = "Lm. Kim Long"
  poet = "Ý: Tv. 42"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c'' {
  r2
  r
  r
  a8. a16 a8 a |
  gs4. e8 |
  c'4 \tuplet 3/2 { c8 ^> b ^> c ^> } |
  e2 ~ |
  e4 r |
  r2
  a,8. ^> e16 g8 g |
  a4. d8 |
  c4 b |
  a r |
  r8. b16 b8 b |
  e4. gs,8 |
  a4 \fermata
  <> \tweak extra-offset #'(-15 . 2)
  ^\markup { \fontsize #2 \bold "qua PK." }

  \bar "||"
  
  <> \tweak extra-offset #'(1 . -0.5)
  ^\markup { \fontsize #2 \bold "để Kết" }
  \once \override NoteColumn.X-offset = 3 <>
  a2 ~ |
  a2 ~ |
  a4 \fermata \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r2
  r
  e8. e16 e8 e |
  c4 f8 f |
  e4. e8 |
  e4 \tuplet 3/2 { a8 ^> a ^> a ^> } |
  gs2 ~ |
  gs4 r |
  r2
  r
  f8. ^> d16 e8 e |
  a8. a16 gs8 gs |
  e4 r |
  r8. d16 d8 d |
  e8 (f e) d |
  c4 \fermata
  
  \once \override NoteColumn.X-offset = 3 <>
  c4 c8 c |
  f4. f8 |
  e4 \fermata
}

nhacDiepKhucTenor = \relative c' {
  r2
  c8. c16 c8 c |
  b4 c8 b |
  a4. b8 |
  b4. gs8 |
  a4 \tuplet 3/2 { a8 ^> gs ^> a ^> } |
  b2 |
  e8. ^> c16 d8 d |
  e2 ~ |
  e4 d |
  c8 (b) a (gs) |
  e4 r8 e'16 (d) |
  c8. c16 d8 d16 (c) |
  b4 b8 b |
  c8 (d c) b |
  \partial 4 a4 \fermata
  
  \once \override NoteColumn.X-offset = 3 <>
  a4 a8 a |
  b4 d |
  cs4 \fermata
}

nhacDiepKhucBas = \relative c {
  e8. e16 e8 e |
  a,4 a'8 a |
  gs4. gs8 |
  a4 d, |
  e2 |
  a,4 \tuplet 3/2 { f'8 ^> f ^> f ^> } |
  e2 ~ |
  e4 r |
  c'8. ^> a16 b8 b |
  c4. b8 |
  a4 e |
  a, r8 e' |
  a8. a16 f8 f |
  d4 (f) |
  e2 |
  a,4 \fermata
  
  \once \override NoteColumn.X-offset = 3 <>
  a4 a8 a |
  d4. d8 |
  <a' a,>4 \fermata
}

nhacPhienKhucSop = \relative c'' {
  \stemNeutral
  \partial 4 c8 (b) |
  a8. b16 b8 b |
  e,4 e'8 b |
  e _(f) e16 (d) b8 |
  e4 r8 c |
  d d d16 (c) b8 |
  b4 c16 _(b) a8 |
  e8. e16 c' _(b) a8 |
  a2 \bar "||"
}

nhacPhienKhucBas = \relative c'' {
  \skip 4
  \repeat unfold 3 { \skip 2 }
  \skip 4 r8 a |
  f f f16 (e) d8 |
  e4 d8 d |
  c8. b16 a8 d |
  c2
}

% Lời
loiDiepKhucSop = \lyricmode {
  Sao băn khoăn ưu phiền hồn hỡi than sầu chi mãi.
  Hãy cậy trông Thiên Chúa Đấng tôi ca ngợi.
  Ngài là Thượng Đế của tôi.
  
  tôi.
}

loiDiepKhucAlto = \lyricmode {
  Sao băn khoăn ưu phiền,
  sao ưu phiền hồn ơi than van chi hoài.
  Hãy cậy trông Thiên Chúa Đấng tôi ca ngợi.
  Ngài là Thượng Để của tôi.
  
  tôi
  là Thượng Đế của tôi.
}

loiDiepKhucTenor = \lyricmode {
  Sao băn khoăn ưu phiền,
  sao ưu phiền, ưu phiền hồn ơi than sầu chi mãi.
  Hãy cậy trông Thiên Chúa Đấng tôi ca ngợi.
  Bởi Ngài là Đấng cứu độ,
  là Thượng Để Của tôi.
  
  tôi
  là Thượng Đế của tôi.
}

loiDiepKhucBas = \lyricmode {
  Sao băn khoăn ưu phiền,
  sao ưu phiền hồn ơi
  hồn hỡi ơi than van chi hoài.
  Hãy cậy trông Thiên Chúa Đấng tôi ca ngợi.
  Bởi Ngài là Đấng cứu độ của tôi.
  
  tôi
  là Thượng Đế của tôi.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Chúa là nơi con nương nhờ
  sao Ngài nỡ xua đuổi con.
  Để con lang thang tiều tụy
  khiến quân thù đàn áp khôn thôi.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Chiếu dọi quang vinh huy hoàng
  soi đường bước con thẳng ngay.
  Dìu con lên nơi đền vàng
  dẫn con về đỉnh nói cao quang.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Chúa dìu con đi bên Ngài
  lên bàn thánh vui triền miên.
  Dọa lên cung tơ diệu huyền
  tán dương Ngài là Chúa con luôn.
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
      \new Voice = "beSop" { \clef treble \TongNhip \nhacDiepKhucSop }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" { \clef treble \TongNhip \nhacDiepKhucAlto }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
      \new Voice = "beTenor" { \clef "violin_8" \TongNhip \nhacDiepKhucTenor }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
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
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice = "beSop" { \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucBas } }
        \new NullVoice = nhacThamChieuPhienKhucSop \nhacPhienKhucSop
        \new Lyrics \with {
          \override VerticalAxisGroup.
            nonstaff-relatedstaff-spacing.padding = #1.5
        }
        \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopHai
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopBa
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
