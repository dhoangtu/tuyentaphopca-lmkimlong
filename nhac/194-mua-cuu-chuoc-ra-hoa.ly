% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mùa Cứu Chuộc Ra Hoa" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  <<
    {
      a4 \tuplet 3/2 { g8 g a } |
      bf4 \tuplet 3/2 { a8 a bf } |
      c2 |
      \tuplet 3/2 { c8 d c } \tuplet 3/2 { bf c bf } |
      a4 \tuplet 3/2 { g8 g c } |
      f,8. c16 f8 g
    }
    \\
    {
      <f c>4. <f c>8 |
      <f d>4. <f d>8 |
      <g e>4 <bf g> |
      <a f>8 r <g f> r |
      <f c>4 e |
      \skip 2
    }
  >>
  \bar "||" \break
  
  a4. a8 |
  a2 |
  bf4. bf8 |
  bf4 \tuplet 3/2 { a8 a bf } |
  c2 ~ |
  c4 r |
  R2
  f,4 g8 g ~ |
  g g a8. f16 |
  bf8 bf4. |
  bf16 (c) f,8 a4 ~ |
  a8 f f g |
  g2 \bar ".|:"
  a8. gs16 a8 f |
  f f (g) a |
  bf2 |
  \slashedGrace { g8 ( } a8.) f16 bf8 bf |
  bf a4 bf8 |
  c2 |
  
}

nhacPhienKhucAlto = \relative c' {
  R2*6
  c4. c8 |
  c4 \tuplet 3/2 { c8 d e } |
  f4 f8 f |
  d4 \tuplet 3/2 { d8 e f } |
  e2 ~ |
  e4 r |
  R2
}

nhacPhienKhucBas = \relative c {
  f4. f8 |
  d4. d8 |
  \tuplet 3/2 { c8 c c } \tuplet 3/2 { c d e } |
  f r g r |
  \tuplet 3/2 { c, f a } c <bf c,> |
  <<
    {
      a2
    }
    \\
    {
      f4. c8
    }
  >>
  
  <<
    {
      \voiceOne
      f4. f8
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      f,2
    }
  >>
  \oneVoice
  f'2 |
  d4. d8 |
  g4 \tuplet 3/2 { f8 e d } |
  c2 |
}

% Lời phiên khúc
loiPhienKhucSop = \lyrics {
  Đây Be -- lem, đây Be -- lem hoàng thành Đa -- vít.
  Trời âm u mưa gió lạnh thê lương,
  giữa đồng vắng sầu đọng hơn sương.
  Ôi tình thương là mặt trời công chính.
  Bỏ tòa cao thiên cung đầy quang ánh.
  Đêm nay lên trong u tối đồng hoang.
  Đêm nay lên trong u tối đồng hoang.
  Ngày nay máng cỏ, ngày nay máng cỏ.
  Thổi làm chi hỡi gió đừng bay nữa mây ơi!
  Quỳ xuống đây, hãy quỳ xuống đây,
  quỳ thờ lạy Con Chúa Trời.
  (Đàn) __ _ _
  Ngươi nghe không muôn muôn vì tinh đẩu
  đêm hôm nay náo động, đêm hôm nay náo động chốn trời cao.
  Người thấy không đường nguyệt điện xôn xao vạn thiên thần
  bay về thành Đa -- vít.
  Nhạc sáng danh như mưa gào gió thét.
  Ca phụng thờ say đắm đến chừng mô.
  Dồn dập tiếng tung hô mừng Ngôi Hai
  dồn dập tiếng tung hô, mừng Ngôi Hai tung hô.
  Hồn ta ơi hòa tan trong quang ánh
  để ngắm xem Mùa Cứu Chuộc ra hoa.
  Ta ước hồn biến thành mực bao la
  để viết nên muôn bài thơ kính mến.
  Cho thơ say trong ngất ngư mầu nhiệm
  của Ngôi Lời nhập thể xuống trần gian.
}

loiPhienKhucAlto = \lyrics {
  Đây Be -- lem hoàng thành Đa -- vít đây Be -- lem hoàng thành Đa -- vít.
  Trời âm u mưa gió lạnh thê lương,
  giữa đồng vắng sầu đọng hơn sương.
  Ôi tình thương là mặt trời công chính.
  Bỏ tòa cao thiên cung đầy quang ánh.
  Đêm nay lên trong u tối đồng hoang.
  Đêm nay lên trong u tối đồng hoang.
  Ngày nay máng cỏ, ngày nay máng cỏ.
  Thổi làm chi hỡi gió đừng bay nữa mây ơi!
  Quỳ xuống đây, hãy quỳ xuống đây,
  quỳ thờ lạy Con Chúa Trời.
  Ngươi nghe không nghe không,
  ngươi nghe không ngươi nghe không
  muôn muôn vì tinh đẩu
  ngươi nghe không,
  ngươi nghe không
  đêm hôm nay trời cao,
  đêm hôm nay náo động, náo động
  đường nguyệt điện xôn xao ơ xôn xao ô náo động.
  Vạn thiên thần bay về thành Đa -- vít.
  Nhạc rạng danh như mưa gào gió thét.
  Ca phụng thờ say đắm đến chừng mô.
  Dồn dập tiếng tung hô,
  dồn dập tiếng tung hô,
  dồn dập tiếng, dồn dập tiếng, dồn dập tiếng tung hô
  Hồn ta ơi hòa tan trong quang ánh
  để ngắm xem Mùa Cứu Chuộc ra hoa.
  Ta ước hồn biến thành mực bao la
  để viết nên muôn bài thơ kính mến.
  Cho thơ say trong ngất ngư mầu nhiệm
  của Ngôi Lời nhập thể xuống trần gian.
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 17 { _ }
  Đây Be -- lem, đây Be -- lem hoàng thành Đa -- vít.
  Một đêm khuya mù mịt trời âm u
  gió mưa lạnh thê lương
  gió mưa sầu đọng hơn sương.
  Ôi tình thương là mặt trời công chính.
  Bỏ ngai cao thiên cung đầy quang ánh.
  Đêm nay lên trong u tối đồng hoang.
  Đêm nay lên trong u tối đồng hoang.
  Xưa kia ngai vàng, xưa kia ngai vàng.
  Thổi làm chi, thổi gì hỡi gió.
  Đừng bay mây ơi, đừng bay mây ơi!
  Người nghe không, nghe không, ngươi nghe không
  ngươi nghe không muôn muôn vì tinh đẩu
  ngươi nghe không, ngươi nghe không đêm hôm nay nơi nào,
  đêm hôm nay náo động nghe không
  đường nguyệt điện xôn xao ơ xôn xao ơ náo động.
  Vạn thiên thần bay về thành Đa -- vít.
  Nhạc rạng danh như mưa gào gió thét.
  Cung phụng thờ say đắm đến chừng mô.
  Mừng Ngôi Hai dồn dập tiếng tung hô,
  dồn dập tiếng,
  dồn dập tiếng, dồn dập tiếng tung hô.
  Ánh quang lên để xem mùa nở hoa, nở hoa Cứu Chuộc.
  Là thành mực để dệt nên thơ trìu mến
  để thơ ngất ngư mầu nhiệm Ngôi Lời vào trần gian.
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
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
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
