% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bài Ca Máu Đỏ" }
  composer = "Thơ: Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  R2 \bar ".|:"
  R2
  d4. ^> a8 |
  c4. cs8 |
  d2 ~ |
  d4 r |
  r d8 (e16) cs |
  cs4 a8 g |
  g f16 e e8 e |
  \slashedGrace { e16 (g }a2) ~ |
  a4 r |
  r a8 g16 (a) |
  d4 d8 c |
  c bf16 a bf8 g |
  a2 ~ |
  a4 r |
  R2
  r4 d8 d |
  a4. d8 |
  \set Score.repeatCommands = #'((volta "1"))
  cs2 ~ |
  cs4 r
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  cs2 ~ |
  \set Score.repeatCommands = #'((volta #f))
  cs4 a8. d16 |
  d2 ~ |
  d4 bf8. ^> g16 |
  a2 ~ |
  a4 a8. c16 |
  c4. d8 |
  d bf4 a8 |
  g2 ~ |
  g4 r |
  R2
  r4 a8 ^> cs, |
  d8 d16 d g8 a |
  bf4. a8 |
  a a16 a d8 ds |
  e4 r8 a, |
  a a16 a c8 cs |
  d4 bf16 ^> (d) bf8 |
  a2 |
  bf8. bf16 d8 g, |
  a2 ~ |
  a4 r |
  R2*2
  r4 bf16 ^> (d) bf8 |
  a4 r8 a |
  bf e,4 a8 |
  \slashedGrace { d,16 (f } d2) ~ |
  d4 r |
  R2*2
  r4 a'8 bf |
  a4. a8 |
  d, d4 f8 |
  e4 e8 g |
  f4 a8 a |
  \slashedGrace { \stemDown e'16 ^(f  \stemNeutral } e4.) cs8 |
  d2 ~ |
  d4 r8 \bar "|." \break
  
  a16 d |
  a4. g8 |
  f (e) \slashedGrace { d16 ( } f8) c |
  d4 r8 d16 bf |
  bf4. d8 |
  a8 a4 f'8 |
  d8. (f16 g4) ~ |
  g r8 g16 f |
  g4. f8 |
  e e4 g8 |
  a4. a16 a |
  cs4 a8 g16 (a) |
  e'8. (f16 e8) d |
  d2 ~ |
  d4 \bar "||" \break
  
  a8 d, |
  d d16 d a'8 g |
  g4 d' ~ |
  d8 cs16 cs e8 d |
  d4 a8 a |
  bf4. g8 |
  f g4 a8 |
  \slashedGrace { d,16 (f } d4) d'8 d |
  d4. c8 |
  c4 g8 g |
  a4 a8 ^> cs, |
  d8 d16 d g8 a |
  bf4 r8 a |
  a a16 a d8 ds |
  e4 r8 a, |
  a a16 a c8 cs |
  d4 bf16 ^> (d) bf8 |
  a2 |
  bf8. ^> bf16 d8 g, |
  a2 ~ |
  a4 a8 a, |
  f'4. f8 |
  d8 g f (g) |
  a2 ~ |
  a4 r \bar "||" \break
  
  a4 a |
  f2 |
  a4 e |
  g a |
  d,2 |
  d'4 a |
  a2 |
  f4 d |
  a' g |
  g2 |
  bf4 bf |
  a2 |
  g4 a |
  g f |
  e2 |
  e4 d |
  a'2 |
  bf4 a |
  d e |
  cs2 \bar "||" \break
  
  \key d \major
  R2
  r4 r8 a |
  a a fs (a) |
  \slashedGrace { \once \stemDown a16 ^( } b4) a8 a |
  e'4. fs8 |
  e cs4 cs8 |
  d2 ~ |
  
  \time 6/8
  d4 r8 \bar "||"
  
  \pageBreak
  
  \key f \major
  \partial 4.
  <<
    {
      a4 bf8 |
      bf8. bf16 g8 d'4 e8 |
      cs4. d4 g,8 |
      g4 a8 bf8. bf16 a8 |
      a4. e'8 (f) d |
      e4 cs8 cs cs d |
      a4. f4 g8 |
      g4 f8 e8. a16
    }
    {
      f4 g8 |
      g8. g16 e8 f4 g8 |
      a4. f4 f8 |
      e4 f8 g8. g16 f8 |
      f4. g8 (a) f |
      g4 g8 a a g |
      f4. d4 e8 |
      e4 d8 cs8. cs16
    }
  >>
  d8 |
  d4. ~ d4 r8 \break \bar ".|:"
  
  \time 2/4
  \key d \major
  \repeat volta 2 {
    a'8. a16 a8 a |
    \autoBeamOff
    fs fs ([g]) a |
    \autoBeamOn
    \slashedGrace { d,16 (e } fs2) |
    g8. e16 fs8 fs |
    d b'4 gs8 |
    a2 |
    b8. cs16 d8 cs |
    b d4 ds8 |
    e2 |
    fs8. fs16 g!?8 e |
    a, e'4 cs8 |
  }
  \alternative {
    {
      \slashedGrace { \once \stemDown cs16 ^( } d2)
    }
    {
      \slashedGrace { \once \stemDown cs16 ^( } d2) ~ |
      d ~ |
      d4 r
    }
  }
  \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  R2
  bf4. ^> g8 |
  a2 ~ |
  a4 g |
  f2 ~ |
  f4 r4 |
  r f8 (g16) f |
  e4 a8 g |
  g8 f16 e e8 e |
  \slashedGrace { e16 (g } a2) ~ |
  a4 r |
  e8 d16 (e) f8 (e |
  d4) f8 g |
  a g16 f d8 e |
  f f16 f g8 e |
  f4 r |
  R2
  r4 d'8 d |
  a4. g8 |
  e2 ~ |
  e4 r |
  e2 ~ |
  e4 r |
  r8. f16 f8. ^> g16 |
  g2 |
  r8 f16 g e8 e |
  f4 r |
  e8. f16 f4 ~ |
  f8 g f e |
  d2 ~ |
  d4 r |
  R2*3
  r4 a'8 ^> e |
  f f16 f g8 a |
  bf4 r8 f |
  f f16 f g8 g |
  a2 |
  f16 -> (g) f8 e4 ~ |
  e4 e8 (d) |
  cs2 ~ |
  cs4 g'8 f |
  g4. g8 |
  a4 a8 d, |
  e2 ~ |
  e4 r8 e |
  e cs4 cs8 |
  \slashedGrace { d16 (f } d2) ~ |
  d4 r |
  R2*2
  r4 f8 g |
  e4. cs8 |
  d d4 d8 |
  cs4 e8 g |
  f4 a8 a |
  bf4. g8 |
  f2 ~ |
  f4 r8
  
  r8
  R2*13
  r4 r
  R2
  r4
  g8 e |
  e e16 e g8 f |
  f4 a8 a |
  bf4. g8 |
  f g4 a8 |
  \slashedGrace { d,16 (f } d4) bf'8 bf |
  bf4. f8 |
  e4 e8 e |
  f4 r |
  R2
  r4 a8 ^> e |
  f f16 f g8 a |
  bf4 r8 e, |
  f f16 f g8 g |
  f2 |
  f16 ^> ( g) f8 e4 ~ |
  e e8 (d) |
  c2 ~ |
  c4 a'8 a, |
  f'4. f8 |
  d g f (g) |
  a2 ~ |
  a4 r |
  
  cs, cs |
  d2 |
  d4 bf |
  c cs |
  d2 |
  f4 f |
  e (f8 e) |
  d4 b! |
  c f |
  e2 |
  d4 e |
  f2 |
  c4 c |
  b! b |
  c2 |
  cs4 d |
  cs (d8 e) |
  f4 fs |
  g bf |
  a2 |
  
  \key d \major
  R2
  r4 r8 fs |
  e e d4 |
  d d8 d |
  g4. b8 |
  b a4 g8 |
  fs2 ~ |
  
  \time 6/8
  fs4 r8
  
  \key f \major
  r4.
  R2.*8
  
  \time 2/4
  \key d \major
  fs8. fs16 e8 e |
  d d4 cs8 |
  d2 |
  b8. d16 cs8 cs |
  d fs ([e]) d |
  cs2 |
  g'8. g16 fs8 a |
  d, a'4 a8 |
  gs2 |
  a8. a16 b8 g |
  \autoBeamOff
  fs g ([b]) g |
  \autoBeamOn
  fs2 |
  fs |
  g8 g4 g8 |
  fs4 r
}

nhacPhienKhucBas = \relative c' {
  \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  a4. ^> f8 |
  g2 ~ |
  g4 f |
  e2 |
  d4 r8 d' |
  bf4 c8 (d16) a |
  a2 ~ |
  a4 r |
  R2
  r4 r8 a |
  d,4 g8 f16 (g) |
  bf4. a8 |
  bf4. r8 |
  r4 g8 g |
  f d16 d e8 cs |
  d4 g8 e |
  \autoBeamOff
  e ([g a]) \afterGrace f ({
    \once \stemDown
    \override Flag.stroke-style = #"grace"
    d16) } |
  \autoBeamOn
  \revert Flag.stroke-style
  d4 d'8 d |
  a4. bf8 |
  a2 |
  a4. f8 |
  a2 ~ |
  a4 r |
  r8.
  <<
    {
      a16 a8. ^> bf16 |
      bf2 |
      r8 d16 e cs8 cs |
      d4
    }
    {
      d,16 f8. g16 |
      g2 |
      r8 d16 g, a8 a |
      d4
    }
  >>
  r |
  r a'8. bf16 |
  bf2 ~ |
  bf4 d,8. g16 |
  g4. g8 |
  a a,4 a8 |
  f'2 ~ |
  f4 bf8 ^> f |
  g8 g16 g a8 cs |
  d4 bf8 f |
  g8 g16 g a4 ~ |
  a a |
  d,2 ~ |
  d4 a'16 ^> (bf) a8 |
  g4 g8 bf |
  a2 ~ |
  a4 r |
  R2*2
  r4
  <<
    {
      e'8 d |
      cs4 r8 cs |
    }
    {
      g8 g |
      a4 r8 a |
    }
  >>
  \oneVoice
  <<
    {
      \voiceOne
      d
      \once \override NoteColumn.force-hshift = #1
      a4 g8 |
      
    }
    \new Voice = "beBasPhu" {
	    \voiceTwo
      g a a,4 |
    }
  >>
  \oneVoice
  <<
    {
      f'2 ~ |
      f4
    }
    {
      d2 ~ |
      d4
    }
  >>
  d8 c |
  d4. d8 |
  a4 g'8 f16 (g) |
  a2 ~ |
  a4 a bf4. g8 |
  a4 e8 g |
  f4 a8 a |
  g4. a8 |
  <a d,>2 ~ |
  <a d,>4 r8
  r8
  R2*13
  r4 r
  r d8 g, |
  g g16 g bf8 g |
  a4 a, |
  d4 a'8 a |
  bf4. g8 |
  f g4 a8 |
  \slashedGrace { \stemDown d,16 ^(f \stemNeutral } d4) bf8 bf |
  g4. a8 |
  c4 c8 c |
  f4 r |
  r bf8 ^> f |
  g g16 g a8 cs |
  d4 bf8 ^> f |
  g g16 g a4 ~ |
  a a |
  d,2 ~ |
  d4 a'16 ^> (bf) a8 |
  g4 g8 (bf) |
  a2 ~ |
  a4 a8 a, |
  f'4. f8 |
  d g f (g) |
  a2 ~ |
  a4 r |
  a a |
  bf (a8 g) |
  f4 g |
  e a, |
  d2 |
  bf4 d |
  cs2 |
  d4 g |
  f g |
  c,2 |
  g4 g |
  \once \stemUp d' (c8 d) |
  e4 f |
  g g |
  a2 |
  a4 bf |
  a2 |
  d,4 d' |
  bf g |
  a2 |
  
  \key d \major
  fs8 (e4) a8 |
  d,4. d8 |
  cs8 cs d (fs) |
  g4 fs8 fs |
  g4. d8 |
  g (a) <a a,>4 |
  <a d,>2 ~ |
  
  \time 6/8
  <a d,>4 r8
  \key f \major
  
  r4.
  R2.*8
  
  \time 2/4
  \key d \major
  d8. d16 cs8 cs |
  d a4 a8 |
  b2 |
  g8. g16 a8 a |
  b d,4 e8 |
  a2 |
  e8. e16 d8 fs |
  g fs4 fs8 |
  e2 |
  d8. d16 cs8 cs |
  d g4 a8 |
  d,2 |
  <a' d,>2 |
  <b g>8 <b g>4 <bf g>8 |
  <a d,>4 r
}

% Lời
loiPhienKhucSop = \lyrics {
  Hmm __ \repeat unfold 4 { _ }
  nói vạn lời nghĩa yêu thương của một chiều tình sử.
  Dâng đầy ứ khắp châu thân của ngọc thể tình yêu.
  Giữa đất trời cô lạnh.
  lạnh. Tôi thấy máu đỏ làm sao
  từ chân gai máu ứa rịn dạt dào.
  Máu hòa lệ hòa mồ hôi lấp lánh,
  hòa lệ hòa mồ hôi lấp lánh,
  hòa lệ hòa mồ hôi lấp lánh
  chảy từng dòng từ mặt mũi miệng tai.
  chảy ròng ròng ôi thắm ngời Máu đỏ.
  Theo dấu đinh máu tràn vọt chứa chan,
  Toàn thân Người là một vết tử thương.
  
  Tôi thấy đây trong một buổi chiều mù
  Trang tình sử viết toàn bằng máu đỏ.
  Máu lênh láng trên ngọn đồi hoen ố,
  ngợp hồn tôi dòng bửu huyết uy linh.
  
  Máu còn chảy còn chảy mãi chưa ngưng,
  máu còn chảy mãi chưa ngưng,
  Tôi chiêm ngắm khi hoàng hôn
  ánh phủ: Bóng thánh giá in trên nền trời đỏ.
  Lưỡi đòng nhọn từ bàn tay hung ác,
  đòng nhọn từ bàn tay hung ác,
  đòng nhọn từ bàn tay hung ác
  xé không gian phầm phập phóng vào tim.
  Xác cực thánh máu trào ra cùng nước.
  Máu nói nhiều với hồn tôi rướm lệ.
  Nghĩa yêu thương trong giờ phút uy linh
  Đức Chúa Cha giao phú Con Một mình cho trần thế,
  ôi tình yêu vĩ đại.
  cao sâu hơn trời bể bằng tình yêu hiến sinh mạng chiều nay.
  
  Tôi thấy máu, máu trào sôi nóng nảy
  Giữa một chiều u uất mãi khôn thôi
  Máu tình yêu nhỏ vạn giọt trên đồi
  Để canh tân muôn người đến vạn đại.
  
  Xin cho tôi muôn ngàn hòn than lửa
  Rửa miệng tôi cho sạch vết tội nhơ.
  Để tôi hát cao giọng một bài thơ
  Say sưa lắm trong lòng tôi vạn thuở.
  thuở.
}

loiPhienKhucAlto = \lyrics {
  Hmm __ \repeat unfold 4 { _ }
  nói vạn lời nghĩa yêu thương của một chiều tình sử.
  Dâng đầy ứ khắp chây thân của ngọc thể tình yêu
  của ngọc thể tình yêu.
  Giữa đất trời cô lạnh.
  lạnh.
  ai không thấy máu ôi thắm đỏ làm sao
  từ chân gai máu rịn dạt dào.
  Máu hòa lệ hòa mồ hôi lấp lánh,
  hòa lệ hòa mồ hôi lấp lánh,
  chảy từng dòng mũi tai.
  Hai bàn tay đinh đóng máu cuộn sôi
  ôi thắm ngời máu đỏ.
  Theo dấu đinh máu tràn vọt chứa chan,
  Toàn thân Người là một vết tử thương.
  
  Máu còn chảy còn chảy mãi chưa ngưng,
  Tôi chiêm ngắm khi hoàng hôn ánh phủ
  Bóng thánh giá in trên nền trời đỏ.
  Lưỡi đòng nhọn từ bàn tay hung ác,
  đòng nhọn từ bàn tay hung ác
  xé không gian phóng tim.
  Xác cực thánh máu trào ra cùng nước.
  Máu nói nhiều với hồn tôi rướm lệ.
  Nghĩa yêu thương trong giờ phút uy linh
  Đức Chúa Cha giao phú Con Một mình cho trần thế,
  ôi tình yêu vĩ đại.
  cao sâu hơn trời bể bằng tình yêu hiến sinh mạng chiều nay.
  
  Xin cho tôi muôn ngàn hòn than lửa
  Rửa miệng tôi cho sạch vết tội nhơ.
  Để tôi hát cao giọng một bài thơ
  Say sưa lắm trong lòng tôi vạn thuở.
  thuở. Say sưa muôn thuở.
}

loiPhienKhucBas = \lyrics {
  Hmm __ \repeat unfold 5 { _ }
  Máu đỏ nói vạn lời.
  Máu trào dâng đầy ứ, đầy ứ khắp châu thân
  của ngọc thể tình yêu trong sầu thảm một chiều
  Giữa đất trời cô lạnh. Hmm __ _
  lạnh.
  ai không thấy máu ôi thắm đỏ làm sao từ chân gai
  Chảy quanh co trên tím bầm Mặt Thánh
  Máu hòa lệ hòa mồ hôi lấp lánh,
  máu hòa lệ hòa mồ hôi lấp lánh.
  Chảy từng dòng từ mũi tai
  chảy ròng ròng ôi thắm ngời Máu đỏ.
  Hai bàn chân căng dài trên mặt gỗ
  Ôi máu hòa chan,
  Toàn thân Người là một vết tử thương.
  
  Máu còn chảy còn chảy mãi chưa ngưng nào ngưng,
  Tôi chiêm ngắm khi hoàng hôn ánh phủ
  Bóng thánh giá in trên nền trời đỏ.
  Lưỡi đòng nhọn từ bàn tay hung ác,
  lưỡi đòng nhọn từ bàn tay hung tàn
  xé không gian vào tim.
  Xác cực thánh máu trào ra cùng nước.
  Máu soi chiếu vào trong tôi đượm lệ.
  Nghĩa mến thương trong giờ thật uy linh
  Thực là Cha giao phú Con Một mình cho nhân thế,
  Tình Chúa Yêu trọng đại.
  Tình yêu nào cao sâu hơn trời bể
  bằng tình yêu liều mạng chiều nay.
  Xin cho tôi muôn ngàn hòn than lửa
  Rửa miệng tôi cho hết mọi tội nhơ.
  Để tôi hòa cao mãi một bài thơ
  Say sưa lắm trong lòng tôi vạn thuở.
  thuở. Say sưa muôn thuở.
}

loiPhienKhucBasPhu = \lyrics {
  \repeat unfold 2 { _ }
  \override Lyrics.LyricText.font-shape = #'italic
  màu
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
  page-count = 7
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
      \new Voice = "beSop" {
         \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff \with {
      \consists "Merge_rests_engraver"
    }<<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
      \new Lyrics \lyricsto beBasPhu \loiPhienKhucBasPhu
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
