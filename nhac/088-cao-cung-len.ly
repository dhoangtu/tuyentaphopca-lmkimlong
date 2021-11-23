% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Cao Cung Lên" }
  poet = "Thơ: Lm. Xuân Ly Băng"
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
  \partial 4 g8 (a) |
  c4. e8 |
  d d16 (c) a8 a |
  a2 |
  b8 d4 b8 |
  c2 |
  r8 g g gs |
  a2 |
  d,8 f4 g8 |
  g2 ~ |
  g4 r8 \bar "||" \break
  
  g |
  c4. c8 |
  b8. d16 d8 e |
  e,16 (f g4) f16 e |
  d4. b'8 |
  b4 b8
  \afterGrace bf8 ({
    \override Flag.stroke-style = #"grace"
    a16)}
  \revert Flag.stroke-style
  a2 ~ |
  a4 r8 c16 c |
  c4. c8 |
  e8. b16 d8 c |
  a4 r8 f16 a |
  b4. c8 |
  d, f4 b,8 |
  c2 ~ |
  c4 \bar "||" \break
  
  r4 \bar "|."
  r8 \once \stemUp e'4
  \tweak extra-offset #'(0 . 2.2)
  _\markup { \rest #"2" }
  \once \stemUp c8 |
  d2 ~ |
  d4 r8 c16 c |
  c8 c16 c c8 c |
  e c4 a8 |
  g4 r8 d'16 d |
  d8 d16 d d8 d |
  f8 d4 b8 |
  a4 r8 g8 ^> ~ |
  g c c b |
  a d4 e8 |
  e2 ~ |
  e4 r8 c16 c |
  c8 c16 c c8 c |
  c a4 a8 |
  g4 r8 d'16 d |
  d8 d16 d d8 d |
  d b4 b8 |
  a4 r8 b ^> ~ |
  b g a g |
  d'2 |
  r8 b4 b8 |
  c2 ~ |
  c4 r8 \bar "|." \break
  
  g |
  c4. c8 |
  b8. d16 d8 e |
  e,16 (f g4) f16 e |
  d4. d8 |
  b'4 a8 b |
  a2 ~ |
  a4 r8 d16 c |
  c4. c8 |
  e b4 b8 |
  d4 r8 c16 c |
  b4. a8 |
  f g4 g8 |
  b,4 (c ~ |
  c)
  <<
    \new Voice = "splitpart" {
      \voiceOne
      r4
    }
    {
      \voiceTwo
      c8 (d)
    }
  >>
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c'' {
  g8 (f) |
  e4. c'8 |
  a [g] e g |
  fs2 |
  d8 a'4 d,8 |
  e2 |
  r8 e e d |
  c2 |
  a8 d4 e8 |
  d2 ~ |
  d4 r8
  
  r8 |
  R2*13
  r4
  
  r4 |
  R2
  r8 c'4 _\markup { "hay" }
  c8
  \tweak extra-offset #'(-0.5 . -0.5)
  _\markup { "chim" } |
  b4 _\markup { "ơi" } r8 g16 g |
  a8 a16 a a8 a |
  g a ([f]) e |
  d4 r8 a'16 a |
  b8 b16 b b8 b |
  a b ([g]) f |
  e4 r8 d8 ~ |
  d e e d |
  c a'4 a8 |
  gs2 ~ |
  gs4 r8 a16 a |
  g8 g16 g g8 g |
  a f4 e8 |
  d4 r8 b'16 b |
  a8 a16 a a8 a |
  b8 g4 f8 |
  e4 r8 d ~ |
  d c c c |
  f2 |
  r8 d4 d8 |
  e2 ~ |
  e4 r8
}

nhacDiepKhucBas = \relative c {
  r4 |
  r c |
  f8 b, c cs |
  d2 |
  g8 fs4 g8 |
  c,2 |
  r8 c c b |
  a2 |
  f'8 <a d,> 4 <c d,>8 |
  <b g>2 ~ |
  <b g>4 r8
  
  r8 |
  R2*13
  r4
  
  c,8 (d) |
  g2 ~ |
  g4 f8 fs |
  g4 r8 e16 e |
  f8 f16 f f8 f |
  c
  <<
    {
      \voiceOne
      f ([a])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1
      f4
    }
  >>
  \oneVoice
  <c' fs,>8
  <b g>4 r8 f16 f |
  g8 g16 g g8 g |
  d8
  <<
    {
      \voiceOne
      g8 ([b])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1
      g4
    }
  >>
  \oneVoice
  <d' gs,>8 |
  <c a>4. b8 ^> ~ |
  b a a g |
  a f4 f8 |
  e2 ~ |
  e4 r8 f16 f |
  e8 e16 e e8 e |
  f
  <<
    {
      \voiceOne
      f8 ([a])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1
      f4
    }
  >>
  \oneVoice
  <c' fs,>8 |
  <b g>4 r8 g16 g |
  f8 f16 f f8 f |
  g
  <<
    {
      \voiceOne
      g8 ([b])
    }
    \new Voice = "splitpart" {
      \voiceTwo
      \once \override NoteColumn.force-hshift = #1
      g4
    }
  >>
  \oneVoice
  <d' gs,>8 |
  <c a>4 r8 g ^> ~ |
  g g f e |
  d2 |
  r8 <g g,>4 <g g,>8 |
  <g c,>2 ~ |
  <g c,>4 r8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Hồn ơi thắp lên hai hàng bạch lạp,
  vạn nén trầm hương
  Cho ta ca hát
  Bài thơ yêu thương.
  
  Hồn ơi.
  Em là con chim bé dại của Vua Trời,
  cất cánh mỗi đêm bay
  Trong không gian đâu thoát sợi tơ vương này,
  Bủa giăng khắp lưới tình yêu lồng lộng.
  
  Ớ hồn ơi
  Tung cao lên, tung cao lên cao vút lên tận trời,
  Tung cao lên, tung cao lên cao vút lên tận trời
  Nhạc say sưa trong lòng chim kính mến
  Cho âm thanh, cho âm thanh đến muôn đời tuyền vẹn,
  Cho âm thanh, cho âm thanh đến muôn đời tuyền vẹn
  Khúc trường ca Tình Ái diệu huyền thay.
  
  Hồn ơi,
  Em là con chim bé dại của Vua Trời,
  hồn hãy ca hát lên
  Ý yêu thương bằng khúc nhạc cuồng điên,
  Hãy hát lên cho lòng chim no thỏa.
  Hồn
}

loiDiepKhucBas = \lyricmode {
  Hồn ơi này hàng bạch lạp
  Vạn ngàn nén hương
  Cho ta ca hát
  <<
    {
      Bài thơ mến thương.
    }
    \new Lyrics {
	    \set associatedVoice = "beSop"
	    \override Lyrics.LyricText.font-shape = #'italic
      Ý thơ tình thương.
	  }
  >>
  Hồn ơi hay chim ơi
  Tung cao lên, tung cao lên cao vụt đến tận trời,
  Tung cao lên, tung cao lên cao vụt đến tận trời
  Nhạc say sưa trong lòng chim kính mến.
  Cho âm thanh, cho âm thanh đến muôn đời nguyên vẹn.
  Cho âm thanh, cho âm thanh đến muôn đời nguyên vẹn
  Khúc thương ca Tình dài diệu huyền thay.
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
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
