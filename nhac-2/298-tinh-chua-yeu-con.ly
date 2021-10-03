% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Tình Chúa Yêu Con" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhuc = \relative c'' {
  \partial 4. c,8 a'16 (bf) a8 |
  g4. g16 fs |
  g8 a bf a |
  d,4. f16 e |
  f8 g a g |
  c,4. a16 a |
  bf8 bf d d |
  c2 ~ |
  c8 c a'16 (bf) a8 |
  g4. g16 f |
  g8 a bf a |
  c4. c16 c |
  d8 c bf d, |
  d4. d16 d |
  c8 c e g |
  f2 ~ |
  f4 \bar "||"
}

nhacDiepKhucSop = \relative c'' {
  \time 3/4
  \partial 4 \tuplet 3/2 { f8 f f } |
  e4. d8 \tuplet 3/2 { d e d } |
  bf4. bf8 \tuplet 3/2 { c d c } |
  a2 \tuplet 3/2 { c,8 c c } |
  g'2 \tuplet 3/2 { e8 e e } |
  bf'4. g8 e e |
  f2. \bar "|."
}

nhacDiepKhucAlto = \relative c'' {
  \time 3/4
  \tuplet 3/2 { a8 a d } |
  cs4. d8 \tuplet 3/2 { a gs a } |
  d,4. e8 \tuplet 3/2 { g fs g } |
  c,2 \tuplet 3/2 { c8 c c } |
  bf2 \tuplet 3/2 { c8 c c } |
  f4. d8 c c |
  a2.
}

nhacDiepKhucBas = \relative c' {
  \time 3/4
  \tuplet 3/2 { d8 d d } |
  a4. bf8 \tuplet 3/2 { f e f } |
  g4. g8 \tuplet 3/2 { e d e } |
  f2 \tuplet 3/2 { a8 a a } |
  g2 \tuplet 3/2 { a8 a a } |
  d,4. bf'8 c c, |
  f2.
}

% Lời
loiPhienKhucMot = \lyricmode {
  \set stanza = "1."
  Tình Chúa yêu con yêu từ muôn thu trước xa vời.
  Ngay từ khi chưa có đất trời một cuộc tình rộng quá biển khơi.
  Tình Chúa yêu con thân bụi tro con, Chúa nhìn tới.
  Bao âu yếm dẫn con vào đời cho con gặp tình thương khắp nơi.
}

loiPhienKhucHai = \lyricmode {
  \set stanza = "2."
  Tình Chúa yêu con nên đành mang thân kiếp cơ cùng.
  Sinh hạ trong đêm tối lạnh lùng vi tình nồng từng phút nấu nung.
  Tình Chúa yêu con đâu ngại kê vai vác Thập Giá.
  Hy sinh máu tuôn đổ tràn hòa cho ai tìm lại vinh phúc xưa.
}

loiPhienKhucBa = \lyricmode {
  \set stanza = "3."
  Tình Chúa yêu con đi tìm con trong kiếp chiên lạc.
  Hoang dại như con thứ phụ bạc vì lòng Ngài hằng sẵn thứ tha.
  Tình Chúa yêu con đâu vì con yêu mến Ngài trước.
  Đâu con có công chi đòi được ôi ân tình Ngài muôn thiết tha.
}

loiDiepKhucSop = \lyricmode {
  Chúa hỡi, Chua ơi! Con nay biết dâng gì tạ ơn Chúa vô bờ.
  Này từng nhịp tim rộn ràng trìu mến xin Ngài nhận cho.
}

loiDiepKhucBas = \lyricmode {
  Chúa hỡi, Chua ơi! Con này nào dâng chi cám ơn Ngài vô bờ.
  Này từng nhịp tim rộn ràng trìu mến xin đoái nhận cho.
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
  %page-count = #1
}

TongNhip = {
  \key f \major \time 2/4
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
    \new Staff
      <<
      \new Voice = beSop {
        \TongNhip \nhacPhienKhuc
      }
    >>
    \new Lyrics \lyricsto beSop \loiPhienKhucMot
    \new Lyrics \lyricsto beSop \loiPhienKhucHai
    \new Lyrics \lyricsto beSop \loiPhienKhucBa
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
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #2.0
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
