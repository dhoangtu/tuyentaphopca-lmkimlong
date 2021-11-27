% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Say Noel" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \time 2/4
  R2
  b8 b b16 (d) b (a) |
  g4. fs8 |
  g4 d' ^> ( |
  c) b |
  a r8 a |
  b b4 d8 |
  c4. fs,8 |
  fs <a fs>4 g8 |
  g2 |
  b8 b16 (a) g8 g16 (a) |
  d4. b8 |
  a4 d8 d |
  cs4 cs8 cs |
  d2 ~ |
  d4 r |
  R2*2
  \slashedGrace { e,16 ( } g4.) g8 |
  a (g) g4 |
  g2 ~ |
  g4 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  \time 2/4
  R2*2
  d8 d d16 (e) d (c) |
  b4. g'8 |
  e4 g8 g |
  fs4 r8 fs |
  g g4 e8 |
  e4. e8 |
  d c4 c8 |
  b2 ~ |
  b4 r |
  R2
  fs'8 fs16 (e) d8 d16 (e) |
  a8 a16 a g8 g |
  fs2 ~ |
  fs4 r8 g |
  g (fs) g a |
  b4 d,8 ^> d ^> |
  e2 |
  ef |
  d2 ~ |
  d4 r8
}

nhacDiepKhucBas = \relative c' {
  \time 2/4
  b8 b b16 (d) b (a) |
  g4. d8 |
  b'4 a8 a |
  g4. b,8 |
  c4 cs8 cs |
  d4 r |
  r g,8 a |
  c4 c |
  d d8 ^> g |
  g2 ~ |
  g4 r |
  b8 b16 (a) g8 g16 (a) |
  d4 b8 b |
  a4. a8 |
  d2 ~ |
  d4 r8 b |
  b (a)
  <<
    {
      b8 a |
      g4 g8 ^> g |
      g2 |
      c |
      b ~ |
      b4
    }
    {
      g8 fs |
      e4 b8 b |
      c2 |
      c |
      g ~ |
      g4
    }
  >>
  \oneVoice
  r8
}

nhacPhienKhucSop = \relative c'' {
  \time 3/8
  \partial 8 b8 |
  b8. b16 c8 |
  c4 a8 |
  a8. a16 cs8 |
  d4. ~ |
  d4 b8 |
  b8. c16 b8 |
  e,4 e8 |
  ef8. d16 fs8 |
  g4. ~ |
  g4 r8 \bar "||" \break
  
  \partial 8 d'8 |
  d8. d16 cs8 |
  d4 c!?8 |
  c8. c16 b8 |
  a4. ~ |
  a4 a8 |
  a8. e16 fs8 |
  d4 d8 |
  ef8. d16 fs8 |
  g4. ~ |
  g4 r8 \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  \time 3/8
  g8 |
  g8. g16 a8 |
  a4 g8 |
  fs8. fs16 e8 |
  fs4. ~ |
  fs4 g8 |
  g8. e16 d8 |
  c4 c8 |
  c8. c16 d8 |
  b4. ~ |
  b4 r8 |
  
  b'8 |
  b8. b16 as8 |
  b4 a!?8 |
  a8. a16 g8 |
  fs4. ~ |
  fs4 e8 |
  d8. c16 a8 |
  c4 b8 |
  c8. c16 d8 |
  b4. ~ |
  b4 r8
}

nhacCodaSop = \relative c'' {
  \time 3/8
  g4 g8 |
  g8. g16 g8 |
  d4 d8 |
  e r16 c' c8 |
  a4 a8 |
  b4. ~ |
  b4 r8 \bar "|."
}

nhacCodaAlto = \relative c'' {
  \time 3/8
  g4 g8 |
  g8. g16 g8 |
  d4 d8 |
  e r16 e e8 |
  e4 e8 |
  d4. ~ |
  d4 r8
}

nhacCodaTenor = \relative c' {
  \time 3/8
  g4 g8 |
  g8. g16 g8 |
  d4 d8 |
  e r16 a g8 |
  fs4 fs8 |
  g4. ~ |
  g4 r8
}

nhacCodaBas = \relative c' {
  \time 3/8
  g4 g8 |
  g8. g16 g8 |
  d4 d8 |
  e r16 a, a8 |
  d4 d8 |
  g,4. ~ |
  g4 r8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Đêm nay No -- el về,
  Hồn hỡi hãy tai nghe.
  Đàn muôn cung réo rắt
  Dồn dập khắp sơn khê,
  Đêm nay Hài Đồng đến,
  đêm nay đem hoan lạc của trời cao
  Sẽ say ngã lao đao.
}

loiDiepKhucAlto = \lyricmode {
  Đêm nay No -- el về,
  hồn hỡi lắng tai nghe,
  Đàn muôn cung réo rắt
  Dồn dập khắp sơn khê.
  Đêm nay Hài Đồng đến đem hoan lạc trời cao
  Đêm nay thơ kính mến,
  đêm nay sẽ lao đao.
}

loiDiepKhucBas = \lyricmode {
  Đêm nay No -- el về hồn hỡi,
  No -- el về hồn hỡi lặng tai nghe.
  Đàn muôn cung dồn dập cả sơn khê.
  Đêm nay Hài Đồng đến đem hoan lạc trời cao
  Đêm nay thơ kính mến,
  đêm nay sẽ lao đao.
}

loiPhienKhucSop = \lyricmode {
  \set stanza = #"1."
  Ta say muôn ánh nến
  Ngời rạng vạn hào quang.
  Ta say tiếng chuông vang,
  Từng trận đổ vang vang.
  
  \set stanza = "2."
  Ta say muôn lời kinh
  Thơm như hoa Thiên đình,
  Êm như lòng suối nhạc,
  Đẹp như lệ đồng trinh.
}

loiCoda = \lyricmode {
  Ôi No -- el, ôi đêm trời mầu nhiệm,
  Ôi đêm trời mầu nhiệm.
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
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
  %systems-per-page = 5
}

TongNhip = {
  \key g \major
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
      \new Voice = "beSop" {
        \clef treble \TongNhip \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \TongNhip \nhacDiepKhucAlto
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
    \override Lyrics.LyricSpace.minimum-distance = #2.0
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
      \new Voice \TongNhip \partCombine 
        \nhacPhienKhucSop
        \notBePhu -2 { \nhacPhienKhucAlto }
      \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
      >>
  >>
  \layout {
    %\override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2
    \override LyricHyphen.minimum-distance = #2
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  } 
}

\score {
  \new PianoStaff \with {
    instrumentName = \markup { \bold "CODA" }}
  <<
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine 
        \nhacCodaSop
        \notBePhu -2 { \nhacCodaAlto }
      \new NullVoice = beSop \nhacCodaSop
      \new Lyrics \lyricsto beSop \loiCoda
      >>
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef bass
        \new Voice \TongNhip \partCombine 
          \nhacCodaTenor
          \notBePhu -2 { \nhacCodaBas }
        \new NullVoice = beBas \nhacCodaTenor
        \new Lyrics \lyricsto beBas \loiCoda
    >>
  >>
  \layout {
    ragged-right = ##f
    indent = 20
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
