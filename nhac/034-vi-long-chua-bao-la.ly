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
nhacPhienKhucSopMot = \relative c'' {
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  g8. a16 d,8 f |
  g4 g8 bf |
  c4. a16 (g) |
  \slashedGrace {d16 (f} f4) g8 g |
  a2 |
  d8. f16 g,8 bf |
  c4 d,8 f |
  g4 e16 (d) g8 |
  c,4. e8 |
  f2 \bar "|."
  
  r2
  r
  r8 a a bf |
  g4. a8 |
  bf2 |
  c4 d16 (f d c) |
  bf4 c16 (d c bf) |
  g4 e16 (d) g8 |
  b,!4. c8 |
  c2
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacPhienKhucAltoMot = \relative c' {
  \skip 2
  \skip 4 c8 f |
  e4. d8 |
  d4 e8 e |
  f2 ~ |
  f4 r |
  r d8 d |
  e4 c8 d |
  a4 bf |
  a2
  
  r
  r
  r8 f' f g |
  e4. ef8 |
  d2 |
  e4 f8. (e16) |
  d4 e8. (d16) |
  c4 c8 c |
  g4. g8 |
  g2
}

nhacPhienKhucBasMot = \relative c {
  r2
  r8 f e (d) |
  c (g) c c |
  d4 c8 c |
  f8. f16 g8 a |
  bf4 r |
  r8 e, f (d) |
  c (g) c b! |
  c4 c |
  <c f,>2
  
  f4 g16 (a g f) |
  d4 f16 (g f d) |
  c4 c8 g |
  c4 e8 (f) |
  \slashedGrace { \once \stemDown a8 (} g2) ~ |
  g2 ~ |
  g4 r |
  r8 e c e |
  g <d g,> <f g,>4 |
  <e c>2
}

% Lời
loiDiepKhucSopMot = \lyrics {
  Gọi hoa muôn sắc trên nương đồi
  Gọi bao cơn sóng giữa biển khơi cùng về đây
  cùng về đay kết lời hòa khúc tân ca,
  tung hô Chúa Trời,
  vì lòng Chúa thiết tha,
  mến thương ta bao la.
}

loiDiepKhucBasMot = \lyrics {
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

loiPhienKhucSopMot = \lyrics {
  \set stanza = "1."
  Cho tôi nương thân cánh tay Ngài
  vui sống hôm mai
  Từng giây canh coi
  tựa con ngươi trong mắt của Ngài,
  dắt dìu hoài,
  sánh bước kề vai.
}

loiPhienKhucSopHai = \lyrics {
  \set stanza = "2."
  Cho tim tôi mơ ước quê Trời tha thiết khôn ngơi
  Tựa con thơ ngoan nằm trong tay thân mẫu diệu vợi,
  thắm nụ cười, tính thác nghỉ ngơi.
}

loiPhienKhucSopBa = \lyrics {
  \set stanza = "3."
  Ươm thơ mau lên ý tuôn trào
  vươn lút trăng sao
  Để tôi cao rao lòng yêu thương Thiên Chúa dạt dào,
  lắng hồn vào, thắm thiết dường bao.
}

loiPhienKhucBasMot = \lyrics {
  \set stanza = "1."
  Chính Chúa dệt tôi nên hình hài
  từ khi nghén thai
  vui buồn hôm mai
  Từng giây canh coi tựa con ngươi trong mắt của Ngài,
  dắt dìu hoài, sánh bước sát vai. Tôi...
}

loiPhienKhucBasHai = \lyrics {
  \set stanza = "2."
  Có Chúa cùng đi trong cuộc đời
  duổi dong khắp nơi
  xa miệt khôn ngơi
  Tựa con thơ ngoan nằm trong tay thân mẫu diệu vợi,
  đặm nụ cười,
  tín thác nghỉ ngơi. Tôi...
}

loiPhienKhucBasBa = \lyrics {
  \set stanza = "3."
  Khúc hát tình yêu ôi ngọt ngào,
  này tôi cất cao vươn lụt trăng sao
  Để tôi cao rao lòng yêu thương Thiên Chúa dạt dào,
  lặng hồn vào, thắm biết bao. Tôi...
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
  page-count = 1
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine
            \nhacDiepKhucSop
            \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = nhacThamChieuDiepKhucSop \nhacDiepKhucSop
      \new Lyrics \lyricsto nhacThamChieuDiepKhucSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto nhacThamChieuSopMot \loiPhienKhucSopHai
    >>
    \new Staff <<
        \new Voice = "beBas" {
          \clef bass \TongNhip \nhacPhienKhucBasMot
        }
        \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
        \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
