% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Noel Về" }
  composer = "Thơ: Xuân Thu"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
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
  e8. c16 d8 d |
  d b4. |
  R2
  r4. e,16 (f) |
  g8. g16 d'8 c |
  r4 f8 ^> e |
  r d16 (e) c8 ^> c |
  f4 f8 ^> d |
  r8 g,^_ a^_ b^_ |
  \set Score.repeatCommands = #'((volta "1") end-repeat)
  c2 ~ |
  c4 r8 c |
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  c2 ~ |
  \set Score.repeatCommands = #'((volta #f))
  
  \time 6/8
  c4. r4. |
  r4. g4 g8 |
  a4. ~ a4 r8 |
  r4 g8 e'8. d16 c8 |
  d4. ~ d4 c8 |
  g4. d8 f16 (e) c8 \bar "||"
  
  \time 2/4
  c2 ~ |
  c4 c8 e |
  d f g8. g16 |
  g4 g8 g |
  g c b8. (c16) |
  d2 ~ |
  d8 a16 (b) g8 g |
  d'4 c8 (b) |
  c4 r8 c |
  b4. a16 a |
  g2 |
  r8 d b d |
  a'4. g16 (fs) |
  g2 ~ |
  
  \key g \major
  g4 r |
  r a8 a |
  fs g4 a8 |
  b4 r |
  r8 d ^> g, ^> r |
  b ^> a r fs ^> |
  g2 ~ |
  g4 r
  R2*3
  c8. b16 c8 d |
  e e4. |
  c8. a16 a8 fs |
  d' d4. ~ |
  d4 r |
  r8 d ^> g, ^> r |
  b ^> a ^> r fs ^> |
  g2 ~ |
  g ~ |
  g4 \bar "||"
  d'8. d16 |
  d2 ~ |
  d ~ |
  d4 g,8. a16 |
  a2 ~ |
  a ~ |
  a4 r8 a |
  g2 |
  d8 f! (g) b, \bar "||"
  
  \key c \major
  c2 ~ |
  c4 e8 d |
  e f a8. g16 |
  g4 c8 b |
  a g d'8. d16 |
  e2 |
  r8 f e d |
  g2 |
  r8 d (e) d |
  c4 r8 c |
  b4. a16 a |
  g2 |
  r8 g e g |
  d'4. c16 (b) |
  c2 ~ |
  c4 r8 a |
  a2 |
  g4 r8 b |
  c2 |
  d ~ |
  d4 g8 e |
  r b16 (d) b8 ^> b ^> |
  f'4 f8 d |
  r b16 (d) g,8 g |
  c4 r8 a |
  a4 b8. b16 |
  g8 g4. |
  R2
  r4. d'8 |
  d8. e16 c8 d |
  d b4. |
  R2
  r4. e,16 (f) |
  g8. ^> g16 d'8 ^> c |
  r4 g'8 e |
  r d16 (e) c8 ^> c ^> |
  f4 f8 ^> d |
  r g, ^_ a^_ b ^_ |
  c2 ~ |
  c4 \bar "|."
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
  r4. b'8 |
  c8. a16 g8 g |
  fs g4. |
  R2
  r4. e16 (f) |
  g8. g16 f8 e |
  r4 d'8 c |
  r b g g |
  a4 a8 ^> f |
  r8 g ^_ f ^_ f ^_ |
  e2 ~ |
  e4 r8 r |
  e2 ~ |
  
  \time 6/8
  <<
    {
      \voiceOne e4. 
    }
    \new Voice = "splitpart" \notBePhu -2 {
	    \voiceTwo
      c8. c16 a8
    }
  >>
  \oneVoice
  r4. |
  r4. e'4 e8 |
  c4. (c4) r8 |
  r4 g'8 c8. b16 a8 |
  b4. ~ b4 c8 \bar ".|:"
  g4. d8 f16 (e) c8 |
  
  \time 2/4
  c2 ~ |
  c4 c8 e |
  d f e8. e16 |
  d4 d8 d |
  c g' g4 |
  fs2 ~ |
  f8 f g g |
  f4 e8 (d) |
  e4 r8 c' \bar ":|."
  b4. a16 a |
  g2 |
  r8 d b d |
  e4. c8 |
  b2 ~ \bar "||"
  
  \key g \major
  b4 g'8 g |
  e4 c8 cs |
  d b4 d8 |
  g4 r |
  r8 d8 d r |
  b'8 ^> a r d, ^> |
  d2 ~ |
  d4 r |
  R2*3
  a'8. g16 a8 b |
  c c4. |
  a8. fs16 e8 ef |
  d d4. ~ |
  d4 r |
  r8 d d r |
  b' ^> a ^> r d, ^> |
  d2 |
  g8 e4 e8 |
  d4 r |
  r a'8 a |
  r8 g4 a8 |
  b4 r |
  R2
  e8 g4 e8 |
  d4 r8 a |
  g2 |
  d8 f! (g) d |
  
  \key c \major
  c2 ~ |
  c4 e8 d |
  e d c8. c16 |
  b4 c8 g' |
  f d a'8. a16 |
  gs2 |
  r8 a8 c c |
  b2 |
  r8 b4 b8 |
  g4 r8 c |
  b4. a16 a |
  g2 |
  r8 g e g |
  a4 d,8 (f) |
  e2 ~ |
  e4 r |
  r f8 f |
  d4 r |
  r g8 g |
  fs g4 a8 |
  b4 r |
  r8 b g g |
  a4 a8 f |r8 d d d |
  e4. f8 |
  f4 g8. g16 |
  e8 e4. |
  R2
  r4. b'8 |
  b8. c16 a8 g |
  fs g4. |
  R2
  r4. e16 (f) |
  g8. ^> g16 f8 ^> e |
  r4 d'8 c |
  r b g ^> g ^> |
  a4 a8 ^> f |
  r g ^_ f ^_ f ^_ |
  e2 ~ |
  e4
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
  R2
  r4. g8 |
  \slashedGrace { \once \stemDown d' ^( } e8.) e,16 g8 b |
  d c4. |
  r8 b b c |
  a8. a16 b8 ^> c |
  r g16 (f) e8 ^> e |
  d4 d8 ^> f |
  r e ^_ d ^_ g ^_ |
  <g c,>2 ~ |
  <g c,>4 r
  
  <g c,>2 ~ |
  \time 6/8
  <g c,>4. b4 b8 |
  b4. e,4 e8 |
  f4. d4 g8 |
  g2. ~ |
  g4. ~ g4 c8 |
  g4. d8 f16 (e) c8 |
  
  \time 2/4
  c2 ~ |
  c4 c8 e |
  \oneVoice
  <<
    {
      f8 a c8. c16 |
      b4 b8 b |
      g g g4 |
      a2 ~ |
      a8 c b c |
      a4 g |
      g
    }
    {
      d8 f c8. c16 |
      g'4 g8 g |
      e e e4 |
      d2 ~ |
      d8 d e e |
      d4 g |
      c,
    }
  >>
  r8 c' |
  b4. a16 a |
  g2 |
  r8 d b d |
  c4. d8 |
  <g g,>2 ~ |
  
  \key g \major
  <g g,>4 r |
  c8 c a4 ~ |
  a8 g e fs |
  g4 c8 a |
  r8
  <<
    {
      c ^> b ^> r |
      r4. c8 ^> |
      b2
    }
    {
      fs8 g r |
      r4. d8 |
      g2
    }
  >>
  g8. g16 g8 e |
  e4. d8 |
  b c4 g'8 |
  a2 ~ |
  a |
  r8 a a, a |
  d4 r |
  r8 b' a g |
  fs4 c8 b |
  r
  <<
    {
      c'8 ^> b ^> r |
      r4. c8
    }
    {
      fs,8 g r |
      r4. d8
    }
  >>
  <<
    {
      \voiceOne
      b'2 |
      e8 c4 c8 |
      b4
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      g2 ~ |
      g ~ |
      g4
    }
  >>
  \oneVoice
  r4 |
  r fs8 fs |
  r8 b,4 d8 |
  g4 r |
  R2
  <a c,>8 <a c,>4 <g cs,>8 |
  <fs d>4 r8 a |
  g2 |
  d8 f! (g) b, |
  
  \key c \major
  c2 ~ |
  c4 c8 b |
  c c f8. f16 |
  g4 a8 e |
  f g f8. f16 |
  e2 |
  r8 d a' af |
  g2 |
  r8 g4 f8 |
  e4 r8 c' |
  b4. a16 a |
  g2 |
  r8 g e g |
  f4 g |
  c,2 ~ |
  c4 r |
  r
  <<
    {
      d'8 c |
      b4 r |
      r c8 c a g4 fs8
    }
    {
      d8 d |
      g4 r |
      r e8 e |
      d b4 d8
    }
  >>
  g4 r |
  r8 g16 (f) e8 ^> e ^> |
  d4 d8 f |
  r g g g |
  <g c,>4 r |
  R2
  r4. g8 |
  d4 f8. a16 |
  a8 g4. ~ |
  g4 r |
  r4. d'8 |
  e8. e,16 g8 b |
  d c4. |
  r8 b b ^> c |
  a8. ^> a16 b8 c |
  r g16 (f) e8 ^> e ^> |
  d4 d8 ^> f |
  r e ^_ d ^_ g ^_ |
  <g c,>2 ~ |
  <g c,>4
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
  Hát cho đời lên vui tươi.
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
  No -- el về! No -- el về nguồn vui tới.
  Hỡi người! Đứng lên người ơi!
  Nghe niềm vui trong ánh mắt.
  Nghe lời mừng dội bên tai.
  Hỡi ngời hát cho mọi nơi.
  Hát cho muôn người.
  Tôi vui
  người người vui.
  Ngài thương mọi người.
  Chúa ơi! Ngài đã làm người.
  Nâng dậy hòa bình khắp muôn nơi.
  Biến đổi con người đang suy thoái.
  Hóa nên người mới xứng danh người.
  Chúa ơi! Con yêu Ngài
  một nụ hồng nở trên môi.
  No -- el về
  No -- el về nguồn vui tới.
  hỡi người người ơi!
  Đứng lên hỡi người người ơi!
  Hôm nay Chúa đã làm người.
  Hôm nay khắp mọi nơi nhân trần.
  Nào mau mau hát lên
  hát lên hỡi người người ơi!
  Hát cho đời lên vui tươi.
}

loiPhienKhucAltoHai = \lyrics {
  \repeat unfold 20 { _ }
  \set stanza = " 2."
  Những người cha luôn ưu phiền.
  Ôi những người anh đang lo buồn.
  \repeat unfold 32 { _ }
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
  Mau  mau hãy hòa lời ca lên hỡi người, hỡi người.
  Để cho hồn lên chơi vơi.
  vơi.
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
  Mau mau lên hòa lời ca lên hỡi ơi hỡi người.
  Để cho đời rền sướng vui.
}

loiPhienKhucBasHai = \lyrics {
  \repeat unfold 35 { _ }
  \set stanza = "2."
  Và những người mẹ thao thức liên.
  Cùng những người chị đang héo hon.
  \repeat unfold 33 { _ }
  \set stanza = "2."
  Tình thương rầy trổ hoa xinh tươi.
  Người người gặp nhau niềm nở.
  Thắm đẹp tình nghĩa anh em. Chúa...
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 15\mm
  left-margin = 20\mm
  right-margin = 20\mm
  indent = #0
  #(define fonts
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  page-count = 6
  %systems-per-page = 4
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
