% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Vào Cung Thánh" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  R2*6
  c8. f16 d8 c |
  g4. d'16 (c) |
  \slashedGrace { a16 ( } c4) d8 f |
  c2 ~ |
  c4 r |
  R2*2
  r4 r8 a |
  c8. f16 d8 c |
  a4. a8 |
  g8 g16 (c) a8 g |
  f2 ~ |
  f ~ |
  f4 r8 \bar "|." \break
  
  r |
  R2
  r8
  <<
    {
      g4 g8 |
      g4
    }
    {
      d4 d8 |
      e4
    }
  >>
  r4 |
  r4 r8 a |
  c8. d,16 d8 f |
  g4 e16 (d) g8 |
  c,8. c16 g' (a) g8 |
  f2 \bar "||"
}

nhacPhienKhucAlto = \relative c'' {
  R2*3
  g8. c16 a8 g |
  f4. g16 (f) |
  \slashedGrace { d16 ( } f4) g8 g |
  a4 (g) |
  f (d) |
  c8. d16 f8 a |
  g2 ~ |
  g4 r |
  r r8 f |
  g8. c16 a8 g |
  f4 g8 (f) |
  c4. d8 |
  f d f4 ~ |
  f8 d f d |
  c2 ~ |
  c ~ |
  c4 r8
  
  
}

nhacPhienKhucBas = \relative c {
  f8. a16 g8 f |
  c4. g16 (f) |
  d8 (f) g g |
  c4. c8 |
  d2 ~ |
  d4 c8 c |
  f4. a,8 |
  c8. d16 f8 d |
  a'4. a16 (g) |
  c4. c,8 |
  f8. a16 g8 f |
  d4 g8 (f) |
  c2 ~ |
  c8 d c (d) |
  a' (g) f4 ~ |
  f d |
  <<
    {
      \voiceOne
      g8 [g] f (g) |
      \stemDown a2 ~ |
      a ~ |
      a4
    }
    \new Voice = "splitpart" {
	    \voiceTwo
      g8 [g,] c4 |
      f2 ~ |
      f ~ |
      f4
    }
  >>
  \oneVoice
  r8
  
  a |
  c8. d,16 d8 f |
  g4 g8 e16 (f) |
  c8. c16 f8 g |
  a2 ~ |
  a4 r
  R2
  r8.
  <<
    {
      a16 c8 c |
      a2
    }
    {
      f16 c8 c |
      f2
    }
  >>
}

% Lời
loiPhienKhucSopMot = \lyricmode {
  Con (í a) sẽ vào, sẽ vào nơi thánh cung.
  Vì Chúa (í a) hoan lạc, hoan lạc tuổi xuân muôn đời.
  
  \set stanza = "1."
  Ôi vui thay dâng hiến cuộc đời trinh trong
  cho thắm đẹp mộng ước xuân xanh.
}

loiPhienKhucAltoMot = \lyricmode {
  Con (í a) sẽ vào, sẽ vào nơi cung thánh
  sẽ vào (í a) thánh cung.
  Vì Chúa (í a) là nguồn hoan lạc tuổi xuân,
  đẹp tươi, tuổi xuân muôn đời.
}

loiPhienKhucSopHai = \lyricmode {
  \repeat unfold 22 { _ }
  \set stanza = #"2."
  Vang cung tơ cho dẫu cuộc đời tân toan
  xin ước nguyện đẹp mãi tin yêu.
}

loiPhienKhucSopBa = \lyricmode {
  \repeat unfold 22 { _ }
  \set stanza = #"3."
  Chung tâm tư trong Chúa nguồn mạch yêu thương
  muôn thế hệ cùng hát lên đi.
}

loiPhienKhucBasMot = \lyricmode {
  Con (í a) sẽ vào, sẽ vào nơi cung thánh,
  sẽ vào nơi cung thánh,
  sẽ vào (í a) đền thánh, đền thánh.
  Vì Chúa (í a) là nguồn hoan lạc, hoan lạc tuổi xuân,
  tuổi xuân đẹp ngàn đời.
  
  \set stanza = "1."
  Năm tháng miệt mài đợi trông
  phút vui mừng vào nơi cung thánh
  mộng ước xuân xanh.
}

loiPhienKhucBasHai = \lyricmode {
  \repeat unfold 40 { _ }
  \set stanza = #"2."
  Tâm trí dạt dào hân hoan tấu cung đàn tụng ca Danh Chúa
  đẹp mãi tin yêu.
}

loiPhienKhucBasBa = \lyricmode {
  \repeat unfold 40 { _ }
  \set stanza = #"3."
  Mong ước người người muôn phương kết chung lòng
  hiệp chung tâm trí
  cùng hát lên đi.
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
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
  \key c \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1)
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
      \new Voice = beSop {
        \clef treble \TongNhip \nhacPhienKhucSop
      }
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
      >>
    \new Staff
      <<
      \new Voice = beAlto {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAltoMot
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  } 
}
