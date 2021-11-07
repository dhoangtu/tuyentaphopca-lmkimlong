% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Vực Sâu" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \partial 8 g8 |
  g g fs g16 a |
  bf8 bf g a16 bf |
  c4. d16 c |
  bf8 c16 bf a8 bf16 a | \break
  g4 r |
  R2
  r4 r8 g |
  g8 g fs (g) |
  a4. a8 |
  a bf4 a8 |
  g4 r |
  R2
  r4 r8 c |
  c8. c16 bf8 a |
  c d ~ d4 \bar "||"
  
  \key g \major
  b8. b16 c8 c |
  b8 a4 a8 |
  a8. a16 g8 a |
  b4. c8 |
  b a fs g16 (a) |
  d,4. d8 |
  b'8. b16 b8 c |
  b a4 d8 |
  a8. a16 a8 b |
  a g ~ g4 \bar "|." \break
  
  \key bf \major
  g8. f16 g8 d |
  bf'4. d8 |
  bf8. bf16 a8 g |
  a4. a8 |
  c8 bf a c |
  d4. c8 |
  bf8. d16 g,8 bf |
  a a4 fs8 |
  g g ef d |
  c8. c16 bf8 (c) |
  d2 ~ |
  d8 d g ef |
  d4. d8 |
  d
  <<
    {
      bf' a fs |
      g2 ~ |
      g4
    }
    {
      d8 ef c |
      bf2 ~ |
      bf4
    }
  >>
  \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  r8 |
  R2
  r8 <g d> <ef c> r |
  r <g ef> <g ef> r |
  r <g ef> <fs c>4 |
  <d bf> r |
  r r8 d |
  d d c (d) |
  ef4. d8 |
  c4. c8 |
  d d4 c8 |
  bf4 r |
  R2
  r4 r8 f' |
  g8. g16 g8 g |
  g fs (fs4) |
  
  \key g \major
  d8. d16 e8 e |
  g8 fs4 fs8 |
  e8. e16 d8 d |
  d4. fs8 |
  g e d cs |
  d4. d8 |
  d8. d16 d8 fs |
  g d4 bf8 |
  e8. e16 fs8 g |
  d b ~ b4
}

nhacDiepKhucBas = \relative c' {
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  r8 |
  r <d bf g> <d c a d,> r |
  r g,, c r |
  r c a r |
  r a d4 |
  g8 d
  <<
    {
      \voiceOne
      r g
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g,4
    }
  >>
  \oneVoice
  g'8 g fs (g) |
  a ([bf a]) g |
  c4. bf8 |
  a4. g8 |
  fs g4 d8 |
  ef4 r8 d |
  bf'8. a16 g8 g |
  c c4 d,8 |
  ef8. ef16 ef8 ef |
  ef d ~ d4 |
  
  \key g \major
  g8. g16 c,8 c |
  cs d4 d8 |
  cs8. c!16 b8 d |
  g4. d8 |
  e cs d a |
  b4. a8 |
  g8. g'16 g8 d |
  g fs4 g8 |
  c,8. c16 d8 d |
  d g, ~ g4 |
  
  \key bf \major
  R2
  g'8. d16 g8 f |
  g8. g16 f8 (ef) |
  d (c) d4 |
  r8 g f (ef) |
  d8. d16 e!8 fs |
  g4 r8 g |
  d d g (a) |
  bf4. bf8 |
  a4 g8 (a) |
  bf8. bf16 a8 g |
  fs4. fs8 |
  g f!? ef d |
  c (bf) c (d) |
  g2 ~ |
  g4
}

% Lời
loiDiepKhucSop = \lyricmode {
  \repeat unfold 21 { _ }
  Năm mươi năm hồng phúc
  trong thiên chức linh mục,
  Bao nhiêu gian khổ và thao thức.
  Nhưng tay Chúa dẫn con đi,
  yêu thương, ôi thực khôn ví,
  khiến con đâu sợ hãi gì.
  Giờ đây xin cung kính tri ân,
  ngợi ca tuyên xưng khắp xa gần.
  
  <<
    {
  \set stanza = "1."
  Đâu phải con chọn Chúa,
  mà chính Chúa thương chọn con,
  hồng ân đổ đầy chan chứa.
  Công việc Chúa ủy thác cho con,
  nhiều khi con chẳng vuông tròn,
  khi lầm lỗi.
  Thực con chỉ là người đầy tớ vô dụng thôi.
    }
    \new Lyrics \with {
      alignAboveContext = #"3"
    }{
	    \set associatedVoice = "beSop"
      \set stanza = "2."
      Bao lần con lẫm lỡ,
      nhiều lúc nhẫn tâm thờ ơ,
      hồng ân chẳng còn ghi nhớ,
      Nhưng nào Chúa đành bỏ rơi con,
      nhìn con tơi tả hao mòn,
      nên Ngài đến ủi an độ trì
      và dịu dàng dắt con cùng đi.
    }
    \new Lyrics \with {
      alignAboveContext = #"3"
    }{
	    \set associatedVoice = "beSop"
      \set stanza = "3."
      Xin được luôn cùng Chúa làm ánh sáng
      cho trần gian và rao giảng Lời Chân Lý.
      Mong làm muối mặn ướp nơi nơi,
      Làm men say ủ hương đời,
      luôn hiệp nhất cùng Chúa chẳng rời,
      người người sống vui thảnh thơi.
    }
    \new Lyrics \with {
      alignAboveContext = #"3"
    }{
	    \set associatedVoice = "beSop"
      \set stanza = "4."
      Đoan nguyện luôn thành tín,
      và mãi sắt son niềm tin,
      dù khi khổ sầu vây mãi,
      sắt son niềm tin.
      dẫu khổ sầu vây kín,
      Ân lộc Chúa nguyện mãi ghi sâu
      và luôn tin tưởng nguyện cầu,
      ôi tình Chúa thực muôn nhiệm mầu,
      ngàn đời có phai nhạt đâu.
    }
  >>
}

loiDiepKhucAlto = \lyricmode {
  \repeat unfold 7 { _ }
  Năm mơi năm hồng phúc
  phúc lộc trong thiên chức linh mục,
  Bao nhiêu gian khổ và thao thức.
  Nhưng tay Chúa dẫn con đi,
  yêu thương, ôi thực khôn ví,
  khiến con đâu sợ hãi gì.
  Giờ đây xin cung kính tri ân,
  ngợi ca tuyên xưng khắp xa gần.
}

loiDiepKhucBas = \lyricmode {
  \repeat unfold 10 { _ }
  Năm mươi năm hồng phúc,
  hồng phúc, phúc lộc trong thiên chức linh mục,
  Nhịp bước trên đường đời chông gai
  bao nhiêu gian khổ và thao thức.
  Nhưng tay Ngài dẫn con đi,
  yêu thương, ôi thực khôn ví,
  nên con đâu sợ hãi gì,
  Giờ này xin cung kính tri ân
  ngợi ca tuyên xưng khắp xa gần.
  
  <<
    {
  \set stanza = "1."
  Đâu phải con mà chính Chúa thương chọn con,
  đổ chan hòa hồng ân chan chứa.
  Công việc Ngài ủy thác dẫu con lầm lỗi
  đã không vuông tròn,
  thực con chỉ là người đầy tớ thôi.
    }
    \new Lyrics \with {
      %alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beBas"
      \set stanza = "2."
      Bao lầm lỡ, nhiều lúc nhẫn tâm thờ ơ,
      chẳng tôn thờ và không ghi nhớ.
      Nhưng nào Ngài bỏ thí,
      thấy con Ngài đến ủi an độ trì,
      ủi an độ trì và dìu con đi.
    }
    \new Lyrics \with {
      %alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beBas"
      \set stanza = "3."
      Xin cùng Chúa làm ánh sáng cho trần gian
      giảng rao Lời là Lời Chân Lý,
      muối mặn nồng để ướp hương đời,
      hiệp nhất với Chúa khôn rời
      và sống vui với muôn người thảnh thơi.
    }
    \new Lyrics \with {
      %alignAboveContext = #"2"
    }{
	    \set associatedVoice = "beBas"
      \set stanza = "4."
      Đoan nguyện tín thành mãi,
      sắt son niềm tin,
      dẫu khổ sầu còn luôn vây kín.
      Ân lộc nguyện ghi nhớ,
      thẳm sâu tình Chúa biết bao nhiệm mầu
      thẳm sâu nhiệm mầu chẳng phai nhạt đâu.
    }
  >>
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  
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
  page-count = #3
  %systems-per-page = 5
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
    \new Staff = "1" <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff = "2" <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff = "3" <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
