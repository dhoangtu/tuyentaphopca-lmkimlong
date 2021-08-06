% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Chúa Đã Sai Tôi Đi" }
  composer = " "
  arranger = "Lm. Kim Long"
  tagline = ##f
}

nhacIntroSop = \relative c'' {
  r8 d16 d b8 <b a fs> |
  <b g e> c16 c a8 <a g e> |
  <a fs d>4. <g d>8 |
  <fs d c> <g d b>4 <a fs d>8 |
  <b g d>4 <e b g>8 <cs a g> |
  <d a fs>4 <d fs,>8. <d fs,>16
}

nhacIntroBas = \relative c {
  r8 r r <ds ds,> |
  <e e,> r r <cs cs,> |
  <d d,> <a a,> <g g,> r |
  r4 <e e,>8 r |
  r <g' g,> <e e,> <a a,> |
  d,4 d8. d16
}

% Nhạc phiên khúc
nhacPhienKhucSopMot = \relative c'' {
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \partial 4 d8. d16 |
  b8 b b4 ~ |
  b8 a b g |
  d4. g16 g |
  fs8 g4 a8 |
  b4 b8 b |
  a4. cs8 |
  d2 ~ |
  d4 r |
  r2
  r8 d, bf' bf |
  a a16 a g8 c |
  d2 ~ |
  d4 b8. b16 |
  b8 g g a |
  c c ~ c4 |
  c8. c16 c8 e |
  c a d d ~ |
  d2 ~ |
  d4 r |
  r r8 bf |
  c8. c16 c8 bf |
  a2 ~ |
  a4 r |
  r2
  b8. b16 b8 d ~ |
  d d c d |
  a2 ~ |
  a8 a fs16 (e) a8 |
  d,4. d8 |
  a'4 a |
  g2 ~ |
  g4 r \bar "|." \break
  
  d'8. b16 b8 d |
  c c4 b8 |
  a2 |
  a8. fs16 fs8 a |
  g g4 e8 |
  d4 r8 d |
  a'8. gs16 a8 b |
  c c r c |
  a8. a16 b8 c |
  d d r fs, |
  fs8. fs16 a8 fs |
  g4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacPhienKhucAltoMot = \relative c' {
  fs8. fs16 |
  g8 g d4 ~ |
  d8 c d b |
  a4. b16 c |
  d8 d4 fs8 |
  g4 g8 g |
  d4. g8 |
  fs2 ~ |
  fs4 r |
  r2
  r8 d g g |
  fs fs16 fs g8 g |
  fs4. (a8 |
  g4) d8. d16 |
  ds8 e e f! |
  e8 e ~ e4 |
  e8. e16 d8 g |
  a g fs fs ~ |
  fs2 ~ |
  fs4 r |
  r r8 g a8. a16 a8 bf |
  fs2 ~ |
  fs4 r |
  r2
  g8. g16 g8 b ~ |
  b b a g |
  fs2 ~ |
  fs8 e cs cs |
  d4. d8 |
  e4 fs |
  d2 ~ |
  d4 r | \break
  
  b'8. g16 g8 b |
  a a4 g8 |
  fs2 |
  cs8. d16 ds8 e |
  e e4 cs8 |
  d4 r8 d |
  cs8. e16 d8 g! |
  e e r a |
  d,8. d16 g8 a |
  fs fs r e |
  d8. d16 cs8 d |
  b4
}

nhacPhienKhucBasMot = \relative c {
  \partial 4 d8. d16 |
  g8 g g4 ~ |
  g8 a g g |
  fs4. e16 e |
  d8  b4 d8 |
  g4 g8 g |
  fs4. e8 |
  d2 |
  d8. bf'16 g8 a ~ |
  a f! g16 (fs) c8 |
  d2 ~ |
  d8 d ef ef |
  d d16 d c8 d |
  g4 g8. g16 |
  fs8 e e d |
  c c ~ c4 |
  a8. a16 a8 gf |
  a e' d d ~ |
  d4 r8 d |
  bf'8. bf16 a8 g |
  d'2 ~ |
  d2 ~ |
  d4 d,8 a' |
  a8. d,16 a' (bf) a8 |
  g2 ~ |
  g4 r |
  g8. g16 g8 b ~ |
  b d c b |
  a4 a8 g |
  fs8. <a fs>16 <g e>8 <fs d> |
  <<
    { \voiceOne e e' d _(c) }
    \new Voice { \voiceTwo c,4 d }
  >>
  \oneVoice
  <b' g g,>2 ~ |
  <b g g,>4 r
}

nhacPhienKhucSopHai = \relative c'' {
  d8. b16 b8 d |
  c c4 b8 |
  a2 |
  a8. fs16 fs8 a |
  g g4 e8 |
  d4 r8 d |
  a'8. gs16 a8 b |
  c c r c |
  a8. a16 b8 c |
  d d r fs, |
  fs8. fs16 a8 fs |
  g4
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacPhienKhucBasHai = \relative c'' {
  b8. g16 g8 b |
  a a4 g8 |
  fs2 |
  cs8. d16 ds8 e |
  e e4 cs8 |
  d4 r8 d |
  cs8. e16 d8 g! |
  e e r a |
  d,8. d16 g8 a |
  fs fs r e |
  d8. d16 cs8 d |
  b4
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyrics {
  \set stanza = "1."
  Chúa đã sai tôi đi loan báo Tin mừng
  loan Tin mừng tình thương Chúa cho nhân loại mọi nơi
  Ngài thánh hiến tôi ngay trong lòng thân mẫu
  Sai tôi đi dệt tình thương bốn hướng
  Muôn con tim hát chung bài yêu thương
  Ân phúc thắp sáng hy vọng
  Nào người người hãy nắm tay hát mừng
  nắm tay hát mừng trời đất kết duyên.
  
  \set stanza = "1."
  Xin Ngài một ý thơ hay cung nhạc
  Cho chỉ là tiếng kêu trong sa mạc
  Để tôi hòa lên câu hát mới
  suốt đời truyền rao cho thế giới
  Tình Ngài nhuần thấm muôn nơi.
}

loiPhienKhucSopHai = \lyrics {
  \set stanza = "2."
  Chúa đã sai tôi đi loan báo Tin mừng
  loan Tin mừng tình thương Chúa cho nhân loại mọi nơi
  Ngài thánh hiến tôi ngay trong lòng thân mẫu
  Sai tôi đi dọn đường cho Chúa đến
  Hô vang lên giữa sa mạc hoang vu
  Thung lũng hãy lấp cho đầy
  Và mọi người sẽ thấy ơn Cứu độ
  thấy ơn Cứu độ của Chúa chúng ta.
  
  \set stanza = "2."
  Xin được làm chứng nhân
  luôn trung thực đâu sợ gì khó nguy
  hay cơ cực
  Nhìn gian trần đi trong bóng tối
  Lấy tình Ngài tôi xin dẫn lối
  Tựa vầng Hồng mãi rạng soi.
}

loiPhienKhucBasMot = \lyrics {
  \set stanza = "1."
  Chúa đã sai tôi đi loan báo Tin mừng
  loan Tin mừng tình thương Chúa cho nhân loại mọi thời
  Ngài đã chọn tôi từ xa ngàn đời
  Ngài thánh hiến tôi ngay trong lòng thân mẫu
  Sai tôi đi dệt tình thương muôn phương
  Muôn con tim hòa chung khúc yêu thương
  Từ thánh giá khơi nguồn sống
  Và tin yêu vùi lấp đau thương
  Nào người người hãy nắm tay hát mừng
  hãy hát mừng
  nắm tay hát mừng phút kết duyên.
}

loiPhienKhucBasHai = \lyrics {
  \set stanza = "2."
  Chúa đã sai tôi đi loan báo Tin mừng
  loan Tin mừng tình thương Chúa cho nhân loại mọi thời
  Ngài đã chọn tôi từ xa ngàn đời
  Ngài thánh hiến tôi ngay trong lòng thân mẫu
  Sai tôi đi dọn đường cho Chúa đến
  Hô vang lên sa mạc cát hoang vu
  Đồi núi hãy mau bạt xuống
  Đường quanh co hãy uốn cho ngay
  Và mọi người sẽ thấy ơn Cứu độ
  ơn Cứu độ
  thấy ơn Cứu độ Chúa chúng ta.
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
  page-count = 2
}

TongNhip = {
  \key g \major \time 2/4
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
    \new Staff<<
     \new Voice = "beSop" {
       \clef treble \TongNhip \nhacIntroSop
     }
     >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacIntroBas
      }
    >>
  >>
  \layout {
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
          \nhacPhienKhucSopMot
          \notBePhu -2 { \nhacPhienKhucAltoMot } }
        \new NullVoice = nhacThamChieuPhienKhucSopMot \nhacPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSopMot \loiPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSopMot \loiPhienKhucSopHai
      >>
    \new Staff <<
      \new Voice = "beBass" {
        \clef bass \TongNhip \nhacPhienKhucBasMot
      }
      \new Lyrics \lyricsto beBass \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBass \loiPhienKhucBasHai
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Staff.VerticalAxisGroup.staff-staff-spacing =
        #'((basic-distance . 8)
	   (minimum-distance . 8)
	   (padding . 1))
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
