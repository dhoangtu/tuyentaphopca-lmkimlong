% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Như Nước Trong Nguồn" }
  composer = "Lm. Kim Long"
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

nhacIntroSop = \relative c'' {
  \key bf \major \time 2/4
  \partial 4
  <>^\markup { \fontsize #6 \box \bold A }
  r4 \noBreak \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  r4
  \tuplet 3/2 { <ef c g>8 <ef c g> <ef c g> } \noBreak |
  <d bf g>4. <bf g d>8 \noBreak |
  <c g> <c g>
  <<
    {
      \voiceOne d a \noBreak
    }
    \new Voice = "splitpart" {
	    \voiceTwo fs4
    }
  >>
  \oneVoice
  <g d>4 \bar "|"
}

nhacIntroBas = \relative c {
  \key bf \major \time 2/4
  \tuplet 3/2 { g8 bf d } |
  g2 ~ |
  g4 g |
  <a ef>8 <a ef>
  <<
    {
      \voiceOne a8 c
    }
    \new Voice = "splitpart" {
	    \voiceTwo d,4
    }
  >>
  <bf' g>4
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \key bf \major \time 2/4
  \partial 4 \tuplet 3/2 { bf8 bf bf } |
  a4 \tuplet 3/2 { c8 c c } |
  bf2 ~ |
  bf4 r |
  R2
  r4 \tuplet 3/2 { bf8 g bf } |
  a2 ~ |
  a4 \tuplet 3/2 { fs8 g ef } |
  d4 \tuplet 3/2 { bf'8 a bf } |
  c4. cs8 |
  d4 \tuplet 3/2 { d8 bf f } |
  g2 ~ |
  g4 r8 a |
  a2 ~ |
  a8 bf16 bf bf8 bf16 a |
  bf4. c8 |
  d4 \tuplet 3/2 { d8 bf g } |
  a4 r8 bf16 a |
  g4 \tuplet 3/2 { fs8 a g } |
  d4 r |
  r \tuplet 3/2 { c8 c c } |
  d4 r8 d16 d |
  g4 \tuplet 3/2 { bf8 bf a } |
  a4 r |
  r \tuplet 3/2 { bf8 c d } |
  d4 r8 a16 a |
  d4 \tuplet 3/2 { d8 bf a } |
  g2 |
  f4. bf,16 bf |
  bf8 d ef d16 c |
  d4 \tuplet 3/2 { bf'8 bf c } |
  d2 ~ |
  \set Score.repeatCommands = #'((volta "1"))
  d8 d d bf |
  g4. g8 |
  bf8 g g bf |
  a2 ~ |
  a4 r
  \tweak extra-offset #'(0 . -1.5)
  _\markup { \halign #0.5 \fontsize #1 \box \bold "Qua B" }
  \bar "||"
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  d8 \repeatTie ef ef ef |
  d4. bf8 |
  \set Score.repeatCommands = #'((volta #f))
  c8 c d a |
  g2 ~ |
  g4
  <>^\markup { \halign #-2 \fontsize #2 \bold "Tận" }
  r \bar "|." \break
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  
  \key g \major
  <>^\markup { \fontsize #6 \box \bold B }
  b8. b16 \tuplet 3/2 { b8 a g } |
  g4. d8 |
  % giải pháp tạm thời: hiển thị nốt bè bas
  % vì partcombine và tuplet không thể kết hợp khi quá 1 quãng 8
  \tuplet 3/2 { 
    <d' \tweak font-size #-2 b,>8
    <d \tweak font-size #-2 d,>
    <d \tweak font-size #-2 g,>
  }
  \tuplet 3/2 { d e d } |
  d2 |
  c8. c16 \tuplet 3/2 { c8 e c } |
  a4. \once \stemDown d,8 |
  \tuplet 3/2 { a'8 a a } \tuplet 3/2 { a c a } |
  b2 ~ |
  b4 r |
  b8. b16 \tuplet 3/2 { b8 a g } |
  g4. d8 |
  % lilypond không thể gộp 2 nốt quá 1 quãng 8
  \tuplet 3/2 { <d' \tweak font-size -2 b,>8
                <d \tweak font-size -2 d,>
                <d \tweak font-size -2 g,> }
  \tuplet 3/2 { d e d } |
  d2 |
  c8. c16 \tuplet 3/2 { c8 e e } |
  a,4. \once \stemDown d,8 |
  \tuplet 3/2 { a'8 a a } \tuplet 3/2 { a b a } |
  g2 ~ |
  g4 r
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key bf \major \time 2/4
  \tuplet 3/2 { d8 d d } |
  ef4 \tuplet 3/2 { ef8 g f } |
  g2 ~ |
  g4 r |
  R2
  r4 \tuplet 3/2 { d8 c g' } |
  fs2 ~ |
  fs4 \tuplet 3/2 { fs8 g ef } |
  d4 \tuplet 3/2 { d8 d d } |
  g4. g8 |
  f4 \tuplet 3/2 { f8 d c } |
  bf2 ~ |
  bf4 r8 c |
  d2 ~ |
  d8 g16 g g8 g16 fs |
  g4. g8 |
  a4 \tuplet 3/2 { a8 g g } |
  fs4 r8 bf16 a |
  g4 \tuplet 3/2 { d8 d d } |
  d4 r |
  r \tuplet 3/2 { c8 c bf } |
  a4 r8 d16 d |
  g4 \tuplet 3/2 { g8 g g } |
  fs4 r |
  r \tuplet 3/2 { g8 g bf } |
  a4 r8 a16 a |
  d4 \tuplet 3/2 { g,8 g f } |
  g2 |
  f4. bf,16 bf |
  bf8 d ef d16 c |
  d4 \tuplet 3/2 { g8 g a } |
  bf2 ~ |
  bf8 f f d |
  ef4. ef8 |
  d8 bf d g |
  fs2 ~ |
  fs4 r |
  bf8 \repeatTie c8 c c |
  bf4. d,8 |
  g8 g f f |
  g2 ~ |
  g4 r |
  
  \key g \major
  d8. d16 \tuplet 3/2 { d8 c b } |
  b4. c8 |
  %\tuplet 3/2 { b8 d g }
  \skip 4
  \tuplet 3/2 { b'8 c b } |
  a2 |
  g8. g16 \tuplet 3/2 { g8 g g } |
  fs4. \once \stemUp fs8 |
  \tuplet 3/2 { e8 e e } \tuplet 3/2 { e8 e e } |
  ds2 ~ |
  ds4 r |
  e8. e16 \tuplet 3/2 { d8 c c } |
  b4. c8 |
  % lilypond không thể gộp 2 nốt quá 1 quãng 8
  %\tuplet 3/2 { b8 d g }
  \skip 4
  \tuplet 3/2 { b'8 c b } |
  a2 |
  g8. g16 \tuplet 3/2 { g8 g g } |
  fs4. \once \stemUp fs8 |
  \tuplet 3/2 { e8 e e } \tuplet 3/2 { fs g fs } |
  g2 ~ |
  g4 r
}

nhacPhienKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \key bf \major \time 2/4
  \tuplet 3/2 { g8 g g } |
  c,4 \tuplet 3/2 { c8 ef d } |
  g4 r8 bf |
  bf4. bf8 |
  a4 \tuplet 3/2 { g8 f g } |
  d4 \tuplet 3/2 { g8 ef g } |
  d2 ~ |
  d4 r |
  r \tuplet 3/2 { g8 fs g } |
  ef4. ef8 |
  d4 \tuplet 3/2 { d8 d d } |
  g2 ~ |
  g4 r |
  r \tuplet 3/2 { fs8 g a } |
  d,4. d8 |
  g8 g16 g g8 g |
  fs4 \tuplet 3/2 { fs8 g ef } |
  d4 r |
  r8 c d c |
  bf4 r8 bf16 bf |
  c4 \tuplet 3/2 { ef8 ef ef } |
  d4 r |
  r \tuplet 3/2 { g8 g c, } |
  d4 r8 g16 c |
  c4 \tuplet 3/2 { g8 a g } |
  fs4 r |
  r \tuplet 3/2 { bf,8 c d } |
  g2 |
  f4. bf,16 bf |
  bf8 c ef d16 c |
  d4 \tuplet 3/2 { g8 g f } |
  bf,8. bf16 d8 f |
  bf bf bf, bf |
  ef4. c8 |
  g'8 g g g |
  d2 ~ |
  d4 r |
  bf'8 a g f |
  g4. g8 |
  <g ef> <g ef> <a d,> <c d,> |
  <b! g g,>2 ~ |
  <b! g g,>4 r |
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
  
  \key g \major
  g8. g16 \tuplet 3/2 { g8 d d } |
  e4. a8 |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { g fs g } |
  <fs d>2 |
  e8. e16 \tuplet 3/2 { e8 c c } |
  d4. d8 |
  \tuplet 3/2 { c8 c c } \tuplet 3/2 { c a c } |
  b2 ~ |
  b8 b b' a |
  g8. g16 \tuplet 3/2 { g8 d d } |
  e4. a8 |
  \tuplet 3/2 { g8 g g } \tuplet 3/2 { g fs g } |
  <fs d>2 |
  e8. e16 \tuplet 3/2 { e8 c c } |
  d4. d8 |
  \tuplet 3/2 { c8 c c } \tuplet 3/2 { d d d } |
  g,2 ~ |
  g4
  \tuplet 3/2 \notBePhu -2 { g8 bf d }
}

% Lời
loiPhienKhucSopMot = \lyrics {
  \set stanza = "1."
  A __ _ _ _ _ _ _ _
  trong lòng mẫu thân.
  Vòng tay mẹ hiền thay bàn tay Chúa âu yếm dẫn con vào đời.
  Bao la ôi bao la như biển khơi
  dâng sóng ấp ủ đời con dẫn đưa con từng bước trong đời.
  cho con khôn lớn từng nụ hôn ấp nóng con tim
  dạy con mến Chúa từng lời nói dẫn con nên người.
  Ôi một cuộc đời trao hiến không từ nan, trọn niềm mơ ước:
  Chính lúc quên mình là lúc gặp lại bản thân.
  _
  \set stanza = "Để kết:"
  Chính lúc chết đi là khi vui sống muôn đời.
  Ôi bao la như biển trời,
  mẹ yêu con hay Thiên Chúa thương con.
  Công ơn như nước trong nguồn
  tràn lan trên thân con mãi chẳng vơi.
  Ôi bao la như biển trời,
  Tình yêu đưa con đi tới muôn nơi.
  Con không sao nói nên lời,
  Nguyện ghi trong tâm tư đến muôn đời.
}

loiPhienKhucSopHai = \lyrics {
  \set stanza = "2."
  Hm __ _ _ _ _ _ _ _
  như một giấc mơ.
  Ngày vui vội tàn nay hợp mai tan
  thân kiếp đớn đau ngợp tràn.
  Hôm nay ôi thương đau khi tình sầu
  phân cách vĩnh biệt từ đây
  mẫu thân con về sống bên Ngài.
  trong bao nguy khó mùa gặt mong lúa chín thơm hương
  lệ rơi ướt lối người về lúc tiếng ca vang trời.
  Theo dòng lệ sầu
  con tiến dâng lời kinh, trọn niềm tin kính:
}

loiPhienKhucAlto = \lyrics {
  
}

loiPhienKhucBasMot = \lyrics {
  \set stanza = "1."
  A __ _ _ _ _ _ _ _
  Chính Chúa nắn con nên hình nên dạng
  trong lòng mẫu thân.
  Thay bàn tay Ngài âu yếm dẫn con vào đời.
  Tình sâu nghĩa nặng biển khơi ôi bao la
  dâng sóng ấp ủ đời con dẫn con trên đời.
  Từng lời ru cho con khôn lớn
  ấp nóng con tim.
  Từng câu kinh dạy con mến Ngài
  dẫn con nên người.
  Ôi một cuộc đời trao hiến không từ nan, trọn niềm mơ được,
  trọn niềm mơ ước:
  Chính lúc quên mình là lúc gặp lại bản thân.
  
  kính: Chính lúc chết đi là khi vui sống muôn đời.
  Ôi bao la như biển trời,
  mẹ yêu con hay Thiên Chúa thương con.
  Công ơn như nước trong nguồn tràn lan trên thân con
  mãi chẳng vơi,
  ngời sáng muôn đời.
  Bao la như biển trời,
  Tình yêu đưa con đi tới muôn nơi.
  Con không sao nói lên lời,
  Nguyện ghi trong tâm tư đến muôn đời.
  \override Lyrics.LyricText.font-shape = #'italic
  (Đàn)
}

loiPhienKhucBasHai = \lyrics {
  \set stanza = "2."
  Hm __ _ _ _ _ _ _ _
  Kiếp sống thoáng qua như làn sương mờ
  như một giấc mơ.
  nay hợp mai tan thân phận đớn đau ngợp tràn.
  Ngài lên tiếng gọi
  tình sâu ôi thương đau phân lìa vĩnh quyết
  từ đây về sống bên Ngài.
  Người từng gieo trong bao nguy khó lúa chín thơm hương.
  Người đi khi lệ rơi ướt rồi
  lời ca vang trời.
  Theo dòng lệ sầu con tiến dâng lời kính,
  trọn niềm tin cậy, trọn niềm tin
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
  system-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  score-system-spacing = #'((basic-distance . 13)
                             (minimum-distance . 13)
                             (padding . 2))
  %page-count = 3
  %systems-per-page = 5
}

TongNhip = {
  \key bf \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff<<
     \new Voice = "beSop" {
       \clef treble \nhacIntroSop
     }
     >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \nhacIntroBas
      }
    >>
  >>
  \layout {
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    ragged-last = ##f
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
      >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1
    \override Staff.TimeSignature.transparent = ##t
  }
}
