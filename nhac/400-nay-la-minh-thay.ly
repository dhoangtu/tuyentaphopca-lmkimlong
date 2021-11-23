% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Này Là Mình Thầy" }
  poet = "Cảm hứng: Mc 14, 22-26"
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

% Nhạc
nhacDiepKhucSop = \relative c'' {
  R2
  a8 a g a |
  e4. c'8 |
  c b b e |
  a,2 ~ |
  a4 r8 c |
  c c b c |
  a4. a8 |
  d c c d |
  b2 |
  r8 c c c |
  b4. b8 |
  e2 \bar "||"
  
  \key a \major
  cs8 cs cs4 |
  cs4. fs8 |
  fs fs cs e |
  d2 |
  b8 b
  <<
    {
      b4 |
      b4. cs8 |
      e, b' gs4 |
      a2
    }
    { \notBePhu -2 {
      a4 |
      gs4. a8 |
      a d b4 |
      cs2
    }}
  >>
  \bar "|."
  
  \key c \major
  R2
  r4 r8 c |
  c c c b |
  e2 ~ |
  e4 r |
  r r8 e, |
  b' b c16 (b) a8 |
  b4. cs8 |
  d b4 <e a,>8 |
  <e gs,>2 \bar "||"
}

nhacDiepKhucBas = \relative c' {
  e8 e d e |
  c2 |
  c'8 c b (a) |
  e4. d8 |
  c4 r8 f |
  f f d e |
  c4. a'8 |
  f f f (e) |
  d4 a'8 (b) |
  gs8. e16 d8 e |
  a4. a8 |
  d, d d a' |
  gs4. e8 |
  
  \key a \major
  a a a4 |
  a4. d8 |
  d d a cs |
  b4. d,8 |
  d d d4 |
  e4. d8 |
  cs d e4 |
  a,2 |
  
  \key c \major
  a'8 a g a |
  e2 |
  r8 a a a |
  gs2 |
  a8 a g!? a |
  e2 |
  r8 d d f |
  e4. a8 |
  d, e4 cs8 |
  e2
}

% Lời
loiDiepKhucSopMot = \lyricmode {
  Yêu thương đoàn môn đệ, Chúa đã yêu thương đến cùng,
  Nên trong đêm bị trao nộp, Ngài đã trao ban chính mình
  trao cho môn đệ mà nói:
  Này là Mình Thầy sẽ hiến tế vì các con
  Này là Mình Thầy, hãy nhận lấy mà ăn.
  
  \set stanza = "1."
  Tin vui khai nguyên sự sống
  và tuyên xưng khắp trần gian cho tới khi Chúa đến.
}

loiDiepKhucSopHai = \lyricmode {
  \repeat unfold 48 { _ }
  \set stanza = "2."
  Nay trao ban cho người thế
  và phân chia tới ngàn dân liên kết trong Đức Ái.
}

loiDiepKhucSopBa = \lyricmode {
  \repeat unfold 48 { _ }
  \set stanza = "3."
  Liên thông luôn trong Hội Thánh
  do yêu thương Chúa tặng ban đây phúc ân cứu rỗi.
}

loiDiepKhucBasMot = \lyricmode {
  Yêu thương đoàn môn đệ, Chúa đã yêu thương đến cùng.
  Nên trong đêm bị trao nộp Chúa đã trao ban mình
  chính mình, nên Ngài cầm bánh trao cho môn đệ mà nói:
  Vì Này là Mình Thầy sẽ hiến tế vì các con
  Vì Này là Mình Thầy hãy nhận lấy mà ăn.
  
  \set stanza = "1."
  Đây Tin Mừng cao trọng khai nguyên sự sống.
  Con xin được loan truyền
  truyền khắp thế gian cho tới khi Chúa đến.
}

loiDiepKhucBasHai = \lyricmode {
  \repeat unfold 55 { _ }
  \set stanza = "2."
  Đây lương thực Thiên Thần ban cho người thế.
  Con xin được thông phần
  chia cho các dân liên hiệp trong Đức Ái.
}

loiDiepKhucBasBa = \lyricmode {
  \repeat unfold 55 { _ }
  \set stanza = "2."
  Muôn tâm hồn nên một luôn trong Hội Thánh
  Hân hoan nhận lương thần
  yêu thương Chúa ban: Đây lộc ân cứu rỗi.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 15\mm
  bottom-margin = 15\mm
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
  %page-count = #1
}

TongNhip = {
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSopMot
      \new Lyrics \lyricsto beSop \loiDiepKhucSopHai
      \new Lyrics \lyricsto beSop \loiDiepKhucSopBa
    >>
    \new Staff <<
        \new Voice = beBas {
          \clef treble \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBasMot
      \new Lyrics \lyricsto beBas \loiDiepKhucBasHai
      \new Lyrics \lyricsto beBas \loiDiepKhucBasBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
