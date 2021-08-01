% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vì Lòng Chúa Bao La" }
  composer = " "
  %arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacDiepKhucSop = \relative c' {
  \partial 8 r8 \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  r2
  r
  r
  r
  r
  r
  r
  r
  r8 f bf bf |
  d8. bf16 a8 g |
  r g c c |
  ef8. d16 bf8 <c a> ~ |
  <c a> a16 a bf4 ~ |
  bf8 bf16 bf c8 c |
  f,4 f8. bf16 |
  a8 a ~ a4 |
  g8 g4 bf8 |
  f4. d8 |
  d ef4 g8 |
  f4. c'16 bf |
  bf8 (a4) a8 |
  bf2 ~ |
  bf ^(<>)
}

nhacDiepKhucAlto = \relative c' {
  \partial 8 r8
  r2
  r
  r
  r
  r
  r
  r
  r
  r8 f d g |
  fs8. g16 d8 bf |
  r f' ef ef |
  f8. f16 d8 f ~ |
  f4 r8 f16 f |
  g4. c,16 (bf) |
  a4 bf8. d16 |
  g8 fs ~ fs4 |
  d8 bf4 ef8 |
  c4. bf8 |
  bf bf4 a8 |
  bf4. a16 bf |
  ef4. ef8 |
  d2 ~ |
  d2 _(<>)
}

nhacDiepKhucBas = \relative c {
  \partial 8 d8 |
  bf'4 \tuplet 3/2 { f8 f ef } |
  d4. bf8 |
  <g' ef>4 \tuplet 3/2 { <ef c>8 <bf' d,> <g ef> } |
  <f d>4. <bf d,>8 |
  <bf g>4 \tuplet 3/2 { <a fs>8 <a fs> <d f,!> } |
  <g, ef>4. f16 f |
  <d' bf>4 \tuplet 3/2 { <ef c>8 <d bf> <bf g> } |
  <c f,>2 ~ |
  <c f,>4 r8 bf |
  a8. g16 fs8 g |
  r4 r8 c |
  bf8. bf16 bf8 f ~ |
  f4 r8 d16 d |
  ef4. e!8 |
  f4 d8. g16 |
  c,8 d ~ d4 |
  bf8 g'4 g8 |
  a4. bf8 |
  g8 g4 ef8 |
  d4. ef16 d |
  c4. f8 |
  bf,2 ~ |
  bf (<>) |
}

nhacPhienKhucSop = \relative c'' {
  bf8
  ^\tweak control-points #'((-2 . 3) (-1 . 3.1) (0 . 3.2) (1 . 2.4)) ( <> )
  r r4 |
  r2
  r
  r8 bf bf8. bf16 |
  bf8 d bf a ~ |
  a a bf a |
  g4 r8 bf,8 |
  ef8. ef16 ef8 d |
  g8. g16 g8 bf |
  f f r c' |
  a a r d |
  d bf c4 ~ |
  c r
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  d8
  ^\tweak control-points #'((-2 . 3) (-1 . 3.1) (0 . 3.2) (1 . 2.4)) ( <> )
  r r4 |
  r2
  r
  r8 d d8. d16 |
  d8 f d c ~ |
  c c c f |
  ef4 r8 bf |
  ef8. ef16 ef8 d |
  d8. d16 ef8 c |
  bf bf r g' |
  fs fs r fs |
  g g a4 ~ |
  a r
}

nhacPhienKhucBas = \relative c {
  \autoBeamOff bf8
  \once \override NoteColumn.X-offset = 3
  d' \autoBeamOn d8. bf16 |
  c8 c f, f ~ |
  f d ef g |
  f2 ~ |
  f ~ |
  f8 f bf, d |
  ef4 r8 bf |
  ef8. ef16 ef8 d |
  bf8. bf16 ef8 ef |
  d d r c |
  d d r c |
  bf g' f4 ~ |
  f r8 f8
}

% Lời
loiDiepKhucSop = \lyrics {
  Gọi hoa muôn sắc trên nương đồi
  Gọi bao cơn sóng giữa biển khơi cùng về đây
  cùng về đây kết lời hòa khúc tân ca,
  tung hô Chúa Trời,
  vì lòng Chúa thiết tha,
  mến thương ta bao la.
}

loiDiepKhucAlto = \lyrics {
  \override LyricText.font-shape = #'italic
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ 
  cùng về đây
}

loiPhienKhucSopMot = \lyrics {
  _
  \set stanza = "1."
  Cho tôi nương thân cánh tay Ngài
  vui sống hôm mai
  Từng giây canh coi
  tựa con ngươi trong mắt của Ngài,
  dắt dìu hoài,
  sánh bước kề vai.
}

loiPhienKhucSopHai = \lyrics {
  _
  \set stanza = "2."
  Cho tim tôi mơ ước quê Trời tha thiết khôn ngơi
  Tựa con thơ ngoan nằm trong tay thân mẫu diệu vợi,
  thắm nụ cười, tính thác nghỉ ngơi.
}

loiPhienKhucSopBa = \lyrics {
  _
  \set stanza = "3."
  Ươm thơ mau lên ý tuôn trào
  vươn lút trăng sao
  Để tôi cao rao lòng yêu thương Thiên Chúa dạt dào,
  lắng hồn vào, thắm thiết dường bao.
}

loiDiepKhucBas = \lyrics {
  Tôi nắn cung tơ tuyệt vời
  Gọi nắng rực rỡ ban mai,
  gom mây bàng bạc khắp trời.
  Và gọi gió lãng du mọi nơi
  muôn mầu trên ruộng đồi
  cơn sóng giữa biển khơi
  cùng về đây hiệp lời hòa khúc tân ca,
  tung hô Chúa Trời,
  bời lòng Ngài thiết tha,
  mến thương ta bao la.
}

loiPhienKhucBasMot = \lyrics {
  _
  \set stanza = "1."
  Chính Chúa dệt tôi nên hình hài
  từ khi nghén thai
  vui buồn hôm mai
  Từng giây canh coi tựa con ngươi trong mắt của Ngài,
  dắt dìu hoài, sánh bước sát vai. Tôi...
}

loiPhienKhucBasHai = \lyrics {
  _
  \set stanza = "2."
  Có Chúa cùng đi trong cuộc đời
  duổi dong khắp nơi
  xa miệt khôn ngơi
  Tựa con thơ ngoan nằm trong tay thân mẫu diệu vợi,
  đặm nụ cười,
  tín thác nghỉ ngơi. Tôi...
}

loiPhienKhucBasBa = \lyrics {
  _
  \set stanza = "3."
  Khúc hát tình yêu ôi ngọt ngào,
  này tôi cất cao vươn lụt trăng sao
  Để tôi cao rao lòng yêu thương Thiên Chúa dạt dào,
lặng hồn vào, thắm thiết biết bao. Tôi...
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 20\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
}

TongNhip = {
  \key bf \major \time 2/4
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine
            \nhacDiepKhucSop
            \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = nhacThamChieuDiepKhucSop \nhacDiepKhucSop
      \new Lyrics \lyricsto nhacThamChieuDiepKhucSop \loiDiepKhucSop
      \new NullVoice = nhacThamChieuDiepKhucAlto \nhacDiepKhucAlto
      \new Lyrics \lyricsto nhacThamChieuDiepKhucAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \new Voice = "beBas" {
          \clef bass \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics \lyricsto beBas \loiDiepKhucBas
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine
            \nhacPhienKhucSop
            \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = nhacThamChieuPhienKhucSop \nhacPhienKhucSop
      \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopBa
    >>
    \new Staff <<
        \new Voice = "beBas" {
          \clef bass \TongNhip \nhacPhienKhucBas
        }
        \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
        \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
        \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
