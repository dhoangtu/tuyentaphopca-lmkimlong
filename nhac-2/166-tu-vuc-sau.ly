% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Từ Vực Sâu" }
  poet = "Tv. 129"
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

% Nhạc phiên khúc
nhacPhienKhucSop = \relative c'' {
  \partial 4
  r4 |
  r a8 (g) |
  f4
  r4 |
  r
  d'8 d |
  c r16 d d8 d |
  \slashedGrace { b!16 ^( } a4)
  r8 a |
  g b! a8. a16 |
  d8 d b!16 (a) g8 |
  d2 ~ |
  d4 r |
  r8.
  d'16 d8 d |
  bf2 |
  a8. a16 d8 e |
  e2 ~ |
  e4
  r8 d |
  b!8. b16 e8 cs16 (b) |
  a4 g8. g16 |
  e8 a fs16 (e) d8 |
  d2 ~ |
  d4 r |
  r8.
  d'16 d8 d |
  bf2 |
  a8. a16 d8 e |
  e2 ~ |
  e4
  r8 bf |
  a cs b!8. b16 |
  e8 e,4
  g8 |
  a4 f8. f16 |
  f8 f d4 |
  a'4 bf8. bf16 |
  bf8 bf g4 |
  d'
  r8 a |
  g b! a8. a16 |
  d8 d b!16 (a) g8 |
  d2 ~ |
  d4 r |
  r8.
  d'16 d8 d |
  bf2 |
  a8. a16 d8 e |
  e4. e8 |
  cs4 cs |
  d2 ~ |
  d ~ |
  d4
  r4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \partial 4
  a,8 a |
  c8. c16 c8 c |
  d4
  r4 |
  r
  bf'8 bf |
  a r16 g g8 g |
  f4
  r8 a |
  g b! a8. a16 |
  d8 d b!16 (a) g8 |
  d2 ~ |
  d4 r |
  r8.
  a'16 a8 a |
  g2 |
  f8. f16 g8 g |
  g2 ~ |
  g4
  r8 d' |
  b!8. b16 e8 cs16 (b) |
  a4 g8. g16 |
  e8 a fs16 (e) d8 |
  d2 ~ |
  d4 r |
  r8.
  a'16 a8 a |
  g2 |
  f8. f16 g8 g |
  g2 ~ |
  g4
  r8 bf |
  a cs b!8. b16 |
  e8 e,4
  e8 |
  e4 d8. d16 |
  d8 d c4 |
  cs d8. d16 |
  f8 f e4 |
  <a d,>
  r8 a |
  g b! a8. a16 |
  d8 d b!16 (a) g8 |
  d2 ~ |
  d4 r |
  r8.
  a'16 a8 a |
  g2 |
  f8. f16 g8 g |
  bf4. bf8 |
  g4
  g _( |
  g fs8 e) |
  fs2 ~ |
  fs4
  r4
}

nhacPhienKhucBas = \relative c {
  r4 |
  r f8 (e) |
  d4 d8 d |
  g8. g16 g8 g |
  a r16 b! b8 b |
  d4 r8 a |
  g b! a8. a16 |
  d8 d b!16 (a) g8 |
  d2 ~ |
  d4 d8 d |
  a'8. f16 f8 fs |
  g2 |
  d'8. d16
  <<
    {
      d8 d |
      d2 ^( |
      cs4)
    }
    {
      \notBePhu -2 {
        bf8 bf |
        bf2 _( |
        a4)
      }
    }
  >>
  r4 |
  R2
  r4 g8. g16 |
  e8 a fs16 (e) d8 |
  d2 ~ |
  d4 d8 d |
  a'8. f16 f8 fs |
  g2 |
  d'8. d16
  <<
    {
      d8 d |
      d2 ^( |
      cs4)
    }
    {
      \notBePhu -2 {
        bf8 bf |
        bf2 _( |
        a4)
      }
    }
  >>
  r8 bf8 |
  a cs b!8. b16 |
  e8 e,4 d8 |
  cs4 d8. d16 |
  bf8 bf bf4 |
  a4 g8. g16 |
  d'8 d g4 |
  f r8 a |
  g b! a8. a16 |
  d8 d b!16 (a) g8 |
  d2 ~ |
  d4 d8 d |
  a'8. f16 f8 fs |
  g2 |
  d'8. d16 d8 d |
  g,4. g8 |
  a4 a, |
  d2 ~ |
  d ~ |
  d4 r
}

% Lời
loiPhienKhucSop = \lyrics {
  Chúa ơi! Kêu lên Ngài, Chúa hỡi, Chúa ơi,
  Xin Ngài lắng tai nghe thấu tiếng con van nài.
  Nếu Chúa chấp tội thì nào ai đứng vững?
  Nhưng Ngài là Đấng khoan hồng
  nên muôn đời kính tôn phụng thờ.
  Luôn luôn trông cậy vào lời xưa Chúa hứa.
  Hơn người lính canh luôn ngóng chờ rạng đông.
  Hơn quân canh mong hừng sáng Is -- ra -- el trông đợi Chúa,
  Nơi tình Chúa thương ơn cứu rỗi luôn dư đầy.
  Sẽ đến Cứu Độ và làm cho dân Chúa thoát vòng tội khiên.
}

loiPhienKhucAlto = \lyrics {
  Từ vực sâu con kêu lên Chúa
  Kêu lên Ngài, Chúa hỡi, Chúa ơi,
  Xin Ngài lắng tai nghe thấu tiếng con van nài.
  Nếu Chúa chấp tội thì nào ai đứng vững?
  Nhưng Ngài là Đấng khoan hồng
  nên muôn đời kính tôn phụng thờ.
  Luôn luôn trông cậy vào lời xưa Chúa hứa.
  Hơn người lính canh luôn ngóng chờ rạng đông.
  Hơn quân canh mong hừng sáng Is -- ra -- el trông đợi Chúa,
  Nơi tình Chúa thương ơn cứu rỗi luôn dư đầy.
  Sẽ đến Cứu Độ và làm cho dân Chúa thoát vòng tội khiên.

}

loiPhienKhucBas = \lyrics {
  Chưa ơi
  Từ vực sâu con kêu lên Chúa, Chúa ơi Chúa hỡi
  Xin Ngài lắng tai nghe thấu tiếng con van nài.
  Vì lạy Chúa, nếu Chúa chấp tội thì nào ai đứng vững?
  Nên muôn đời kính tôn phụng thờ.
  Này hồn con luôn luôn trông cậy vào lời xưa Chúa hứa.
  Hơn người lính canh luôn ngóng chờ rạng đông.
  Hơn quân canh mong hửng rạng Is -- ra -- el trông tới Ngài,
  Nơi tình Chúa thương ơn cứu rỗi luôn dư đầy.
  Vì này Chúa sẽ đến cứu độ và làm cho dân Ngài
  thoát ách tội khiên.
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
	 (make-pango-font-tree "Deja Vu Serif Condensed"
	 		       "Deja Vu Serif Condensed"
			       "Deja Vu Serif Condensed"
			       (/ 20 20)))
  print-page-number = ##f
  %page-count = 1
  %systems-per-page = 4
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = beAlto {
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
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  } 
}
