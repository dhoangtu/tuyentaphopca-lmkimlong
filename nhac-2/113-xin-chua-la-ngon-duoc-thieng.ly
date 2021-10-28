% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Xin Chúa Là Ngọn Đuốc Thiêng" }
  composer = "Lm. Kim Long"
  %arranger = " "
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \key g \major \time 2/4
  \partial 4 b4 \bar ".|"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  d2 |
  g,8 g c (b) |
  a4 fs8. (g16) |
  a8 a d, d |
  g4. a8 |
  b2 ~ |
  b4 d |
  d2 |
  c8 c b e |
  a,4 fs8. (g16) |
  a8 a fs d |
  a'4 (b8) a |
  g2 ~ |
  g4 \bar "|"
}

nhacDiepKhucAlto = \relative c'' {
  \key g \major \time 2/4
  g4 |
  fs2 |
  e8 e a (g) |
  fs4 d |
  cs8 cs c! a |
  b8. b16 e8 [fs] |
  g2 ~ |
  g4 g |
  fs2 |
  g8 g gs gs |
  a (e) d4 |
  cs8 cs d b |
  e4 (d8) c |
  b2 ~ |
  b4
}

nhacDiepKhucBas = \relative c {
  \key g \major \time 2/4
  r4 |
  r4 d |
  e c8 cs |
  d4 d8. (b16) |
  a8 a' g fs |
  e4 d |
  g4. fs8 ^> |
  g ^> a ^> b4 |
  r d, |
  e8 e e (d) |
  c4 d8. (b16) |
  a8 a' d, g |
  <g c,>4 <fs d> |
  <g g,>2 ~ |
  <g g,>4
}

nhacPhienKhucSop = \relative c'' {
  \key bf \major \time 2/4
  \partial 4.
  % thêm dấu nghỉ ẩn, để nốt hoa mỹ ko nằm ở đầu (lỗi khoảng cách)
  \hideNotes r8 \unHideNotes
  \slashedGrace { c16 (} d8) bf 
  g4 \tuplet 3/2 { g8 g g } |
  a4 \slashedGrace { g16 (} a8) ef |
  d4 \tuplet 3/2 { bf8 c c } |
  d2 ~ |
  d8 d bf' a |
  a4 \tuplet 3/2 { c8 c c } |
  d4 \slashedGrace { c16 (} d8) bf16 (a) |
  d,4 \tuplet 3/2 { a'8 bf a } |
  g2 ~ |
  g4
  b!
  \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
}

nhacPhienKhucAlto = \relative c'' {
  \key bf \major \time 2/4
  \hideNotes r8 \unHideNotes
  r4 |
  r \tuplet 3/2 { g8 g g } |
  fs4 r4 |
  r \tuplet 3/2 { bf,8 c bf } |
  a4. a8 |
  bf4 r |
  r \tuplet 3/2 { g'8 g g } |
  fs4 r |
  r \tuplet 3/2 { a8 g fs } |
  g2 ~ |
  g4
  g
}

nhacPhienKhucBas = \relative c {
  \key bf \major \time 2/4
  \hideNotes r8 \unHideNotes
  r4
  r4 \tuplet 3/2 { ef8 ef ef } |
  d4 r |
  r \tuplet 3/2 { g8 a g } |
  fs4. fs8 |
  g4 r |
  r \tuplet 3/2 { ef8 ef ef } |
  d4 r |
  r \tuplet 3/2 { c8 d d } |
  g2 ~ |
  g4 r
}

% Lời
loiDiepKhucSop = \lyricmode {
  Xin Chúa là ngọn đuốc thiêng tỏa ánh sáng vào đời con
  tăm tối.
  Xin giúp con xông vào chiến trận cậy sức Chúa con vượt núi băng đồi.
}

loiDiepKhucAlto = \lyricmode {
  Xin Chúa là ngọn đuốc thiêng tỏa ánh sáng vào đời con,
  đời con tăm tối.
  Xin giúp con xông vào chiến trận cậy sức Chúa con vượt núi băng đồi.
}

loiDiepKhucBas = \lyricmode {
  Xin Chúa là lửa thiêng tỏa rạng sáng vào đời con tăm tối
  đời con tăm tối.
  Này con xông chiến trận cậy nhờ Chúa con lướt núi băng đồi.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Sóng tử thần dồn dập mọi nơi, thác hủy diệt làm con kinh hãi,
  Mạng lưới âm ty bao vây muôn lối,
  Bẫy tử thần giăng mắc khôn ngơi.
  Xin
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Đất trở mình ầm ầm chuyển rung, núi đảo loạn đồi nương run rẩy,
  Nộ khí Đức Chúa xông lên ngun ngút,
  Trút lửa giận hun hút bay cao.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Sấm chuyển trời sầm sập đổ mưa khắp cảnh vật chìm trong u tối,
  Kìa trước Thiên Nhan giăng muôn tia chớp,
  Rắc lửa hồng mưa đá tuôn rơi.
}

loiPhienKhucAltoMot = \lyricmode {
  \set stanza = "1."
  dồn dập mọi nơi,
  làm con kinh hãi, kinh hãi.
  bao vây muôn lối,
  giăng mắc khôn ngơi.
  Xin
}

loiPhienKhucAltoHai = \lyricmode {
  \set stanza = "2."
  ầm ầm chuyển rung,
  đồi nương run rẩy, run rẩy.
  xông lên ngun ngút,
  hun hút bay cao.
}

loiPhienKhucAltoBa = \lyricmode {
  \set stanza = "3."
  sầm sập đổ mưa
  chìm trong u tối, u tối.
  giăng muôn tia chớp,
  mưa đá tuôn rơi.
}

loiPhienKhucBasMot = \lyricmode {
  \set stanza = "1."
  dồn dập mọi nơi, làm con kinh hãi, kinh hãi.
  bao vây muôn lối, giăng mắc khôn ngơi.
}

loiPhienKhucBasHai = \lyricmode {
  \set stanza = "2."
  ầm ầm chuyển rung,
  đồi nương run rẩy, run rẩy.
  xông lên ngun ngút,
  hun hút bay cao.
}

loiPhienKhucBasBa = \lyricmode {
  \set stanza = "3."
  sầm sập đổ mưa
  chìm trong u tối, u tối.
  giăng muôn tia chớp,
  mưa đá tuôn rơi.
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
  page-count = #2
  %systems-per-page = 4
  %ragged-bottom = ##t
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
        \clef treble \nhacDiepKhucSop
      }
      \new Lyrics \lyricsto beSop \loiDiepKhucSop
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacDiepKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
    >>
    %{
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \partCombine 
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = beAlto \nhacDiepKhucAlto
      \new Lyrics \lyricsto beAlto \loiDiepKhucAlto
      >>
    %}
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacDiepKhucBas
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

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "beSop" {
        \clef treble \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
    \new Staff <<
      \new Voice = "beAlto" {
        \clef treble \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoHai
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoBa
    >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBasMot
      \new Lyrics \lyricsto beBas \loiPhienKhucBasHai
      \new Lyrics \lyricsto beBas \loiPhienKhucBasBa
    >>
  >>
  \layout {
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
