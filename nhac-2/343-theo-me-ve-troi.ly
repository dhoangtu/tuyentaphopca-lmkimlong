% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Theo Mẹ Về Trời" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacDiepKhucSop = \relative c'' {
  
}

nhacDiepKhucAlto = \relative c'' {
  
}

nhacDiepKhucBas = \relative c' {
  
}

% Lời
loiDiepKhucSop = \lyricmode {
  Chim bồ câu nhỏ của lòng ta ơi!
  bay cao lên trong ánh sáng trời,
  bay cao lên trong ánh sáng trời.
  Giữa một chiều vàng thu lộng lẫy
  chim bồ cây nhỏ của lòng ta ơi!
  Ca vang lên trong ánh sáng trời,
  ca vang lên trong ánh sáng trời
  Cõi thiên không chiều nay, chiều nay reo hoa lệ.
  Em thấy chi một Bà áo trắng
  lẫm liệt uy nghi tỏa sáng từ bi.
  Lên trong hương trời nhạc dồn chơi vơi,
  lên trong hương trời nhạc dồn chơi vơi.
  Bay lượn bên Người em nghe gì
  Vầng nguyệt huy hoàng dưới đóa trà mi
  chín tầng trời mở rộng.
  Chín phẩm thần náo động.
  Tung hô nhạc tung hô
  nồng nhiệt biết chừng mô.
  Hỡi chim bồ câu nhỏ của lòng ta ơi!
  Bay đi em theo Mẹ về trời,
  bay đi em theo Mẹ về trời.
  cõi thiên cung một mùa Xuân,
  một mùa Xuân bao xán lạn.
}

loiDiepKhucAlto = \lyricmode {
  Chim bồ câu nhỏ của lòng ta ơi!
  bay cao lên trong ánh sáng trời,
  bay cao lên trong ánh sáng trời.
  Giữa một chiều vàng thu lộng lẫy
  chim bồ cây nhỏ bồ câu nhỏ của lòng ta ơi!
  Ca vang lên trong ánh sáng trời,
  ca vang lên trong ánh sáng trời.
  Cõi thiên không chiều nay, chiều nay reo hoa lệ.
  Em thấy chi một Bà áo trắng
  lẫm liệt uy nghi tỏa sáng từ bi.
  Lên trong hương trời nhạc dồn chơi vơi,
  lên trong hương trời nhạc dồn chơi vơi.
  Bay lượn bên Người em nghe gì
  Vầng nguyệt huy hoàng dưới đóa trà mi
  chín tầng trời mở rộng.
  Chín phẩm thần náo động
  tung hô nhạc tung hô.
  Tung hô nhạc tung hô
  nồng nhiệt biết chừng mô.
  Hỡi chim bồ câu nhỏ của lòng ta ơi!
  Bay đi em theo Mẹ về trời,
  bay đi em theo Mẹ về trời.
  Chiều hôm nay thu trần gian ảm đạm
  cõi thiên cung một mùa Xuân,
  một mùa Xuân bao xán lạn mua Xuân bao xán lạn.
}

loiDiepKhucBas = \lyricmode {
  Chim bồ câu nhỏ của ta ơi!
  Bay cao lên trong ánh sáng trời,
  bay cao lên trong ánh sáng trời.
  Giữa một chiều vàng thu lộng lẫy.
  Chim bồ câu nhỏ chim bồ câu nhỏ của ta ơi!
  Ca vang lên trong ánh sáng trời,
  ca vang lên trong ánh sáng trời.
  Cõi thiên không chiều nay, chiều nay reo hoa lệ.
  Em nghe gì một Bà áo trắng
  lẫm liệt uy nghi tỏa rạng từ bi.
  Lên trong hương trời nhạc dồn chơi vơi,
  lên trong hương trời nhạc dồn chơi vơi.
  Mười hai tinh đẩu bay lượng bên Người bên Người.
  Em thấy chi
  Vầng Nguyệt huy hoàng kìa hoa trà mi
  chín phẩm thần náo động.
  Tung hô nhạc tung hô,
  tung hô nồng nhiệt biết chừng mô.
  Chim bồ câu nhỏ của ta ơi!
  Bay đi em theo Mẹ về trời,
  bay đi em theo Mẹ về trời.
  Nay trần gian ảm đạm
  cõi thiên cung một mùa Xuân,
  một mùa Xuân bao xán lạn,
  mùa Xuân bao xán lạn.
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
  %page-count = #1
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
    \new Staff <<
        \clef treble
        \new Voice = beAlto {
          \TongNhip \nhacDiepKhucAlto
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
    \override Lyrics.LyricSpace.minimum-distance = #1.5
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
  }
}
