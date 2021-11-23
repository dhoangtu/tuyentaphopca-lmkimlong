% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Bờ Sông Babylon" }
  poet = "Ý: Tv. 136"
  composer = "Dịch: CGKPV"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \partial 8 r8
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
  R2
  r4.
  d16 d |
  cs4. d16 d |
  bf4. d8 |
  \slashedGrace { g,16 (bf } a2) ~ |
  a8 [a] a (d) |
  e8. (f16 e8) d |
  d2 ~ |
  d4 r |
  d8 e16 (d) cs8 d |
  e4. e16 d |
  f4. e16 (d) |
  a4. g8 |
  e a4 e8 |
  d2 ~ |
  d4 r8 \bar "|."
}

nhacDiepKhucAlto = \relative c' {
  r8 |
  R2
  r4. f16 f |
  e4. f16 f |
  d4. f8 |
  f4 f8 (e) |
  d c f (a) |
  bf4 g |
  f2 ~ |
  f4 r |
  f8 g16 (f) e8 f |
  g4. a16 a |
  d4 a8 ([g]) |
  f8. e16 f8 e |
  d4. cs8 |
  d2 ~ |
  d4 r8
}

nhacDiepKhucBas = \relative c {
  d8 |
  a'4. a16 a |
  a2 ~ |
  a4 d, |
  g d |
  c8 c d (e) |
  f4. f8 |
  g4 a |
  d,2 |
  g8 a16 (g) f8 g |
  a2 ~ |
  a8 d cs4 |
  d8. d,16 f8 g |
  a2 ~ |
  a8 a f16 (e) a8 |
  <f d>2 ~ |
  <f d>4 r8
}

nhacPhienKhucSop = \relative c' {
  \partial 8 a16 f' |
  e4 \tuplet 3/2 { d8 g a } |
  a4 r8 bf16 bf |
  e,4 \tuplet 3/2 { a,8 d g } |
  g4 r8 d' |
  c4 \tuplet 3/2 { bf8 d g, } |
  a2 ~ |
  a4 \tuplet 3/2 { g8 g f } |
  a8. a,16 e'8 d |
  d2 ~ |
  d4 r8 a |
  e'4. f16 f |
  d4 r8 d |
  g g4 a8 |
  \slashedGrace { e16 (f } e4.) g8 |
  bf bf4 a8 |
  d,4 r8 d
  
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|." \break
  
  a'8. a16 a8 a |
  bf4. e,8 |
  e bf'4 a8 |
  g4 \tuplet 3/2 { f8 g f } |
  e4. e16 f |
  d4 r8 d'16 d |
  c4 \tuplet 3/2 { d8 d d } |
  a2 |
  bf8. g16 g8 e |
  e4 r8 f16 d |
  bf'8 a g g |
  g4 r8 f |
  f g r e |
  g f4 e8 |
  d2 ~ |
  d4 r8 d
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "|."
}

nhacPhienKhucAlto = \relative c' {
  \partial 8 a16 f' |
  e4 \tuplet 3/2 { d8 g a } |
  a4 r8 bf16 bf |
  e,4 \tuplet 3/2 { a,8 d g } |
  g4 r8 bf |
  a4 \tuplet 3/2 { g8 f e } |
  f2 ~ |
  f4 \tuplet 3/2 { e8 e d } |
  a'8. [e16] cs8 d |
  d2 ~ |
  d4 r8 a |
  e'4. f16 f |
  d4 r8 d |
  g g4 a8 |
  \slashedGrace { e16 (f } e4.) g8 |
  bf bf4 a8 |
  d,4 r8 d |
  
  a'8. a16 a8 a |
  bf4. e,8 |
  e bf'4 a8 |
  g4 \tuplet 3/2 { f8 g f } |
  e4. e16 f |
  d4 r8 bf'16 bf |
  a4 \tuplet 3/2 { bf8 a g } |
  f2 |
  g8. f16 e8 d |
  cs4 r8 d16 a |
  d8 c d f |
  e4 r8 d |
  d e r a, |
  bf d4 cs8 |
  d2 ~ |
  d4 r8 d
}

% Lời
loiDiepKhucSop = \lyricmode {
  Ta ra ngồi, ta ra ngồi nức nở
  mà tưởng nhớ Si -- on
  Trên những cành dương liễu ta tạm gác cây đàn,
  ta tạm gác cây đàn.
}

loiDiepKhucAlto = \lyricmode {
  Ta ra ngồi, ta ra ngồi nức nở nức nở
  mà tưởng nhớ Si -- on
  Trên những cành dương liễu ta tạm gác cây đàn
  này ta gác tạm cây đàn.
}

loiDiepKhucBas = \lyricmode {
  Bờ sông Ba -- by -- lon ta ngồi nức nở
  mà tưởng nhớ, tưởng nhớ Si -- on.
  Trên những cành dương liễu, ta tạm gác
  này ta tạm gác
  gác tạm cây đàn.
}

loiPhienKhucSop = \lyricmode {
  \set stanza = "1."
  Bọn lính canh đòi ta hát xướng,
  Lũ cướp này mời gượng vui lên:
  Hát nghe điệu hát nào quen,
  Si -- on nhạc thánh thử xem một bài.
  Bài ca kính Chúa Trời
  làm sao ta hát nổi nơi đất khách quê người.
  Bờ
  
  \set stanza = "2."
  Giê -- ru -- sa -- lem hỡi lòng này nếu quên ngươi,
  thì tay gảy đàn thành tê bại,
  Lưỡi xướng ca sẽ dính với hàm,
  Nếu ta không hoài niệm,
  không còn lấy Giê -- ru -- sa -- lem làm niềm vui
  tuyệt đỉnh của tâm hồn.
  Bờ
}

% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin =20\mm
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
  %page-count = #1
}

TongNhip = {
  \key f \major \time 2/4
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
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

%\pageBreak

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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override LyricHyphen.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}