% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Đời Không Có Chúa" }
  poet = "Lời: Thánh Têrêsa Giêsu"
  composer = "Thơ dịch: Lm. Đỗ xuân Quế"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c' {
  \autoPageBreaksOff
  \partial 8 c8 |
  e4. g16 a |
  a4. a8 |
  f c'4 a8 |
  g4 r8 g |
  c4. c16 e |
  a,4. f8 |
  a c4 a8 |
  g2 \bar "||"
  <<
    {
      g8. g16 g8 e |
      f4. f8 |
      g a4 g8 |
      e2 |
      c'8. b16 c8 d |
      e4. e8 |
      b8 c4 a8 |
      g4
    }
    {
      e8. e16 e8 c |
      d4. c8 |
      b a4 b8 |
      c2 |
      e8. d16 e8 g |
      c4. a8 |
      g a4 f8 |
      e4
    }
  >>
  r8 \bar "||" \break
  
  \partial 8 e8 |
  f4. f16 e |
  a4. a8 |
  f c'4 a8 |
  g2 ~ |
  g4 r8 g |
  c4. e16 c |
  b4. b8 |
  d c4 a16 (c) |
  g2 ~ |
  g4 r \bar "||"
  R2
  c8. c16 d16 (c) g8 |
  a4 c |
  b8 a b b16 c |
  b8 a e'4 ~ | \pageBreak
  e c ~ |
  c8 b c d |  
  g,2 |
  g8. g16 e8 e |
  a4. c8 |
  b4. a16 a |
  g8 g d'4 |
  d8 (c) b4 |
  c2 ~ |
  c ~ |
  c4 r \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  r8
  R2*15
  r4.
  r8
  <<
    {
      \voiceOne
      d2 ~ |
      d8 e16 d c4 ~ |
      c d8 c
    }
    \new Voice = "splitpart" {
      \voiceTwo
      f,2 ( |
      e) ( |
      f)
    }
  >>
  \oneVoice
  <<
    {
      b8 r16 c c8 a |
      g4 r |
    }
    {
      d8 r16 e e8 c |
      b4 r
    }
  >>
  <<
    {
      \voiceOne
      e4 e' ~ |
      e8 d c b |
      a2 |
    }
    \new Voice = "splitpart" {
      \voiceTwo
      c,2 |
      d |
      d8 e d c
    }
  >>
  \oneVoice
  <g' b,>8 r16
  \once \override NoteColumn.X-offset = 0.5 <>
  <<
    {
      d' d8 d16 (e) |
      c4 r |
    }
    {
      f,16 f8 f16 (g) |
      e4 r
    }
  >>
  R2*2
  f8. f16 g (f) c8 |
  d4 f |
  e8 e16 a gs8 gs |
  a2 ~ |
  a8 f e f |
  d8. d16 f8 f |
  e4 r |
  R2
  d8. d16 b8 b |
  e4 f |
  e8 e16 e g8 g |
  f (d) g (f) |
  e2 ~ |
  e4 r
}

nhacDiepKhucBas = \relative c' {
  r8
  R2*15
  r4.
  r8
  d2 |
  a ~ |
  a4 f |
  g8 r16 c c,8 f |
  g4 r |
  a2 |
  gs |
  a4 fs |
  a8 r16
  \once \override NoteColumn.X-offset = 0.5 <>
  <b g> <b g>8 <b g> |
  <g c,>4 r |
  g8. g16 a (g) d8 |
  e4 d8 (e) |
  f4 e8 (f) |
  g4 d |
  e8 e16 f e8 e |
  a2 ~ |
  a8 d c c |
  b8. g16 a8 b |
  c4 r |
  f,8. f16 d8 d |
  g4. g,8 |
  c c16 c f8 d16 d |
  g4 g |
  <g c,>2 ~ |
  <g c,> ~ |
  <g c,>4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Cuộc đời không có Chúa ôi buồn thảm biết bao
  Vì mong được thấy Ngài mà con phải tiêu hao
  Con không sao chịu nổi phải xa cách nhan Ngài
  Xin hãy mau chấm dứt nỗi lòng con bồi hồi
  Hồn con đi tìm Chúa Chúa lẩn trốn nơi nao?
  Chẳng nghe tiếng kêu gào mà đoái thương đáp lời.
  Xin nâng đỡ hồn con Chúa ơi
  hồn con đang khát mong tìm Chúa
  xin bẻ tan xích xiềng.
  Cho con được hạnh phúc, Chúa ơi,
  cho con được hạnh phúc, Chúa ơ ơi
}

loiDiepKhucAlto = \lyricmode {
  Hm __ \repeat unfold 6 { _ }
  Chúa trốn nơi nao?
  Hm __ \repeat unfold 6 { _ }
  xin thương đáp lời.
  Xin nâng đỡ hồn con Chúa ơi
  hồn khát mong tìm Chúa
  bẻ tan xích xiềng, bẻ tan xích xiềng.
  Cho con được hạnh phúc Chúa ơi, được hạnh phúc,
  Chúa ơi, Chúa ơi.
}

loiDiepKhucBas = \lyricmode {
  Hm __ _ _ _
  Chúa ẩn nơi nao?
  Hm __ _ _ _ _
  xin thương đáp lời.
  Xin nâng đỡ hồn con, hồn con, hồn con hồn con
  đang khát mong tìm Chúa
  bẻ tan xích xiềng, bẻ tan xiềng xích.
  Cho con được hạnh phúc, hạnh phúc,
  được hạnh phúc được hạnh phúc Chúa ơi.
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
  page-count = #2
  ragged-bottom = ##t
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
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricSpace.minimum-distance = #0.8
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    %\override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
