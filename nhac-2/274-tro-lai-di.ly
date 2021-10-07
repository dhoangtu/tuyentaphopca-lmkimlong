% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trở Lại Đi" }
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

nhacDiepKhucSop = \relative c' {
  R2*3
  f8 f4 f8 |
  g2 |
  bf8 bf4 bf8 |
  a4 r |
  R2
  r4 r8 g |
  g g f (g) |
  a4 a8 bf |
  g a bf (d) |
  a4. e'8 |
  e a, f' (e) |
  d4 r8 d |
  bf g4 g8 |
  a4 r8 a |
  f d4 d8 |
  e4 a8 a |
  c4. cs8 |
  d2
  ^\markup { \halign #-2 \fontsize #2 \bold "Tận" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  R2*3
  d8 d4 d8 |
  e2 |
  d8 d4 g8 |
  f4 r |
  r f8 g16 (f) |
  d8 d g g |
  f e d4 |
  cs r4 |
  R2
  r4 r8 g' |
  g e a (g) |
  f4 r8 fs |
  g e4 e8 |
  f4 r8 f |
  d8 d4 d8 |
  cs4 d8 d |
  g4 g |
  f2
}

nhacDiepKhucBas = \relative c {
  r4 a8 a |
  c4. cs8 |
  d2 ~ |
  d4 r8 d |
  c8 c4 c8 |
  bf4 g |
  d' g8 a |
  f g d (e) |
  f4. bf8 |
  b! c d (bf) |
  a4 r |
  r g8 a16 (g) |
  f8 d' c c |
  g (a) a,4 |
  d r
  r r8 c' |
  f, f4 f8 |
  bf4. bf8 
  a a4 f8 |
  e4 a |
  d,2
}

nhacPhienKhuc = \relative c'' {
  a8 f4 e8 |
  d4. d8 |
  a' g (a) bf |
  a2 |
  d8 d bf g |
  a4. g8 |
  d (e) g g |
  f2 |
  e8 e4 e8 |
  bf'4 bf8 bf |
  e, e4 e8 |
  e4. g8 ~ |
  g4 r8 f |
  f g a e |
  d2 ~ |
  d4 \bar "||"
}

% Lời
loiDiepKhucSop = \lyricmode {
  Trở lại cùng ta Đấng cứu thoát con.
  tan ra như làn khói.
  Ta sẽ làm cho lỗi con biến mất tựa áng mây.
  Hãy trở lại cùng ta.
  Hãy trở lại cùng ta.
  Trở lại đi con ơi.
}

loiDiepKhucAlto = \lyricmode {
  Trở lại cùng ta Đấng cứu thoát con.
  Ta sẽ làm tội con tan ra như làn khói.
  biến mất tựa áng mây.
  Hãy trở lại cùng ta.
  Hãy trở lại cùng ta.
  Trở lại đi con ơi.
  
}

loiDiepKhucBas = \lyricmode {
  Trở lại đi con ơi.
  Hãy mau mau trở lại, hỡi con.
  Ta sẽ làm cho tội con tan ra như khói mở.
  Ta sẽ làm lỗi con biến tựa làn mây.
  Hãy trở lại cùng ta.
  Hãy mau mau trở lại con hời.
}

loiPhienKhucMot = \lyricmode {
  \set stanza = #"1."
  Hãy rửa cho sạch, và hãy tẩy trắng tinh.
  Hãy vứt bỏ tội con cho khỏi chướng mắt ta.
  Đừng làm điều ác nữa, hãy tập làm điều thiện luôn,
  và tìm theo lẽ công bình.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = #"2."
  Hãy nhận tội tình, và giao hòa với ta.
  Dẫu các lỗi lầm xưa hoen đỏ thắm nét son.
  Cũng sạch tựa tuyết trắng,
  cũng làu làu sạch tựa bông
  và lòng con sẽ an bình.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = #"3."
  Hãy nhỏ lệ sầu, và hối hận khóc than.
  Xé nát tâm hồn con, thôi đừng xé áo con.
  Trở về tìm kiếm Chúa, Đấng hiền hậu và từ bi,
  Ngài hằng trung tín muôn đời.
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
  %page-count = #2
  %systems-per-page = 5
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
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacDiepKhucSop
        }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
        }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    \new Staff <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override LyricHyphen.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}
