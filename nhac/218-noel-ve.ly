% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Noel Về" }
  composer = "Thơ: Xuân Thu"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \partial 4 r4 |
  <g' d b>8 ^> <e c a> ^> r4 |
  r <f c f,>8 ^> <d g, f> ^> |
  r8 <g, e> <d' a f> <b g f> |
  <c g e>4  r8
  
  \partial 8 c8 \bar ".|:"
  c2 |
  b4 r8 c |
  d2 |
  e ~ |
  e4 g8 ^> e |
  r8 d16 (e) c8 ^> c ^> |
  f4 f8 ^> d |
  r d16 (f) g,8 ^> g |
  c2 | \break
  c8. a16 b8 b |
  b g4. |
  R2
  r4. d'8 |
  
}

nhacPhienKhucAlto = \relative c' {
  r4
  R2*3
  r4 r
  r4 e8 e |
  d4 r |
  r a'8 b |
  c2 |
  g8. g16 d'8 c |
  r b g g |
  a4 a8 f |
  r d d d |
  e2 |
  e8. c16 g'8 g |
  d e4. |
  R2
  r4. b8 |
  
}

nhacPhienKhucBas = \relative c' {
  g8. g16 |
  g8 ^> a ^> r c |
  a8. a16 <a a,>8 ^> <b b,> ^> |
  r <c c,> <f, f,> <g g,> |
  <c, c,>4 r |
  r c'8 c |
  g4 r |
  r f8 g |
  c,8. c16 e8 g |
  c4 b8 ^> c |
  r8 g16 (f) e8 ^> e |
  d4 d8 ^> f |
  r g g ^> g |
  c,2 |
  R2
  r4. c8 |
  a'8. d,16 d8 f |
  a g4. |
  
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  \repeat unfold 8 { _ }
  No -- el về nguồn vui tới.
  Đứng lên hỡi người người ơi!
  Đứng lên hỡi người người ơi!
  \set stanza = " 1."
  Những đầu xanh đang mơ mộng,
  Ôi những tuổi hoa ưa ui nhộn.
  \set stanza = "1-2."
  Nào mau cùng hát lên hát lên hỡi người người ơi!
  Hát cho hồn lên chơi vơi.
  No...
  vơi.
  Người người vui.
  Ngài đã thương mọi người.
  Chúa ơi! Ngài đã làm người.
  \set stanza = "1."
  Niềm hy vọng bừng lên nơi nơi.
  Đời muộn phiền không còn nữa.
  Chỉ còn là khúc ca vui.
  Chúa...
  ơi! Con tin Ngài.
  Một nụ hồng nở trên môi.
  No -- el về nguồn vui tới.
  Hỡi người! Đứng lên người ơi!
  Nghe niềm vui trong ánh mắt.
  Nghe lời mừng dội bên tai.
  Hỡi ngời hát cho mọi nơi.
  Ôi tôi vui
  Ngài thương tôi
  Chúa ơi! Ngài đã làm người.
  Nâng dậy hòa bình khắp muôn nơi.
  Biến đổi con người đang suy thoái.
  Hóa nên người mới xứng danh người.
  Chúa ơi! Con yêu Ngài
  một nụ hồng nở trên môi.
  No -- el về nguồn vui tới.
  Đứng lên hỡi người người ơi!
  Đứng lên hỡi người người ơi!
  Hôm nay Chúa đã làm người.
  Hôm nay khắp mọi nơi nhân trần.
  Nào mau mau hát lên
  hát lên hỡi người người ơi!
  Hát cho đời lên chơi vơi.
}

loiPhienKhucSopHai = \lyrics {
  \repeat unfold 26 { _ }
  \set stanza = " 2."
  Những người cha luôn ưu phiền.
  Ôi những người anh đang lo buồn.
  \repeat unfold 33 { _ }
  \set stanza = "2."
  Tình thương rầy trổ hoa xinh tươi.
  Người người gặp nhau niềm nở.
  Thắm đẹp tình nghĩa anh em. Chúa...  
}

loiPhienKhucAltoMot = \lyrics {
  No -- el về nguồn vui tới.
  Nào cùng đứng lên hỡi người người ơi!
  Đứng lên hỡi người người ơi!
  \set stanza = " 1."
  Những đầu xanh đang mơ mộng,
  Ôi những tuổi hoa ưa ui nhộn.
  \set stanza = "1-2."
  Nào mau cùng hát lên hát lên hỡi người người ơi!
  Hát cho hồn lên chơi vơi.
  No...
  vơi.
  Người người vui.
  Ngài đã thương mọi người.
  Chúa ơi! Ngài đã làm người.
  \set stanza = "1."
  Niềm hy vọng bừng lên nơi nơi.
  Đời muộn phiền không còn nữa.
  Chỉ còn là khúc ca vui.
  Chúa...
  ơi! Con tin Ngài.
  Một nụ hồng nở trên môi.
  No -- el về nguồn vui tới.
  Hỡi người! Đứng lên người ơi!
  Nghe niềm vui trong ánh mắt.
  Nghe lời mừng dội bên tai.
  Hỡi ngời hát cho mọi nơi.
  Ôi tôi vui
  Ngài thương tôi
  Chúa ơi! Ngài đã làm người.
  Nâng dậy hòa bình khắp muôn nơi.
  Biến đổi con người đang suy thoái.
  Hóa nên người mới xứng danh người.
  Chúa ơi! Con yêu Ngài
  một nụ hồng nở trên môi.
  No -- el về nguồn vui tới.
  Đứng lên hỡi người người ơi!
  Đứng lên hỡi người người ơi!
  Hôm nay Chúa đã làm người.
  Hôm nay khắp mọi nơi nhân trần.
  Nào mau mau hát lên
  hát lên hỡi người người ơi!
  Hát cho đời lên chơi vơi.
}

loiPhienKhucAltoHai = \lyrics {
  \repeat unfold 20 { _ }
  \set stanza = " 2."
  Những người cha luôn ưu phiền.
  Ôi những người anh đang lo buồn.
  \repeat unfold 33 { _ }
  \set stanza = "2."
  Tình thương rầy trổ hoa xinh tươi.
  Người người gặp nhau niềm nở.
  Thắm đẹp tình nghĩa anh em. Chúa...  
}

loiPhienKhucBasMot = \lyrics {
  \repeat unfold 13 { _ }
  No -- el về nguồn vui hỡi là nguồn vui tới.
  Vùng lên hỡi người người ơi!
  Vùng lên hỡi người hỡi người.
  \set stanza = "1."
  Và những đầu xanh đang đắn đo.
  Cùng những tuổi già hay lắng lo.
  Mau  mau hã hòa lời ca lên hỡi người, hỡi người.
  Để cho hồn lên chơi vơi.
  Ôi tôi vui người người vui
  Ngài thương tôi.
  Chúa ơi! Ngài đã làm người.
  \set stanza = "1."
  Niềm hy vọng bừng lên nơi nơi.
  Đời muộn phiền không còn nữa.
  Chỉ còn là bài ca vui. Chúa...
  ơi!
  Con tin Nài.
  Một nụ hồng nở trên môi.
  No -- el về đem nguồn vui tới.
  Đứng lên người ơi! Người ơi!
  Nghe con tim rạo rực.
  Nghe nụ cười trên môi.
  Mắt đọng niềm vui.
  Lắng nghe lời mừng hát lên người ơi!
  Mọi nơi. Hát cho muôn người.
  Tôi vui người người vui.
  Ngài thương mọi người Chúa ơi!
  Ngài đã làm người.
  Nâng dậy hòa bình khắp muôn nơi.
  Biến đổi con người đang suy thoái.
  Trở nên người mới xứng danh người.
  Chúa ơi! Con yêu Ngài
  một nụ hồng nở trên môi.
  No -- el về!
  No -- el về nguồn vui tới.
  Hỡi người hỡi người.
  Vùng lên hỡi người hỡi người.
  Ngôi Lời ở giữa chúng tôi.
  Tay bắt mặt mừng vui kết thân.
  Mau mau lên hòa lời ca lên hỡi người hỡi người.
  Để cho đời rền sướng vui.
}

loiPhienKhucBasHai = \lyrics {
  \repeat unfold 35 { _ }
  \set stanza = "2."
  Và những người mẹ thao thức liên.
  Cùng những người chị đang héo hon.
  \repeat unfold 32 { _ }
  \set stanza = "2."
  Tình thương rầy trổ hoa xinh tươi.
  Người người gặp nhau niềm nở.
  Thắm đẹp tình nghĩa anh em. Chúa...
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
  %page-count = 6
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
      \new Voice = "beSop" {
         \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoHai
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1.5
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
