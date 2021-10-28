% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Đi Tìm Người Yêu" }
  composer = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  g8 g e d |
  g4. g8 |
  b8 b c b |
  a4. a8 |
  e fs g a |
  b4. c16 (b) |
  a8 fs g a |
  d,2 |
  g8 g e d |
  g4. g8 |
  b b c b |
  a4. a8 |
  gs a b16 (c) b8 |
  d4. e8 |
  c a fs a |
  g2 \bar "||"
}

nhacDiepKhucTenor = \relative c'' {
  R2
  d8 d e c |
  d2 ~ |
  d8 d e d |
  c4 r |
  r8 d d d |
  e4. d8 |
  c b a c |
  b4 r |
  d8 d e c |
  d2 ~ |
  d8 c d c |
  b4 r4 |
  r8 b b b |
  c4 d8 ([c]) |
  b2
}

nhacDiepKhucBas = \relative c'' {
  R2
  b8 b c a |
  g2 ~ |
  g8 g fs g |
  a4 r |
  r8 g g g |
  c4. b8 |
  a g fs a |
  g4 r |
  b8 b c a |
  g2 ~ |
  g8 a b a |
  e4 r |
  r8 g g gs |
  a4. d,8
  _\markup { \halign #-1.7 \italic "sầu" }
  |
  g2
}

nhacPhienKhucSop = \relative c'' {
  r8 b b c |
  d8. d16 e8 d ~ |
  d b c a |
  b4 fs8 g ~ |
  g a4 e8 |
  d2 |
  r8 fs fs g |
  a8. a16 b8 a ~ |
  a a b c |
  d4 e8 c ~ |
  c a4 b8 |
  g2 \bar "|."
}

nhacPhienKhucBas = \relative c'' {
  r8 g8 g a |
  b8. b16 c8 b ~ |
  b g a fs |
  g4 d8 e ~ |
  e c4 cs8 |
  d2 |
  r8 d d e |
  fs8. fs16 g8 d ~ |
  d d g a |
  b4 g8 a ~ |
  a fs4 fs8 |
  g2
}


% Lời
loiDiepKhucSop = \lyricmode {
  Tôi đi tìm người yêu
  từ trong đêm tối cô liêu
  qua bình minh gieo hương nắng
  tới khi trời vương bóng chiều
  Tôi băng đồi vượt non,
  ngại chi mưa nắng phong sương
  sao người yêu vẫn chẳng thấy,
  Trái tim mang nặng nhớ thương.
  \set stanza = "1-3."
  Này người yêu ơi mau tiến lên
  \set stanza = "1."
  Mưa đã ngừng rơi mùa đông đã qua rồi
  Đẹp màu hoa xuân trong nắng tươi
  Bồ câu tung cánh líu lo vang khắp trời.
}

loiPhienKhucSopMot = \lyricmode {
  \set stanza = "1."
  Này người yêu ơi mau tiến lên,
  Mưa đã ngừng rơi, mùa đông đã qua rồi,
  Đẹp màu hoa xuân trong nắng tươi,
  Đàn chim tung cánh líu lo vang khắp trời.
}

loiPhienKhucSopHai = \lyricmode {
  \set stanza = "2."
  Này người yêu ơi mau tiến lên,
  Như đóa huệ tươi chẳng vương chút ô tỳ
  Dạt dào hương thơm bay khắp nơi,
  Tuyệt luân hương sắc, thế nhân ai sánh bì.
}

loiPhienKhucSopBa = \lyricmode {
  \set stanza = "3."
  Này người yêu ơi mau tiến lên,
  Như ánh bình minh đẹp tươi thắm ân tình
  Rạng ngời uy linh như thái dương,
  Vâng trăng trong sáng kính tôn nâng gót vàng.
}

loiDiepKhucBas = \lyricmode {
  Tôi đi kiếm người yêu
  đêm tối cô liêu
  khi gieo hương nắng tới
  khi sương chiều đã rơi.
  Tôi băng núi vượt non
  mưa nắng phong sương
  tim mang bao nỗi nhớ thương.
}


% Dàn trang
\paper {
  #(set-paper-size "a4")
  top-margin = 8\mm
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
  page-count = #1
}

TongNhip = {
  \key g \major \time 2/4
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
    \new Staff \with {
        \consists "Merge_rests_engraver"
        printPartCombineTexts = ##f
      }
      <<
        \clef treble
      \new Voice \TongNhip \partCombine 
        \nhacDiepKhucTenor
        \nhacDiepKhucBas
      \new NullVoice = beBas \nhacDiepKhucTenor
      \new Lyrics \lyricsto beBas \loiDiepKhucBas
      >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
        printPartCombineTexts = ##f
      }
      <<
        \new Voice \TongNhip \partCombine 
          \nhacPhienKhucSop
          \notBePhu -2 { \nhacPhienKhucBas }
        \new NullVoice = beSop \nhacPhienKhucSop
      \new Lyrics \lyricsto beSop \loiPhienKhucSopMot
      \new Lyrics \lyricsto beSop \loiPhienKhucSopHai
      \new Lyrics \lyricsto beSop \loiPhienKhucSopBa
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  } 
}
