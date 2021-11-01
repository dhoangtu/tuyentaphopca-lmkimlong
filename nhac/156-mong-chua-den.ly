% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mong Chúa Đến" }
  composer = "Ý: Tv. 114"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4 r4 |
  r a8 g |
  a2 |
  c8 b16 c d8 c16 d |
  e4. f8 |
  d8. e16 c8 a |
  b2 ~ |
  b8 r r4 |
  r r8 b |
  c8. b16 %{ \once \stemUp %} d8
  %_\markup { \tiny \rest #"8" }
  ds |
  e e r e |
  c8. d16 b8 gs |
  a4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r4
  r a8 g |
  a2 |
  e8 f16 e a8 g16 g |
  c4. c8 |
  b8. b16 a8 a |
  gs2 ~ |
  gs8 r r b, |
  c8. b16 d8 ds |
  e e r a |
  gs gs r gs |
  a8. f16 e8 d |
  c4
}

nhacDiepKhucBas = \relative c {
  e8 d |
  e4 a8 g |
  a4. e8 |
  a gs16 a f8 e16 d |
  c4. a8 |
  d8. d16 d8 f |
  e4 r8 e |
  f8. e16 g8 g |
  a a r4 |
  r r8 f |
  e e r e |
  f8. d16 e8 e |
  <a a,>4
}

nhacPhienKhucSop = \relative c'' {
  \partial 4 r4 |
  r c16 (d) c8 |
  b r r4 |
  r e16 (f) e8 |
  e2 ~ |
  e8 c d c |
  b2 ~ |
  b4 r |
  r c8 (d16 c) |
  b8 b b b |
  c b16 a d8 e |
  e2 ~ |
  e4 \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  r4
  r a16 (b) a8 |
  gs r r4 |
  r c16 (d) c8 |
  c2 ~ |
  c8 a b a |
  e2 ~ |
  e4 r |
  r a8 (b16 a) |
  gs8 gs gs gs |
  a e16 e a8 a |
  gs2 ~ |
  gs4
}

nhacPhienKhucBas = \relative c' {
  a8 f |
  e2 ~ |
  e8 d16 (e) g8 gs |
  a2 ~ |
  a8 e a16 (b) a8 |
  g4 r |
  r r8 b |
  gs4 (a8) b |
  e,2 ~ |
  e4 r8 e |
  a4 f8 f |
  e2 ~ |
  e4
}

% Lời
loiDiepKhucSop = \lyricmode {
  Đêm lại đêm
  Tâm hồn con đây hằng yêu Chúa,
  Tiếng con nức nở nài van
  Mòn mỏi từng giây mong Chúa đến
  cứu con thoát cảnh lầm than.
}

loiDiepKhucAlto = \lyricmode {
  Đêm lại đêm
  Tâm hồn con đây hằng yêu Chúa,
  Tiếng con nức nở nài van
  mòn mỏi từng giây mong Chúa đến mong Chúa đến
  cứu con thoát cảnh lầm than.
}

loiDiepKhucBas = \lyricmode {
  Ngày lại ngày, đêm lại đêm,
  này tâm hồn con đây hằng yêu Ngài
  lời con nức nở nài van,
  Mòn mỏi từng giây mong Chúa đến.
  ngóng Chúa đến cứu con thoát cảnh lầm than.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Bóng tử thần. Lưới âm ty chụp xuống trên mình.
  Chúa ơi con kêu lên Chúa, xin Ngài thương tiếp cứu.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Chúa nhân từ xót thương con
  từng phút giữu gìn
  Chúa ơi nương thân tay chúa con bình an tiến bước.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Chúa dủ tình cứu thân con khỏi lưới tử thần
  Chúa ơi cho con đi trước nhan Ngài trong cõi sống.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  Bóng tử thần bủa vây muôn lối
  Mạng lưới âm ty.
  Giữa cảnh khốn cùng,
  Nguyện Chúa thương tiếp cứu.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  Chúa nhân từ và luôn trung tín
  nguyện xót thương con
  bé bỏng yếu hèn,
  lạy Chúa, con tiến bước.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  Chúa dủ tình rộng ban ơn phúc
  nguyện cứu thân con,
  mắt khỏi đẫm lệ,
  nhịp bước trong cõi sống.
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
    (make-pango-font-tree
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      "Deja Vu Serif Condensed"
      (/ 20 20)))
  print-page-number = #f
  page-count = #2
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
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
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacPhienKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiPhienKhucSopMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucSopHai
      \new Lyrics \lyricsto beAlto \loiPhienKhucSopBa
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}