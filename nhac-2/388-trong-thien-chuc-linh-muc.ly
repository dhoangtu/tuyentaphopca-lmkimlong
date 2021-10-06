% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Trong Thiên Chức Linh Mục" }
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

nhacPhienKhucSop = \relative c'' {
  \partial 8 a16 a |
  <<
    {
      \voiceOne
      a8 b gs4 |
      d'8\rest e c16 b a8 |
      b4 d8\rest d16 d |
      c8 d e4 |
      d8\rest e, b'16 a gs8 |
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      e4 c8\rest d |
      c4 e\rest |
      e8\rest <a f>8 <gs b,>4 |
      a f8\rest <gs b,>8 |
      <a a,>4 f8 d
    }
  >>
  \oneVoice
  <a' e c>4 r | \break
  
  c8. b16 b8 \once \stemDown b ~ |
  \once \stemDown b a16 a b8 a |
  gs2 ~ |
  gs8 r r4 |
  r r8 c16 b |
  a8 a g16 (a) b8 |
  e,4. e16 e |
  b'8 d c16 (b) gs8 |
  a2 ~ \bar "||"
  
  \key a \major
  a4 r | \break
  
  cs8. cs16 cs8 cs |
  d e4 cs16 cs |
  fs8 e d cs |
  b2 |
  cs8. cs16 a8 d |
  cs b4 b16 b |
  e8 d b gs |
  a2 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  \skip 8
  \repeat unfold 6 { \skip 2 }
  c8. b16 b8 b |
  b e,16 e f8 f |
  e2 ~ |
  e8 r r4 |
  r r8 a16 g |
  f8 f d [d] |
  c4. c16 c |
  f8 f e [d] |
  cs2 ~ |
  
  \key a \major
  cs4 r |
  
  e8. e16 e8 e |
  fs b4 a16 a |
  a8 a fs a |
  gs2 |
  gs8. gs16 fs8 fs |
  fs16 (e) ds4 ds16 ds |
  e8 fs e d |
  cs2
}

nhacPhienKhucBas = \relative c {
  r8 |
  e4 r8 e |
  a4 r |
  r8 d, e4 |
  <a f>4 r8 d, |
  c4 d8 e |
  a,8. c16 e8 a |
  
  c8. b16 b8 b ~ |
  b c16 c d8 d, |
  e4. e8 |
  d'8. e16 d8 c |
  a b4 r8 |
  r d,16 d e8 g |
  a8. g16 f8 e |
  d4 e |
  a,2 ~ |
  
  \key a \major
  a4 r |
  
  a'8. a16 a8 a |
  a gs4 a16 a |
  d,8 cs d ds |
  e2 |
  e8. e16 fs8 b, |
  as b4 b16 b |
  cs8 d e e |
  a,2
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \repeat unfold 20 { _ }
  \set stanza = "1."
  Suốt bao năm qua trong thiên chức Linh mục.
  Dẫn đưa con trên mọi bước đường
  cuộc đời con chứa chan tình thương.
  
  \set stanza = "ĐK:"
  Nay con xin dâng lên Chúa lời cảm mến tri ân trọn niềm.
  Xin cho đời sống con đây thành của lễ hiến dâng ngày đêm.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 20 { _ }
  \set stanza = "2."
  Suốt bao năm qua kinh qua những thăng trầm.
  Phút trung tinh hay giờ lỗi lầm
  tình Ngài con khắc ghi thẳm sâu.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 20 { _ }
  \set stanza = "3."
  Suốt bao năm qua ơn Thiên Chúa hộ phù.
  Lấy yêu thương xua dịu oán thù
  và truyền rao phúc ân bình an.
}

loiPhienKhucBasMot = \lyricmode {
  \repeat unfold 14 { _ }
  \set stanza = "1."
  Suốt bao năm qua trong thiên chức Linh mục
  bàn tay Chúa luôn độ trì con
  dẫn đưa con trên đường suốt cả cuộc đời mến thương.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 14 { _ }
  \set stanza = "2."
  Suốt bao năm qua kinh qua những thăng trầm
  từng khi sướng vui khi khổ đau
  và từng khi lỗi lầm vẫn ghi ân tình thẳm sâu.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 14 { _ }
  \set stanza = "3."
  Suốt bao năm qua ơn Thiên Chúa hộ phù
  cùng con ruổi rong giữa trần gian
  làm dịu đi hận thù
  phúc ân rao truyền vĩnh an.
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
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
