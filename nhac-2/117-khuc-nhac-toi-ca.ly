% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Khúc Nhạc Tôi Ca" }
  poet = "Ý: Is. 12, 2-6"
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

nhacDiepKhucSop = \relative c'' {
  R2*2
  r4 c8 c b16 (c d4) a8 |
  b ^> c ^> a4 ^> |
  g2 ~ |
  g4 r |
  r8 g4 e'8 |
  c d d4 ~ |
  d8 d b c |
  c a4 f'8 |
  f2 |
  f8. ^> f16 d8 d |
  g b,4 c8 |
  c2 ~ |
  c4 r8 \bar "|." \break
  
  r8 |
  R2*3
  r8 c, a' a16 g |
  g8 e c' c16 c |
  b2 |
  d8. ^> b16 c8 c |
  a a4. |
  f8. f16 d8 g |
  g c,4. ~ |
  c4 r |
  r r8 b'16 c |
  d8 e e4 |
  a,8. ^> [f'16] e8 e |
  c d4 g,16 [g] |
  g8. [e'16] d8 d |
  b c4 c8 |
  a a a4 |
  g2 ~ |
  g4 r \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  R2*2
  r4 e8 e |
  d16 (e g4) fs8 |
  g ^> g ^> f4 |
  e2 ~ |
  e4 r |
  r8 g4 c8 |
  e, f f4 ~ |
  f8 g d e |
  e c4 a'8 |
  a2 |
  a8. a16 a8 a |
  g g4 e8 |
  e2 ~ |
  e4 r8
  
  r |
  R2*3
  r8 c f f16 f |
  e8 c a' a16 a |
  gs2 |
  d'8. b16 c8 c |
  a a4. |
  f8. f16 d8 g |
  g c,4. ~ |
  c4 r8 d16 e |
  f8 g g8. [e16] |
  a8 a gs4 |
  a8. a16 g8 g |
  a b4
  \once \tweak font-size #0
  g16
  [ \once \tweak font-size #0 g] |
  g8. g16 f8 f |
  f e4 e8 |
  e e d (c) |
  b2 ~ |
  b4 r
}

nhacDiepKhucBas = \relative c {
  e8 e f (c) |
  d a' a16 (g) fs8 |
  g2 ~ |
  g4 r |
  r r8 d |
  e ^> e ^> f16 ^> (e) d8 |
  c8. e16 d8 (e) |
  g2 ~ |
  g8 g d' c |
  b4 r |
  r8 e, a g |
  f8. c16 f8 (e) |
  d8. ^> d16 f8 f |
  e (f) g4 |
  <g c,>2 ~ |
  <g c,>4 r8
  <<
    {
      c8 |
      a c16 a g8 a |
      a f16 d g8 g
    }
    {
      e8 |
      f a16 f e8 e |
      f d16 c b8 b
    }
  >>
  c2 ~ |
  c4 r |
  r8 a' a a16 d, |
  e2 |
  d'8. ^> b16 c8 e, |
  f f4. |
  f8. f16 d8 g |
  f e r c16 d |
  e8 f f4 |
  d4. g16 (a) |
  f8 f e4 |
  r c'8 c |
  a g4 g16 f |
  e8. c16 f8 f |
  g g4
  <<
    {
      a8 |
      a g fs4 |
      g2 ~ |
      g4 r
    }
    {
      a,8 |
      b cs d4 |
      g,2 ~ |
      g4 r
    }
  >>
}

% Lời
loiDiepKhucSop = \lyricmode {
  Tôi tin tưởng và không khiếp sợ gì.
  Vì khúc nhạc tôi ca, khúc nhạc tôi ca là chính Chúa
  Đấng đã ban ơn Cứu Độ cho tôi.
  Ngày ấy hãy tung hô: Cảm mến Chúa chí nhân
  hãy loan báo khắp muôn dân bao công việc Chúa lẫy lừng.
  đàn ca lên kính Chúa vì Chúa ra tay hùng anh
  sự nghiệp Ngài khiến nơi nơi lừng danh,
  hãy hân hoan reo mừng.
}

loiDiepKhucAlto = \lyricmode {
  \override Lyrics.LyricText.font-shape = #'italic
  \repeat unfold 50 { _ }
  Đàn ca lên kính Chúa và tôn vinh Ngài
}

loiDiepKhucBas = \lyricmode {
  Đây Thiên Chúa là Đấng Cứu Độ tôi và tôi không khiếp sợ
  vì sức mạnh tôi nhạc khúc tôi ca,
  nhạc khúc tôi ca là Chúa,
  Ngài đã ban ơn để cứu tôi.
  Các ngươi sẽ hân hoan kín nước nơi dòng suối cứu độ.
  Cảm mến Chúa từ nhân hãy loan báo khắp muôn dân
  bao công việc Chúa lẫy lừng.
  Đàn ca lên kính Chúa, đàn ca lên kính Ngài
  ra tay dũng anh sự nghiệp Ngài làm nơi nơi vang danh,
  hãy hân hoan reo mừng.
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
      \new NullVoice = beSop \nhacDiepKhucSop
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
      \new NullVoice = beAlto \nhacDiepKhucAlto
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
