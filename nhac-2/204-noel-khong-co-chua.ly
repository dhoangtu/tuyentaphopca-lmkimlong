% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Noel Không Có Chúa" }
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Lm. Kim Long"
  tagline = ##f
}

% Nhạc
nhacPhienKhucSop = \relative c'' {
  c8 ^> c ^> ~ c4 |
  d8 ^> c16 bf g8 f |
  f2 ~ |
  f4 r |
  r r8 bf |
  d4. d16 d |
  g,2 ~ |
  g4 r |
  R2
  r4 r8 a |
  c4. c16 c |
  f,2 ~ |
  f4 r |
  R2*2
  r4 r8 f |
  g4. g16 g |
  c,2 ~ |
  c4 r |
  r \tuplet 3/2 { c'8 a a } |
  a4 \tuplet 3/2 { bf8 g g } |
  g4. e8 |
  c g'4 f16 (g) |
  a2 ~ |
  a4 r \bar "||" \break
  
  g8 ^> g ^> ~ g4 |
  R2
  r4 r8 g |
  af4 \tuplet 3/2 { g8 g g } |
  c2 ~ |
  c4 \tuplet 3/2 { c8 d c } |
  bf4. af8 |
  f f4 g8 |
  g2 |
  
}

nhacPhienKhucAlto = \relative c' {
  
}

nhacPhienKhucTenor = \relative c' {
  
}

nhacPhienKhucBas = \relative c {
  
}

% Lời
loiPhienKhucSop = \lyricmode {
  No -- el Chúa đâu ở trong đền thờ.
  Cao quá đối với Ngài
  Sang quá đối với Ngài,
  Đẹp quá đối với Ngài,
  không được mịn màng,
  khôn được mịn màng như mây sơn Bạch Tuyết.
  No -- el Ngài đang nằm ngoài hè phố
  mưa gió bơ vơ nghe nhạc rượu say sưa.
  No -- el Chúa đâu ở trong hang đá
  ở dưới đây nhà thờ bên anh và bên tôi.
  Ngài đang úp mặt ở nghĩa trang dưới chân thánh giá
  khi chiều buông khóc thét khỏi cần ai thương
  Vì chỉ có một người thương thì đã chết rồi
  để lại bảy đứa trẻ mồ côi
  sau một phát súng nổ.
  No -- el, Chúa ở đâu trong hang đá
  Hay Ngài đang nằm dài trên chõng,
  mỗi chuyển dịch đều nhờ đứa con côi,
  Mẹ nó sang sông đã hơn một mùa thu rồi.
  Nhìn tường nhà thương phế binh mầu trắng,
  thấy trắng cả cuộc đời,
  Cố giữ nụ cười vi không sao khóc được nữa.
  
  No -- el, Chúa đâu ở trong đền thờ.
  Nếu không gặp Ngài trong tăm tối,
  thấy Ngài trong ánh sáng,
  Nếu không gặp Ngài trong nghèo khó,
  thấy Ngài trong cao sang,
  Nếu không gặp Ngài ở dưới đất,
  thấy Ngài cõi thiên đàng.
  No -- el, Chúa đâu ở trong đền thờ.
  Ta tìm Ngài va muôn năm không gặp Ngài,
  và muôn năm khôn gặp Ngài
  nếu lòng ta không mở,
  nếu lòng ta không mở,
  không mở cho những ai thiếu ánh sáng mặt trời.
  của một thế giới
  của một thế giới dư súng đạn thiếu bánh cơm.
}

loiPhienKhucAlto = \lyricmode {
  No -- el
  No -- el
  Cao quá đối với Ngài
  Sang quá đối với Ngài,
  Đẹp quá đối với Ngài,
  không được mịn màng,
  khôn được mịn màng như mây sơn Bạch Tuyết.
  No -- el Ngài đang đang nằm,
  nằm ngoài hè phố mưa gió bơ vơ
  nghe nhạc rượu say sưa.
  No -- el Chúa đâu ở trong hang đá
  ở dưới đây nhà thờ bên anh và bên tôi.
  No -- el Chúa đâu ở trong hang đá
  Hm __ _ _ _ _
  khóc thét khỏi cần ai thương
  Vì chủ có một người thương đã chết đi,
  còn bảy đứa trẻ mồ côi.
  Ơ ơ ơ ơ
  No -- el, Chúa đâu ở trong hang đá
  No -- el, Chúa đâu ở trong đền thờ,
  Nếu không gặp Ngài trong tăm tối,
  thấy Ngài trong ánh sáng,
  Nếu không gặp Ngài trong nghèo khó,
  thấy Ngài trong cao sang,
  Nếu không gặp Ngài ở dưới đất,
  thấy Ngài cõi thiên đàng.
  No -- el, Chúa đâu ở trong đền thờ.
  Ta tìm Ngài va muôn năm không gặp Ngài,
  và muôn năm khôn gặp Ngài
  nếu lòng ta không mở,
  nếu lòng ta không mở,
  không mở cho những ai thiếu ánh sáng mặt trời.
  của một thế giới
  của một thế giới dư súng đạn thiếu bánh cơm.
}

loiPhienKhucTenor = \lyricmode {
  No -- el Chúa đâu ở trong hang đá
  Hm __ _ _ _ _
  khóc thét khỏi cần ai thương
  Vì chỉ có một người thương đã chết đi,
  còn bảy đứa trẻ mồ côi.
  Ơ ơ ơ ơ
  No -- el Ngài đang chống nạng đi trên vỉa hè,
  Lê la kiếp sống mãi nghe nhạc khúc hòa bình.
}

loiPhienKhucBas = \lyricmode {
  No -- el, No -- el Ngài nằm nơi cửa đền thánh
  Vì Ngài đâu bằng viên đá thấp nhất.
  Vì tất cả Ngài giá không bằng một vòng xích sắt.
  Vì da dẻ Ngài nhăn nheo không được mịn màng,
  không được mịn màng như nước sơn Bạch Tuyết.
  No -- el, Chúa đâu ở trong đền thờ,
  đang nằm, nằm ngoài hè phố
  bơ vơ mưa gió nhạc rượu say sưa.
  No -- el
  Ngài đang ngồi đó ở đây nhà thờ bên anh và bên tôi.
  No -- el Chúa đâu ở trong hang lừa
  Hm __ _ _ _
  khóc thét khỏi cần ai thương
  Vì chỉ có một người thương đã chết đi
  Còn bảy đứa trẻ mồ côi,
  Ơ ơ ơ ơ
  No -- el Ngài đang chống nạng đi trên vỉa hè,
  Lê la kiếp sống mãi nghe nhạc khúc hòa bình.
  No -- el Ngài cũng không ở trong hang đá.
  trong tăm tối
  sẽ chẳng bao giờ thấy Ngài trong ánh sáng
  trong nghèo khổ
  sẽ chẳng bao giờ thấy Ngài trong cao sang.
  ở dưới trần sẽ chẳng bao giờ thấy Ngài cõi thiên đàng.
  No -- el, No -- el Ngài cũng không ở trong hang đá.
  Ta tìm Ngài và muôn năm không gặp Ngài,
  và muôn năm không gặp Ngài
  Nếu lòng ta không mở, không mở,
  lòng ta không mở cho những ai thiếu ánh sáng mặt trời.
  Lay lứt trong cõi đời u thảm của một thế giới
  của một thế giới dư súng đạn thiếu nhiều bánh cơm.
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

\score {
  \new ChoirStaff <<
    \new Staff = "1" <<
        \clef treble
        \new Voice = beSop {
          \TongNhip \nhacPhienKhucSop
        }
      \new Lyrics \lyricsto beSop \loiPhienKhucSop
    >>
    \new Staff = "2" <<
      \new Voice = beAlto {
        \clef treble \TongNhip \nhacPhienKhucAlto
      }
      \new Lyrics \lyricsto beAlto \loiPhienKhucAlto
    >>
    \new Staff = "3" <<
      \new Voice = beTenor {
        \clef "violin_8" \TongNhip \nhacPhienKhucTenor
      }
      \new Lyrics \lyricsto beTenor \loiPhienKhucTenor
    >>
    \new Staff = "4" <<
        \clef bass
        \new Voice = beBas {
          \TongNhip \nhacPhienKhucBas
        }
      \new Lyrics \lyricsto beBas \loiPhienKhucBas
    >>
  >>
  \layout {
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
