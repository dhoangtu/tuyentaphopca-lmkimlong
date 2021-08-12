% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Đối Tượng Duy Nhất" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc điệp khúc
nhacDiepKhucSop = \relative c' {
  \partial 8 d8 |
  b' a a8. fs16 |
  a8 g4 d'16 (e) |
  b8 c d4 ~ |
  d8 c a c |
  b2 ~ |
  b4 r8 e, |
  a8. a16 a8 e |
  d2 ~ |
  d4 r |
  r r8 d |
  b'8 b16 b b8 c |
  a4. d,8 |
  
}

nhacDiepKhucAlto = \relative c' {
  \partial 8 d8 |
  b' a a8. fs16 |
  a8 g4 b16 (c) |
  g8 a b4 ~ |
  b8 a fs a |
  g2 ~ |
  g4 r8 e |
  cs8. cs16 cs8 cs |
  d2 ~ |
  d4 r |
  r r8 d |
  g8 g16 g g8 a |
  fs4. d8 |
}

nhacDiepKhucBas = \relative c {
  d8 |
  b' a a8. fs16 |
  a8 g4. ~ |
  g4 r8 g |
  d8. d16 ef8 d |
  g4 a8. b16 |
  g8 e4. ~ |
  e4 a, |
  b r8 d' |
  b a16 (g) e8 g |
  a8. ef16 fs8 fs |
  g4 r8 a, |
  d8 d16 d d4 |
  
}

nhacPhienKhucSop = \relative c'' {
  
}

nhacPhienKhucBas = \relative c' {
  
}

% Lời điệp khúc
loiDiepKhucSop = \lyricmode {
  \set stanza = "ĐK:"
  Lạy Chúa Giê -- su chịu đóng đinh,
  đổi tượng duy nhất của lòng trí con
  Chọn mến Thánh Giá của Ngài,
  Giờ đây xin hân hoan tiến lên
  Giờ đây xin trung kiên vui đời dâng hiến
  Thánh Giá Chúa luôn là niềm hãnh diện, hãnh diện
  Và Thánh Giá Chúa ban trợ vững bước liên.
}

loiDiepKhucBas = \lyricmode {
  Lạy Chúa Giê -- su chịu đóng đinh,
  đối tượng của trí lòng con,
  Đây những tâm hồn của Ngài
  Gắng sức tu luyện cần chuyên,
  tu luyện giờ đây
  Giờ đây xin hân hoan
  giờ đây xin trung kiên vui đời dâng trọn
  vui đời dâng hiến.
  Nhờ Thánh Giá Chúa luôn là nguồn sức mạnh
  ca hòa nhớ vững bước liên.
}

% Lời phiên khúc
loiPhienKhucSopMot = \lyricmode {
  \set stanza = #"1."
  Xin dâng lời cảm tạ vì ơn Chúa gọi,
  soi dẫn linh đạo Mến Thánh Giá,
  để lòng trí chiêm niệm Đấng chịu đóng đinh,
  xin mãi hiến thân phục vụ Chúa trong muôn người.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = #"2."
  Xin ghi lòng khắc dạ vì nay Chúa chọn,
  vinh phúc dâng lời khấn với Chúa:
  chọn đời sống vâng phục, khó nghèo, khiết trinh,
  yêu mến Chúa liên,
  nguyện vì Chúa quyên thân mình.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = #"3."
  Xin dâng lời khẩn nguyện được luôn vững bền
  mau mắn thi hành thánh ý Chúa
  và cùng với hội dòng
  dõi đường Chúa đi,
  cho dẫu khó nguy, Ngài nhịp bước luôn, lo gì.
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
  %page-count = #1
  print-page-number = #f
  system-system-spacing = #'((basic-distance . 15))
  %score-system-spacing = #'((basic-distance . 15))
}

TongNhip = {
  \key g \major \time 2/4
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
  \new ChoirStaff \with {
    \override StaffGrouper.staff-staff-spacing = #'(
                            (basic-distance . 14)
                            (padding . 1))
  }
  <<
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
      \new Voice \TongNhip \partCombine
        \nhacDiepKhucSop
        \notBePhu -2 { \nhacDiepKhucAlto }
      \new NullVoice = nhacThamChieuAlto \nhacDiepKhucSop
      \new Lyrics \lyricsto nhacThamChieuAlto \loiDiepKhucSop
      >>
    \new Staff <<
        \clef "bass"
        \new Voice = beBas {
          \TongNhip \nhacDiepKhucBas
        }
        \new Lyrics = "hatLanMot" \lyricsto beBas \loiDiepKhucBas
    >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff = diepKhuc \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
     \new Voice = "beSop" { \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucBas } }
        \new NullVoice = nhacThamChieuPhienKhucSop \nhacPhienKhucSop
        \new Lyrics \with {
          \override VerticalAxisGroup.
            nonstaff-relatedstaff-spacing.padding = #1.5
        }
        \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopMot
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopHai
        \new Lyrics \lyricsto nhacThamChieuPhienKhucSop \loiPhienKhucSopBa
      >>
  >>
  \layout {
    %\override Lyrics.LyricText.font-size = #+2
    \override Staff.TimeSignature.transparent = ##t
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
  }
}
