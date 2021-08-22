% Cài đặt chung\
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ngày Về" }
  composer = "Thơ: Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

nhacPhienKhucSop = \relative c'' {
  \key f \major \time 2/4
  \partial 4 r8 d |
  <d g, f>8. d16 c8 d |
  \repeat volta 2 {
    <a g c,> <a g c,> r a |
    d,8. a16 d8 f |
    <g f d bf> <g f d bf> r8 \bar "" \break
    a |
    g8. a16 e8 c |
    d4 r8 a' |
    g8. a16 e8 c | \break
    d4 r |
    r8 a' g4 ~ |
    g8. a16 e8 c |
    d4 r |
    r8 bf' a r |
    R2
    r8 f bf bf |
    a4 r |
    r8 a g4 ~ |
    g r8 d' |
    c8. d16 bf4 |
    a r |
    R2
    r8 bf r bf |
    a4 r8 d,16 e | \break
    f4. e8 |
    bf' e,4 a8 |
    a4. g16 a |
    f4. e8 |
    g f4 e8 |
    d4 r8 f16 c |
    c4. f8 |
    e e f (g) |
    a4 d8 c |
    c4. c8 |
    bf4 d8 bf |
    a2 ~ |
    a4 e8 e |
    e4. g8 |
    a4 a8 e
  }
  \alternative {
    {
      r4 r8 d' |
      d8. d16 c8 d
    }
    {
      r4 r8 d |
      d8. d16 c8 d |
      <a g c,>8 <a g c,> r a |
      <a e c>8. a16 g8 a |
      <e d bf> <e d bf> r e |
      c' bf g8. bf16 |
      a4 r8 e |
      c' bf g8. bf16 | \break
      a4 r |
      R2*2
      
    }
  }
}

nhacPhienKhucAlto = \relative c'' {
  \key f \major \time 2/4
  r4
  R2*3
  r4 r8 a |
  g8. a16 e8 c |
  d4 r8 d |
  d8. f16 c8 a | \break
  a4 r |
  r8 a' g4 ~ |
  g8. a16 e8 c |
  d4 r |
  r8 e cs r |
  R2
  r8 f g g |
  f4 r |
  r8 f d4 ~ |
  d r8 g |
  e8. f16 d4 |
  cs r |
  R2
  r8 e r d |
  cs4 r8 d16 e |
  f4. e8 |
  bf' e,4 a8 |
  a4. g16 a |
  f4. e8 |
  g f4 e8 |
  d4 r8 f16 c |
  c4. d8 |
  a a d4 |
  c f8 e |
  e4. e8 |
  d4 g8 f |
  e8. f16 e8 (d) |
  cs2 ~ |
  cs8 cs d e |
  f4 e8 cs |
  d2 ~ |
  d4 r |
  d2 ~ |
  d4 r |
  R2*2
  r4 r8 e |
  c' bf g8. bf16 |
  a4 r8 c, |
  f4 e8. d16 |
  c4 r |
  R2*2
  
}

nhacPhienKhucBas = \relative c {
  \key f \major \time 2/4
  r4 |
  <d' a d,>8 r r4 |
  a8 a, r4 |
  <f' d c d,>8 r r4 |
  g8 g, r a' |
  g8. a16 e8 c |
  d4 r8 <f d> |
  <g g,>4 <g a,> |
  <f d>4 r |
  r8 f g4 ~ |
  g8. a16 <g a,>4 |
  <f d> r |
  r8 g a r |
  R2
  r8 d, bf g |
  d'4 r |
  r8 f g4 ~ |
  g r8 bf |
  a8. f16 g4 |
  a r |
  R2
  r8 g r g |
  a4 r8 d,16 e |
  f4. e8 |
  bf' e,4 a8 |
  a4. g16 a |
  f4. e8 |
  g f4 e8 |
  d4 r8 f16 c |
  c4. d8 |
  c c d4 |
  a g8 a |
  c4. c8 |
  g'4 g8 g |
  a2 ~ |
  a ~ |
  a8 g f e |
  d4
  <<
    {
      \voiceOne
      e8 _(g) |
      f2 ~ |
      f4
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      a,4 |
      d2 ~ |
      d4
    }
  >>
  \oneVoice
  r4 |
  <f d>2 ~ |
  <f d>4 r |
  a8 a, r4 |
  <a' e d a>8 r r4 |
  <g e>8 <g e,> r e |
  c' bf g8. bf16 |
  a4 r8 a |
  <a d,>4
  <<
    {
      \voiceOne
      e8. g16
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e4
    }
  >>
  \oneVoice
  <a a,>4 r |
  R2*2
  
}

% Nhạc
nhacPhienKhucSolo = \relative c' {
  \key f \major \time 2/4
  r4
  R2*7
  r4 r8 d16 e |
  f4. e8 |
  e g4 a8 |
  a4. g16 f |
  e4. a,8 |
  e' f4 e8 |
  d2 ~ |
  d4 r8 d16 g |
  d4. g8 |
  bf bf4 g8 |
  a4. e16 e |
  e4. f8 |
  a, d cs (d) |
  e2 ~ |
  e4 r |
  R2*25
  
  r4 r8 g16 a |
  f4. e8 |
  g g c, (d) |
  e4. e16 e |
  a4. d8 |
  
}

% Lời phiên khúc
loiPhienKhucSolo = \lyrics {
  \set stanza = "Solo Nữ:"
  Người cha ấy chiều chiều ra trước ngõ ngóng trông con
  lòng se lắng nhớ thương
  Cặp mắt già qua nhỡn kính
  sầu vương từng giọt lệ ngấn dài trên gò má.
  
  \set stanza = "Solo Nữ:"
  Tên phá tử một đêm xưa nài nẵng
  chia cho nó phần gia tài tổ sản
  Túi giang hồ
}

loiPhienKhucSop = \lyrics {
  \repeat unfold 14 { _ }
  Ơ __ \repeat unfold 11 { _ }
  Ơ __ \repeat unfold 5 { _ }
  ơ ơ
  se lắng nhớ thương
  ơ ơ ơ __ _ _ _ _
  ơ ơ ơ Người cha ấy càng nghĩ càng băn khoăn
  cho số phận của đứa con hoang dại
  Chút tình già hơn một lần tê tái
  Khóc thương con phiêu bạt đến bao giờ
  Để chiều chiều ra ngõ đứng mong
  (Đàn) __ \repeat unfold 4 { _ }
  (Đàn) __ \repeat unfold 13 { _ }
  ơ __ \repeat unfold 11 { _ }
  
}

loiPhienKhucAlto = \lyrics {
  Ơ __ \repeat unfold 11 { _ }
  Ơ __ \repeat unfold 5 { _ }
  ơ ơ
  se lắng nhớ thương
  ơ ơ ơ __ _ _ _ _
  ơ ơ ơ Người cha ấy càng nghĩ càng băn khoăn
  cho số phận của đứa con hoang dại
  Chút tình già hơn một lần tê dại
  Khóc thương con phiêu
  bạt đến bao giờ đến bao giờ
  chiều chiều ra ngõ đứng mong chờ.
  chờ
  ơ __ \repeat unfold 10 { _ }
  
}

loiPhienKhucBas = \lyrics {
  \repeat unfold 6 { _ }
  Ơ __ \repeat unfold 9 { _ }
  Ơ __ \repeat unfold 4 { _ }
  ơ ơ
  se nặng sầu thương
  ơ ơ ơ __ _ _ _ _
  ơ ơ ơ Người cha ấy càng nghĩ càng băn khoăn
  cho số phận của đứa con hoang dại
  Chút tình già hơn một lần tê dại
  Lòng thương con phiêu lãng ôi thương nhớ
  chiều chiều ra ngõ đợi chờ.
  chờ
  \repeat unfold 5 { _ }
  ơ __ \repeat unfold 10 { _ }
  
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
  %page-count = 10
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
    \new Staff <<
      \new Voice = "solo" {
        \clef treble \nhacPhienKhucSolo
      }
      \new Lyrics \lyricsto solo \loiPhienKhucSolo
    >>
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff <<
      \new Voice = "beBas" {
        \clef bass \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override LyricHyphen.minimum-distance = #1
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
