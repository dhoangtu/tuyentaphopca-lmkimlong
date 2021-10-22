% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hiệp Thông Và Phục Vụ" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 4. c8 a16 (g) f8 \bar ".|:"
  g4. e8 |
  f4 g8 a |
  c,4 r8 c |
  f4 g |
  a4. a8 |
  f a bf8. bf16 |
  bf8 a4 a8 |
  a g a bf |
  c4. bf8 |
  d4 g,8 bf |
  c2 |
  d8 bf g bf |
  a4. g8 |
  g c a g |
  f2 ~ |
  f4 r
  ^\markup { \fontsize #1 \bold "Tận" }
  \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  c8 a16 (g) f8 \bar ".|:"
  g4. e8 |
  f4 g8 a |
  c,4 r8 c |
  f4 e |
  f4. d8 |
  c c g'8. f16 |
  e8 f4 f8 |
  e e e f |
  f4. f8 |
  a4 d,8 f |
  g2 |
  f8 f d d |
  c4. b!8 |
  c e f c |
  a2 ~ |
  a4 r
}

nhacDiepKhucBas = \relative c' {
  r4. |
  r8 bf bf16 (a) g8 |
  a4. d,8 |
  e4 g |
  a8 a4 c,8 |
  f4 g |
  a8 f g8. g16 |
  g8 f4 c'8 |
  c bf c d |
  a4 g |
  f g8 f |
  e8. e16 f8 e |
  d4 g |
  f8 a f f |
  e (c) d e |
  f2 ~ |
  f4 r
}

nhacPhienKhucSop = \relative c'' {
  a8 a a16 (g) f8 |
  g4. g8 |
  f f e4 ~ |
  e8 e e f16 (a) |
  d,4 r8 d |
  e16 (d) c8 c4 |
  c8 a' g f |
  bf4. g8 |
  c e,4 g8 |
  f2 |
  g8 c a16 (g) f8
}

nhacPhienKhucBas = \relative c' {
  R2
  r8 bf bf16 (a) g8 |
  a4. a8 |
  c4 a8 a |
  bf4 r8 f |
  g16 (f) e8 e4 |
  R2
  d8 g f e |
  a4 c8 bf |
  a8. g16 a8 f |
  e4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chúa đã chọn con phục vụ Dân thánh Ngài,
  Này con xin đến,
  Xin tình yêu Chúa thúc bách con,
  cho con hiệp thông với Chúa,
  hiệp nhất cùng anh em,
  Sống trọn đời hiến dâng phục vụ Chúa trong muôn người.
}

loiDiepKhucBas = \lyricmode {
  Chúa đã chọn con phục vụ Dân thánh Chúa
  Này con xin chính tình Chúa thúc bách con,
  cho con hiệp thông với Ngài
  hiệp nhất với anh em
  hiệp nhất nên một hiến dâng
  quyết tâm phục vụ trong muôn người.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Chúa đã đến trần gian
  không phải để được người hầu kẻ hạ,
  nhưng để hầu hạ, và hiến dâng mạng sống
  làm giá chuộc muôn người.
  Nay Chúa muốn chọn
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Chúa biết rõ là con thân phận mọn hèn,
  nào tài đức gì,
  Nhưng vẫn gọi mời và dẫn đưa từng bước,
  từng bước cùng song hành.
  Do Chúa muốn chọn bước mãi song hành,
  luôn mãi song hành.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Chúa đã muốn là ai vui nhận trở thành một người lãnh đạo
  thì hãy phục vụ và trở nên đầy tớ,
  đầy tớ của muôn người.
  Nên Chúa đã chọn
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Chúa đến trần gian không để được hầu hạ,
  nhưng để hầu hạ và hiến dâng mạng sống
  cứu muôn người, để cứu muôn người.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Chúa biết là con hẹn mọn tại lực chi,
  nhưng vẫn gọi mời và dẫn đưa
  từng bước mãi song hành, luôn mãi song hành.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Chúa muốn là ai vui lãnh nhiệm vụ cao thì hãy phục vụ
  và trở nên đầy tớ của muôn người,
  tôi tớ muôn người.
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff
      <<
      \new Voice = beBas {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    %\override Lyrics.LyricText.font-size = #+2.2
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

