% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bài Tình Ca" }
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \partial 4 r4
  r4. a8 |
  bf8. a16 g8 a |
  a2 ~ |
  a4 r8 g |
  a8. f16 d8 e |
  e4 r8 e' |
  f8. e16 f8 e |
  d bf r d |
  e8. d16 e8 d |
  bf a r d, |
  d8. a16 d8 (f) |
  g4 r8 e' |
  f f4 e8 |
  e4 r8 d |
  e cs4 cs8 |
}

nhacPhienKhucAltoMot = \relative c' {
  \partial 4 r4
  r4. f8 |
  g8. f16 e8 f |
  f2 ~ |
  f4 r8 e |
  f8. d16 d8 d |
  cs4 r8 a' |
  a8. cs16 d8 a |
  f g r bf |
  a8. bf16 a8 f |
  g f r d |
  d8. a16 d8 _(c) |
  d4 r8 a' |
  a a4 g8 |
  a4 r8 a |
  bf a4 g8
}

nhacPhienKhucBasMot = \relative c' {
  \partial 4 a8 a |
  d2 ~ |
  d4 r |
  r d,8 d |
  g2 ~ |
  g4 bf8 (g) |
  a8. a16 a8 a |
  d,4 r8 a' |
  d8. d16 d8 d |
  cs4 r8 d |
  g,8. g16 g8 g |
  f8. f16 f4 |
  bf r8 a |
  d d4 d8 |
  cs4 r8 d |
  g, a4 <a a,>8 |
}

nhacPhienKhucSopHai = \relative c'' {
  \set Score.currentBarNumber = #16
  \bar ""
  <d \tweak font-size #-2 fs,>2 ~ \bar "|."
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  <d \tweak font-size #-2 fs,>4
  \afterGrace d8 ({\once \stemDown e8)} b |
  a4. a8 |
  fs8 (g) a fs |
  e2 ~ |
  e4 d8 (e) |
  a8 a4 b8 |
  a4 a8 (b) |
  d8 d4 e8 |
  d4 \afterGrace d8 ({e)} b |
  a4. a8 |
  fs' fs fs g16 (fs) |
  e2 ~ |
  e4 r8 e |
  cs8. d16 e8 d |
  b b r b |
  gs fs e b' |
  a2 ~ \bar "||"
  
  \set Staff.printKeyCancellation = ##f
  \key f \major
  a4 r |
  r2
  r4. <f' \tweak font-size #-2 d>8
}

nhacPhienKhucAltoHai = \relative c'' {
  r2
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  r2
  cs2 |
  d2 ~ |
  d4 e8 d |
  cs4 r |
  r d8 e |
  d4 r |
  r b8 b |
  a4 r |
  r8 cs cs cs |
  d4. a8 |
  b4 bf8 bf |
  a4 r |
  r a8 a |
  g g r b |
  b b b d |
  cs2 ~ \bar "||"
  
  \key f \major
  cs4 r |
  r2
  r
}

nhacPhienKhucTenorHai = \relative c' {
  r2
  
  \key d \major
  r2
  e |
  d4 fs8 a |
  b4 b8 b |
  a4 r |
  r fs8 g |
  fs4 r |
  r d8 cs |
  d4 r |
  r8 e e e |
  fs4. e8 |
  d4 e8 d |
  cs4 r |
  r e8 fs |
  e e r fs |
  e ds e f! |
  e2 ~
  
  \key f \major
  e4 r |
  r2
  r
}

nhacPhienKhucBasHai = \relative c' {
  <a d,>2 ~ \bar "|."
  
  \set Staff.printKeyCancellation = ##f
  \key d \major
  <a d,>4 r |
  a2 |
  b4 a |
  g gs8 gs |
  a4 r |
  r d8 cs |
  d4 r |
  r g,8 g |
  fs4 r |
  r8 a a a |
  d,4. fs8 |
  g4 g8 g |
  a4 r |
  r cs,8 d |
  e e r ds |
  e fs gs e |
  a2 ~ \bar "||"
  
  \key f \major
  a4 d,8 d16 d |
  fs8 e d a' |
  a2 ^( <> )
}

nhacPhienKhucSopBa = \relative c'' {
  \set Score.currentBarNumber = #37
  \bar "||"
  f8. e16 f8 e |
  d4 r8 e |
  cs8. cs16 d8 d |
  bf a4. ~ |
  a4 r |
  r4. e8 |
  g g f (g) |
  a4. bf16 (a) |
  g8 (a) d (cs) |
  d2 |
  r8 cs4 e8 |
  a, b! fs a |
  e4 e8 d' ~ |
  d4. bf8 ~ |
  bf gs4 gs8 |
  a2 ~ |
  a4 r \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacPhienKhucAltoBa = \relative c'' {
  d8. a16 a8 g |
  f4 r8 bf |
  a8. a16 f8 f |
  g f4. ~ |
  f4 r |
  r4. e8 |
  d d d4 |
  cs4. d8 |
  e4. g8 |
  fs2 |
  r8 \skip 4.
  \skip 2
  \skip 4 e8 fs ~ |
  fs4. f!8 ~ |
  f e4 d8 |
  cs2 ~ |
  cs4 r
}

nhacPhienKhucBasBa = \relative c {
  a4 r8 cs |
  d8. d16 d8 g |
  a4 r |
  r d,8 d16 d |
  f8 e d bf' |
  bf2 ~ |
  bf4 r8 bf |
  a a g f |
  e4 a, |
  d2 |
  r8 a'4 gs8 |
  fs e d d |
  cs4 cs8 b! ~ |
  b!4. d8 ( |
  d) e4 e8 |
  a2 ~ |
  a4 r \bar "||"
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  Tôi viết cho người tôi yêu.
  Tôi hát cho người yêu tôi.
  Tôi muốn rung phím tơ muôn điệu.
  Tôi muốn ươm ý thơ tuyệt diệu dệt thành bài tình ca.
  Vang thấu khắp không gian
  kiên vững cùng thời
}

loiPhienKhucBasMot = \lyrics {
  Bài tình ca.
  Bài tình ca của tôi xin dâng cho Người.
  Đàn tôi xin rung muôn điệu.
  Ý thơ xin ươm dệt thành bài tình ca.
  Vang thấu khắp không gian
  kiên vững cùng thời
}

loiPhienKhucSopHai = \lyrics {
  gian.
  \set stanza = "Solo:"
  Nhớ năm xưa trong lạnh giá đêm trường.
  Người Yêu tôi giáng sinh và lên Ngôi Cứu Tinh.
  Bóng đau thương từ bao năm qua vấn vương.
  Xóa mờ trong ánh quang hòa bình
  đó đây chan hòa phúc vinh.
  Thánh
}

loiPhienKhucAltoHai = \lyrics {
  \set stanza = "CORO:"
  Hm __ _ Giữa đêm trường.
  Đã giáng sinh.
  Đấng Cứu Tinh.
  Miệt mài ngàn năm
  sầu thương những vấn vương.
  Ánh quan hòa bình
  đó đây chan hòa phúc vinh.
}

loiPhienKhucBasHai = \lyrics {
  gian. Hm __ _ _ _ Giữa đêm trường.
  Đã giáng sinh.
  Đấng Cứu Tinh.
  Miệt mài tháng năm
  sầu thương những vấn vương.
  Ánh quang hòa bình
  đó đây chan hòa phúc vinh.
  Rồi một chiều nao trên dồi Can -- vê.
}

loiPhienKhucSopBa = \lyrics {
  giá cao ngất thương đau
  máu hồng từ châu thân chảy trào.
  Người Yêu tôi tự hiến
  chết vì yêu tôi.
  Không có Tình Yêu nào vĩ đại bằng chết cho người mình yêu.
}

loiPhienKhucBasBa = \lyrics {
  _ Thập giá chất ngất sầu thương.
  Ngàn lời cười chê thay dòng nước mắt.
  Hiến thân chết bao ô nhục vì tôi.
  Không có tình yêu nào vĩ đại bằng chết cho người mình yêu.
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
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSopMot
          \notBePhu -2 { \nhacPhienKhucAltoMot }
        \new NullVoice = nhacThamChieuPhienKhucSopMot \nhacPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSopMot \loiPhienKhucSopMot
      >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBasMot
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      } <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacPhienKhucSopHai
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
    >>
    \new Staff   <<
     \new Voice \TongNhip \partCombine 
          \nhacPhienKhucAltoHai
          \notBePhu -2 { \nhacPhienKhucTenorHai }
        \new NullVoice = nhacThamChieuPhienKhucAltoHai \nhacPhienKhucAltoHai
        \new Lyrics \lyricsto nhacThamChieuPhienKhucAltoHai \loiPhienKhucAltoHai
      >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBasHai
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasHai
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  } 
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSopBa
          \notBePhu -2 { \nhacPhienKhucAltoBa }
        \new NullVoice = nhacThamChieuPhienKhucSopBa \nhacPhienKhucSopBa
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSopBa \loiPhienKhucSopBa
      >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBasBa
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #0.6
  } 
}
