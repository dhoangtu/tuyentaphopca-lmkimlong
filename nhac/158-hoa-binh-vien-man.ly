% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Hòa Bình Viên Mãn" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  \partial 8 d8 |
  a8. a16 g8 a |
  d,2 ~ |
  d4 r |
  R2
  d'4. d8 |
  bf4 a |
  g r8 a |
  f4 e8 e |
  a2 ~ |
  a4 r |
  R2
  R2
  r4 r8 e |
  e e e g |
  a4 d16 (c) bf8 |
  bf c16 (bf) a8 a |
  a2 |
  g8 a f d |
  g4 a8 g16 (a) |
  d4. d8 |
  d2 ~ |
  d4 r8 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  d8 |
  a8. a16 g8 a |
  d,2 ~ |
  d4 r |
  R2
  f4. f8 |
  d4 f |
  e r8 a |
  f4 e8 e |
  a2 ~ |
  a4 r |
  R2
  R2
  r4 r8 e |
  e e e g |
  a4 f8 [f] |
  g [g] f f |
  e2 |
  g8 a f d |
  g4 a8 g16 (a) |
  e4. e8 |
  f2 ~ |
  f4 r8
}


nhacPhienKhucTenor = \relative c' {
  r8 |
  R2
  r4 r8 a |
  bf8. bf16 a8 bf |
  c2 |
  a4. a8 |
  bf4 b! |
  c r |
  R2
  r4 r8 e, |
  g4 a8 f |
  f2 ~ |
  f4 d8 e |
  f4. e8 |
  e e e g |
  a4 a8 d |
  d d d d |
  cs2 |
  R2
  r4 a8 g16 (a) |
  bf4. bf8 |
  a2 ~ |
  a4 r8
}

nhacPhienKhucBas = \relative c {
  r8 |
  R2
  r4 r8 a |
  g'8. g16 f8 g |
  a2 |
  d,4. d8 |
  g4 g |
  c, r |
  R2
  r4 r8 a |
  e'4 f8 d |
  d2 ~ |
  d4 d8 e |
  f4. e8 |
  e e e g |
  a4 d,8 d |
  g g d d |
  a'2 |
  R2
  r4 a8 g16 (a) |
  g4. g8 |
  d2 ~ |
  d4 r8
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Núi non đem lại thái bình.
  Chúa xét xử dân Ngài, 
  Tế độ người nghèo khó.
  Và nên hòa bình viên mãn
  Sẽ triển nở trong triều đại Ngài.
  cho tới khi mặt trăng không còn chiếu ánh sáng.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Lắng nghe bao kẻ khó nghèo.
  Chúa xét xử công bình, 
  Thế lực trường tồn mãi.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Các Vua suy phục kính thờ.
  Chúa thống trị muôn đời,
  Chúc tụng Ngài ngàn kiếp.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  Đồi nương đem về công chính
  Chúa xét xử dân Ngài.
  Đập tan lũ cường quyền.
  \set stanza = "ĐK:"
  Sự công chính, và nền hòa bình viên mãn,
  sẽ triển nở trong triều đại mãi.
  không còn chiếu ánh quang.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  Dủ thương bao người cô thế,
  Chúa xét xử công bình,
  Quyền uy vững ngàn đời.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  Ngàn dân nghiêng mình cung kính.
  Chúa thống trị muôn đời
  Lừng danh khắp địa cầu.
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
  page-count = #1
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice { 
        \clef bass
        \TongNhip \partCombine 
          \nhacPhienKhucTenor
          \nhacPhienKhucBas
      }
      \new NullVoice = beBas \nhacPhienKhucBas
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