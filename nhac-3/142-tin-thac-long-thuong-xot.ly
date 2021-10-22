% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tín Thác Lòng Thương Xót" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \partial 4 e4 |
  a2 ~ |
  a8 e e a |
  \slashedGrace { d,16 ( } e2) ~ |
  e ~ |
  e4 c'8 b16 (c) |
  d2 ~ |
  d4 d8 d |
  c d e16 (c) a8 |
  b2 ~ |
  b4 r |
  r r8 b |
  b d c b |
  e4 r \bar "||"
  
  \key a \major
  cs8 cs d d |
  d4. b8 |
  b cs d16 (cs) a8 |
  b2 ~ |
  b8 gs a e |
  cs'4 b8 (cs16 b) |
  a2 ~ |
  a4 \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  e4 |
  a2 ~ |
  a8 e e a |
  \slashedGrace { d,16 ( } e2) ~ |
  e ~ |
  e4 e8 [e] |
  a4. (c8 |
  b4) b8 b |
  e, e e [
  \once \override NoteColumn.force-hshift = #1.5
  a] |
  gs2 ~ |
  gs4 r |
  r r8 f |
  f a a a |
  gs4 r |
  
  \key a \major
  e8 e a b |
  a4. a8 |
  gs a b16 (a) e8 |
  fs4. fs8 |
  e [e] e e |
  e4 d |
  cs2 ~ |
  cs4
}

nhacDiepKhucBas = \relative c {
  r4 |
  R2*2
  r4 r8 e |
  c'8. b16 c8 d16 (e) |
  a,2 ~ |
  a8 f f d |
  g4 gs8 gs |
  a a g f |
  e4 r8 e |
  e f e e |
  d2 ~ |
  d4 r |
  r8 b' e, e |
  
  \key a \major
  a4 a8 g! |
  fs2 |
  e8 e e e |
  ds4 cs8 (ds) |
  e4 a8 gs |
  a4 <gs e> |
  a2 ~ |
  a4
}

nhacPhienKhucSop = \relative c'' {
  a8 a a g |
  a4. c8 |
  b2 ~ |
  b8 e e a, |
  d2 |
  c8 c e (d16 c) |
  a2 ~ |
  a4 \bar "||"
}

nhacPhienKhucBas = \relative c' {
  R2
  c8 c c a |
  d4. d8 |
  c4 c8 c |
  b8. b16 b8 g |
  a8. a16 a8 d |
  c2 ~ |
  c4
}

% Lời
loiDiepKhucAlto = \lyricmode {
  Lạy Cha, đầy lòng trắc ẩn
  con chạy đến van xin lòng thương xót của Cha
  Dù sự xúc phạm chồng chất
  Nhưng con vẫn tín thác vào lòng thương xót của Cha,
  của Cha vì Cha là Đấng xót thương.
}

loiDiepKhucBas = \lyricmode {
  Là Đấng duy nhất tốt lành,
  nay con chạy đến van xin lòng thương xót của Cha,
  dù tội lỗi con nặng nề xúc phạm chồng chất
  vẫn tín thác lòng thương xót của Cha, của Cha,
  Cha là Đấng dủ thương.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Xưa nay chưa từng nghe có ai tín thác vào Cha
  mà bị thất vọng.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Ai vương mang tội khiên đớn đau thống hối cùng Cha
  nào bị chối từ.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Ai hoang mang sầu lo,
  Chúa thương xuống phúc bình an là họ vững lòng.
}

loiPhienKhucSopBon = \lyricmode {
  \set stanza = #"4."
  Xin lương y từ nhân đoái trông hết những khổ đau
  nhiệt tình chữa lành.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = #"1."
  Xưa nay chưa từng nghe có ai tín thác Cha,
  tín thác vào Cha mà bị thất vọng.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = #"2."
  Ai vương mang tội khiên
  đớn đau, biết đớn đau thông hối cùng Cha
  nào bị chối từ.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = #"3."
  Ai hoang mang sầu lo, Chúa thương, Chúa đoái thương
  xuống phúc bình an là họ vững lòng.
}

loiPhienKhucBasBon = \lyricmode {
  \set stanza = #"4."
  Xin lương y từ nhân đoái trông những khổ đau,
  hết những khổ đau nhiệt tình chữa lành.
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
  \key c \major \time 2/4
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
      \new NullVoice = beSop \nhacDiepKhucAlto
      \new Lyrics \lyricsto beSop \loiDiepKhucAlto
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
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBon
      >>
    \new Staff
      <<
      \new Voice = beBas {
        \clef bass \TongNhip \nhacPhienKhucBas
      }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBon
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

