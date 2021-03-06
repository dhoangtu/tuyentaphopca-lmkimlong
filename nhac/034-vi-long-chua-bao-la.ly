% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vì Lòng Chúa Bao La" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacDiepKhucSop = \relative c' {
  \partial 8 r8 \bar ".|"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  R2*8
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
  bf ~ |
  bf8 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \partial 8 r8
  R2*8
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
  d ~ |
  d8
}

nhacDiepKhucBas = \relative c {
  \partial 8 f8 |
  bf4 \tuplet 3/2 { f8 f ef } |
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
  bf ~ |
  bf8
}

nhacPhienKhucSop = \relative c'' {
  \partial 4. r8 r4 |
  r2
  r \break
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
  \bar "||"
}

nhacPhienKhucAlto = \relative c' {
  \partial 4. r8 r4 |
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
  \partial 4. d'8 \autoBeamOn d8. bf16 |
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
  Gọi hoa muôn sắc trên nương đồi
  Gọi bao cơn sóng giữa biển khơi cùng về đây
  kết lời hòa khúc tân ca,
  tung hô Chúa Trời,
  vì lòng Chúa thiết tha,
  mến thương ta bao la.
}

loiPhienKhucSopMot = \lyrics {
  \set stanza = "1."
  Cho tôi nương thân cánh tay Ngài
  vui sống hôm mai,
  Từng giây canh coi
  tựa con ngươi trong mắt của Ngài,
  Dắt dìu hoài,
  sánh bước kề vai.
}

loiPhienKhucSopHai = \lyrics {
  \set stanza = "2."
  Cho tim tôi mơ ước quê trời tha thiết khôn ngơi,
  Tựa con thơ ngoan nằm trong tay thân mẫu diệu vợi,
  Thắm nụ cười, tính thác nghỉ ngơi.
}

loiPhienKhucSopBa = \lyrics {
  \set stanza = "3."
  Ươm thơ mau lên ý tuôn trào
  vươn lút trăng sao,
  Để tôi cao rao lòng yêu thương Thiên Chúa dạt dào,
  Lắng hồn vào
  thắm thiết dường bao.
}

loiDiepKhucBas = \lyrics {
  Tôi nắn cung tơ tuyệt vời
  gọi nắng rực rỡ ban mai,
  Gom mây bàng bạc khắp trời
  và gọi gió lãng du mọi nơi
  muôn mầu trên sườn đồi
  cơn sóng giữa biển khơi
  cùng về đây hiệp lời hòa khúc tân ca
  tung hô Vua Trời,
  bởi lòng Ngài thiết tha,
  mến thương ta bao la.
}

loiPhienKhucBasMot = \lyrics {
  \set stanza = "1."
  Chính Chúa dệt tôi nên hình hài
  từ khi nghén thai
  vui buồn hôm mai,
  Từng giây canh coi tựa con ngươi trong mắt của Ngài,
  Dắt dìu hoài
  sánh bước sát vai.
  Tôi
}

loiPhienKhucBasHai = \lyrics {
  \set stanza = "2."
  Có Chúa cùng đi trong cuộc đời
  duổi dong khắp nơi
  xa miệt khôn ngơi.
  Tựa con thơ ngoan nằm trong tay thân mẫu diệu vợi
  Đặm nụ cười,
  tín thác nghỉ ngơi.
  Tôi
}

loiPhienKhucBasBa = \lyrics {
  \set stanza = "3."
  Khúc hát tình yêu ôi ngọt ngào,
  này tôi cất cao vươn lụt trăng sao,
  Để tôi cao rao lòng yêu thương Thiên Chúa dạt dào,
  Lặng hồn vào
  thắm thiết dường bao.
  Tôi
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
  page-count = 2
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
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \new Voice = "beBas" {
          \clef bass \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics \lyricsto beBas \loiDiepKhucBas
      >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}

\markup { \vspace #1 }

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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
