% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Ở Lại Với Con" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \partial 4 r4 |
  R2
  r4. g16 g |
  bf4. a16 a |
  c4. c8 |
  bf4 \tuplet 3/2 { bf8 a a } |
  d4. d,8 |
  bf' g4 a8 |
  a4 r8 a |
  g4 \tuplet 3/2 { f8 g ef } |
  d4 \tuplet 3/2 { bf8 d bf' } |
  a4 \tuplet 3/2 { a,8 d a' } |
  g2 | \break
  
  \set Staff.printKeyCancellation = ##f
  \key g \major
  b4 \tuplet 3/2 { g8 a c } |
  b4. g16 gs |
  a4 \tuplet 3/2 { a8 b g } |
  e4. e8 |
  d4 \tuplet 3/2 { d8 c' b } |
  a2 |
  g4 \tuplet 3/2 { a8 a b } |
  c4 \tuplet 3/2 { a8 d c } |
  b4 r8 a16 a |
  e4. fs8 |
  d4 \tuplet 3/2 { a'8 g fs } |
  g2 ~ |
  g4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  r4 |
  R2
  r4. g16 g |
  g4. g16 f |
  ef4. ef8 |
  d4 \tuplet 3/2 { g8 g g } |
  fs4. d8 |
  d bf4 c8 |
  d4 r8 c |
  bf4 \tuplet 3/2 { bf8 d bf } |
  a4 \tuplet 3/2 { bf8 bf d } |
  ef4 \tuplet 3/2 { a,8 d c } |
  b!2 |
  
  \set Staff.printKeyCancellation = ##f
  \key g \major
  g'4 \tuplet 3/2 { e8 fs a } |
  g4. e16 d |
  c4 \tuplet 3/2 { c8 d d } |
  c4. c8 |
  b4 \tuplet 3/2 { d8 e g } |
  fs2 |
  g4 \tuplet 3/2 { g8 fs f! } |
  e4 \tuplet 3/2 { g8 fs fs } |
  e4 r8 d16 d |
  c4. c8 |
  b4 \tuplet 3/2 { d8 e e } |
  d2 ~ |
  d4
}

nhacPhienKhucBas = \relative c {
  \tuplet 3/2 { bf8 d bf' } |
  a4 \tuplet 3/2 { a,8 d a' } |
  g4 r8 g16 f |
  ef4. ef16 d |
  c4. c8 |
  g'4 \tuplet 3/2 { ef8 c ef } |
  d4. f8 |
  g g4 g8 |
  fs4 r8 d |
  ef4 \tuplet 3/2 { d8 bf c } |
  d4 \tuplet 3/2 { g8 g, g } |
  c4 \tuplet 3/2 { d8 d d } |
  g2 |
  
  \set Staff.printKeyCancellation = ##f
  \key g \major
  g4 \tuplet 3/2 { g8 d d } |
  e4. e16 e |
  a4 \tuplet 3/2 { a8 g b } |
  c,4. c8 |
  g4 \tuplet 3/2 { b8 a g } |
  d'2 |
  e4 \tuplet 3/2 { e8 d d } |
  c4 \tuplet 3/2 { e8 d d } |
  g4 r8 fs16 g |
  a4 a, |
  <<
    {
      \voiceOne
      d8 (g) \tuplet 3/2 { fs g c } |
      b2 ~ |
      b4
    }
    \new Voice = "splitpart" {
      \voiceTwo
      d,4 \tuplet 3/2 { d8 d d } |
      <g g,>2 ~ |
      <g g,>4
    }
  >>
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Đừng về nữa, đừng về nữa Chúa ơi, xin đừng về nữa.
  Chiều xuống ngợp nơi nơi, bóng đen giăng kín khung trời,
  nguyện cầu Chúa thương ở lại với con.
  
  \set stanza = "ĐK:"
  Xin ở lại với con, vì hồn con luôn sống bởi Ngài,
  thôi đừng về nữa Chúa ơi.
  Từ nghìn thu xa trước Ngài đã thương con,
  nay con nguyện yêu Ngài tới muôn đời luôn.
}

loiPhienKhucSopHai = \lyricmode {
  Từng làn gió, từng làn gió hắt hiu đem về lạnh giá.
  Dập tắt lửa tin yêu, đó đây cô vắng tiêu điều,
  nguyện cầu Chúa thương ở lại với con.
}

loiPhienKhucSopBa = \lyricmode {
  Sầu đã chín, sầu đã chín Chúa ơi hy vọng vụt tắt.
  Đời biết về nơi đâu, đắng cay nhan mắt lệ sầu,
  nguyện cầu Chúa thương ở lại với con.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  Ở lại với con, ở lại với con.
  Đừng về nữa, đừng về nữa Ngài ơi thôi đừng về nữa.
  Chiều buông ngợp nơi nơi,
  màn đêm giăng kín khung trời,
  nguyện cầu Chúa thương ở lại với con.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  Ở lại với con, ở lại với con.
  Từng làn gió, từng làn gió đìu hiu đem về lạnh giá.
  Dập tắt lửa tin yêu, đó đây cô vắng tiêu điều,
  nguyện cầu Chúa thương ở lại với con.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  Ở lại với con, ở lại với con.
  Sầu đã chín, sầu đã chín Ngài ơi hy vọng vụt tắt.
  Đời biết về nơi đâu, đắng cay nhen mắt lệ sầu,
  nguyện cầu Chúa thương ở lại với con.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 5\mm
  bottom-margin = 5\mm
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
  page-count = #1
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
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
    %\override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
