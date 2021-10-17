% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Yêu Thương Đến Cùng" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
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

nhacPhienKhucSop = \relative c' {
  \key bf \major
  \partial 4 d8 g |
  bf (a) g (f) |
  g4. d'8 |
  c c d bf |
  g4. bf8 |
  a2 ~ |
  a4 g8 bf |
  a (g) f (g) |
  d4. d8 |
  bf' a a d |
  g,2 ~ \bar "||"
  
  \set Staff.printKeyCancellation = ##f
  \key g \major
  g4 \bar "|"
}

nhacPhienKhucBas = \relative c' {
  \key bf \major
  r4 |
  r g8 a |
  bf (c) bf4 |
  a g |
  ef8 e! f (g) |
  d d g (a) |
  fs4 r |
  r d |
  bf'8 (c bf) a |
  g g fs fs |
  g2 ~ |
  
  \set Staff.printKeyCancellation = ##f
  \key g \major
  g4
}

nhacDiepKhucSop = \relative c'' {
  \key g \major
  \partial 4 b8 b |
  c (b) a (b) |
  g4. g8 |
  c b a c |
  d4. b8 |
  a d d e,16 (g) |
  a4 e16 (a) fs (e) |
  d4. g16 (a) |
  b4 r8 b |
  g g c b |
  a4. a8 |
  a d fs, g |
  g2 ~ |
  g4 \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  \key g \major
  g8 g |
  fs4 fs |
  e4. g8 |
  e d e g |
  fs4. d8 |
  d d c b |
  e4 a,8 a |
  a4. e'8 |
  d4 r8 fs |
  e e g fs |
  e4. g8 |
  fs e d c |
  b2 ~ |
  b4
}

nhacDiepKhucBas = \relative c' {
  \key g \major
  g8 g |
  d4 d |
  e4. e8 |
  a, b c e |
  d4. g8 |
  fs fs fs g |
  c,4 cs8 cs |
  d ([e fs]) d |
  g4 r8 d |
  e e e b |
  c4. cs8 |
  d d d d |
  g,2 ~ |
  g4
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Vì thương mến nhân gian
  Chúa trao ban chính Con một dấu yêu.
  Nhận gánh muôn tội tình
  vì Chúa yêu thương đến cùng.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Vì thương mến nhân gian
  Chúa Con xin đến tuân hành ý Cha.
  Nhận lãnh muôn khổ hình:
  Người đã yêu đến cùng.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Vì thương mến nhân gian
  Thánh Linh ban xuống muôn vàn phúc ân.
  Hằng sáng soi giữ gìn
  nhịp bước đi lên tới cùng.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Vì thương mến nhân gian
  Chúa trao ban Con Một Ngài dấu yêu.
  Nhận gánh tội tình yêu thương đến cùng.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Vì thương mến nhân gian
  Chúa Con xin đến thực hiện ý Cha.
  Nhận lãnh khổ hình yêu thương đến cùng.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Vì thương mến nhân gian
  Thánh Linh ban xuống muôn muôn phúc ân.
  Hằng sáng soi bước đi lên tới cùng.
}

loiDiepKhucSop = \lyricmode {
  Nay con muốn đáp đền tình Chúa không bờ không bến.
  Xin là tấm bánh bẻ ra để muôn người bổ dưỡng.
  Xin là đầy tớ trung kiên phục vụ Chúa và anh em.
}

loiDiepKhucBas = \lyricmode {
  Nay con muốn đáp đền tình Ngài không bờ không bến.
  Xin là tấm bánh bẻ ra để muôn người bổ dưỡng.
  Xin là đầy tớ trung kiên phục vụ Chúa và anh em.
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
  %page-count = #2
  %systems-per-page = 5
  ragged-bottom = ##f
}

TongNhip = {
  \time 2/4
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
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
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
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucSop
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
