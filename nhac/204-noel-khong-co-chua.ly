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
  <c a f>8 ^> <c a f> ~ <c a f>4 |
  bf8 a16 g f8 f |
  <d' bf f>8 ^> <d bf f> ^> ~ <d bf f>4 |
  c8 bf16 a g8 g |
  <e' c g> ^> <e c g> r <e c g> |
  <d bf f> ^> <c g e> ^> r4 |
  <f c a f>8 ^> <f c a f> r4 \bar "||" \break
  
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
  a!?8 ^> a ^> ~ a4 |
  a8 g16 f g8 a |
  bf2 ~ |
  bf4 r |
  r8 b! \tuplet 3/2 { a8 a f } |
  e4. d8 |
  d c4 f8 |
  f2 \bar "||" \break
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \key af \major
  R2*2
  r4 r8 c |
  f2 ~ |
  f8 g \tuplet 3/2 { ef c g' } |
  f4 \tuplet 3/2 { af8 g bf } |
  bf4. af16 g |
  af4 r8 c ^> |
  c4 ^> \tuplet 3/2 { af8 f g } |
  g4. c,8 |
  d8. f16 d8 c |
  f2 ~ |
  f8 f af bf |
  g2 ~ |
  g8 bf, c4 |
  df8. f16 df8 c |
  f4. af8 |
  g c4 c8 |
  \slashedGrace { f,16 (g } f2) ~ |
  f4 r \bar "|." \break
  
  \key f \major
  c'8 ^> c ^> ~ c4 |
  a8 g16 f g8 a |
  bf2 ~ |
  bf4 r |
  R2*5
  r4 f |
  df4. f8 |
  \slashedGrace { df16 ( } c8) c4 f8 | \break
  
  \key af \major
  g4. af16 g |
  f8. f16 \tuplet 3/2 { f8 df' c } |
  bf2 ~ |
  bf4 \tuplet 3/2 { g8 bf af } |
  af4. af8 |
  g4 \tuplet 3/2 { e!8 e f } |
  c2 ~ |
  c4 bf8 bf16 bf |
  df8 f df bf |
  f'4. bf8 |
  \tuplet 3/2 { bf8 af g } g4 ~ |
  g8 af \tuplet 3/2 { af8 g f } |
  f4 r8 e! |
  g8 g4 af16 g |
  c2 ~ |
  c4 r \bar "||" \break
  
  \key f \major
  a8 ^> a ~ a4 |
  a8 g16 f g (f) d8 |
  c2 |
  R2*2
  af'4. g16 f |
  f8 af4 bf8 |
  c2 ~ |
  c4 r8 g |
  c, f4 g8 |
  g2 |
  af4. g16 f |
  f8 bf4 af16 (bf) |
  c2 ~ |
  c4 r8 g |
  c, f4 g8 |
  g2 |
  af4. g16 f |
  f8 af4 bf8 |
  c2 ~ |
  c4 r8 g |
  c g (a) g |
  f2 ~ |
  f4 r \bar "||" \break
  
  a8 ^> a ^> ~ a4 |
  d8 c16 bf g8 f |
  f4 r |
  R2*2
  bf4. g8 |
  g4. g8 |
  c c c f, |
  f4 r8 f |
  g g g e |
  e4 r8 d16 (f) |
  c8 f4 g8 |
  \slashedGrace { f16 (g } a4.) g16 (a) |
  f8 bf4 bf8 |
  \slashedGrace { a16 (bf } c4.) a8 |
  d, f4 a8 |
  g4 g8 g |
  g4. d8 |
  c2 ~ |
  c ~ |
  c4 r |
  f8. f16 bf8 ^> bf |
  r4 g8. g16 |
  c8 ^> c ^> r a |
  bf d,4 c8 |
  g'4. g8 |
  f2 ~ |
  f4 \bar "|."
}

nhacPhienKhucAlto = \relative c'' {
  R2*7
  
  <a f>8 ^> <a f> ~ <a f>4 |
  r8 f ^> d r |
  R2*2
  r4 r8 g |
  f4. f16 f |
  e2 ~ |
  e4 r |
  R2
  r4 r8 f |
  e4. e16 e |
  d2 ~ |
  d4 r |
  R2*2
  r4 r8 d |
  b!4. b16 b |
  c2 ~ |
  c4 r |
  r \tuplet 3/2 { e8 e e } |
  f4 \tuplet 3/2 { d8 d d } |
  e4. c8 |
  c d4 d8 |
  c2 ~ |
  c4 r |
  e8 ^> e ^> ~ e4 |
  R2
  r4 r8 c |
  f4. f8 |
  e4 \tuplet 3/2 { g8 g g } |
  af4 \tuplet 3/2 { af8 bf af } |
  g4. f8 |
  c df4 f8 |
  e2 |
  f8 ^> f ^> ~ f4 |
  f8 c16 a c8 f |
  g2 ~ |
  g4 r |
  r8 g \tuplet 3/2 { g8 f d } |
  c4. c8 |
  b c4 bf8 |
  a2
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \key af \major
  g'8 ^> g ^> ~ g4 |
  af8 g16 f af8 bf |
  c2 |
  af ^> |
  bf |
  af4 r |
  <df bf>2 |
  <c af>4 r8 c ^> |
  c4 ^> r |
  \tuplet 3/2 { df,8 bf c } c4 |
  r r8 g' |
  af8. c16 af (g) f8 |
  bf4 r |
  r8 df4 ^> df8 |
  c4 r |
  r r8 g |
  af8. c16 af (g) f8 |
  g4 bf8 ^> r |
  r af ^> r df ^> |
  c4 r |
  
  \key f \major
  e8 ^> e ^> ~ e4 |
  f8 c16 a c8 f |
  g2 ~ |
  g4 r |
  R2*5
  R2*19
  
  f,8 ^> f ^> ~ f4
  f8 c16 d b!8 b |
  c2 |
  R2*2
  af'4. g16 f |
  f8 f4 f8 |
  e2 ~ |
  e4 r8 g |
  c, a4 f'8 |
  e2 |
  af4. g16 f |
  f8 f4 f8 |
  e2 ~ |
  e4 r8 g |
  c, a4 f'8 |
  e2 |
  af4. g16 f |
  f8 f4 f8 |
  e2 ~ |
  e4 r8 g |
  c, e (f) e |
  c2 ~ |
  c4 r |
  
  <a' f>8 ^> <a f> ~ ^> <a f>4 |
  r8 f ^> d r |
  R2*3
  bf'4. g8 |
  g4. g8 |
  g g e d |
  d4 r8 d |
  d d bf c |
  c4 r8 bf |
  a d4 c8 |
  f4. c8 |
  a d4 f8 |
  e4. c8 |
  bf d4 f8 |
  e4 d8 c |
  b!4. b8 |
  c2 ~ |
  c ~ |
  c4 r |
  f8. f16 g8 ^> f ^> |
  r4 g8. g16 a8 ^> g ^> r c, |
  d bf4 c8 |
  d4 e |
  c2 ~ |
  c4
}

nhacPhienKhucTenor = \relative c {
  R2*7
  
  R2*42
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \key af \major
  <ef c>8 ^> <ef c> ^> ~ <ef c>4 |
  c8 bf16 af f'8 f |
  ef2 |
  f ^> |
  e!4 g8 e |
  f4 r |
  f e! |
  f r8 ef ^> |
  ef4 ^> r |
  \tuplet 3/2 { df8 bf c } c4 |
  r r8 g' |
  af8. c16 af (g) f8 |
  bf4 r |
  r8 f4 ^> f8 |
  ef4 r |
  r r8 g |
  af8. c16 af (g) f8 |
  e!4 e8 ^> r |
  r f ^> r bf ^> |
  af4 r |
  
  \key f \major
  g8 ^> g ~ g4 |
  R2
  r4 r8 d |
  g4. a8 |
  e4 \tuplet 3/2 { f8 f d } |
  c2 |
  a'8 a4 bf8 |
  bf4. bf8 |
  a4 \tuplet 3/2 { g8 c e, } |
  f2 ~ |
  f4 r |
  R2
}

nhacPhienKhucBas = \relative c {
  <f f,>8 ^> <f f,> ^> ~ <f f,>4 |
  R2
  <bf bf,>8 ^> <bf bf,> ^> ~ <bf bf,>4 |
  R2
  <c c,>8 ^> <c c,> ^> r <a a,> |
  <bf bf,> ^> <c c,> ^> r4 |
  <f, c f,>8 ^> <f c f,> ^> r4 |
  
  f8 ^> f ~ ^> f4 |
  r8 f ^> bf r |
  r4 r8 c, |
  d f d \slashedGrace { d16 ( } f8) |
  g2 ~ |
  g4 r |
  R2
  r8 c, d f |
  e8. g16 a8 a |
  a2 ~ |
  a4 r |
  R2
  r8 bf d bf |
  g4 \slashedGrace { e16 ( } g8) e16 (d) |
  c8. g16 c8 f |
  g2 ~ |
  g4 r |
  r4 r8 e |
  f e d f |
  g4 \tuplet 3/2 { a8 c cs } |
  d4 \tuplet 3/2 { d,8 bf' b! } |
  c4 bf8 bf |
  a (g) <e c>4 |
  f2 ~ |
  f4 r |
  c'8 ^> c ^> ~ c4 |
  af8 g16 f g8 c, |
  c2 ~ |
  c4 df |
  c \tuplet 3/2 { e8 e e } |
  f2 |
  \tuplet 3/2 { c'8 c c } df4 |
  af8 f4 b,!8 |
  c2 |
  f8 ^> f ^> ~ f4 |
  R2
  r4 r8 d |
  f e g4 ~ |
  g8 f \tuplet 3/2 { e8 (a,) b! } |
  c4. <g' g,>8 |
  <f g,> <e c>4 <e c>8 |
  <c f,>2 |
  
  \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
  \set Staff.printKeyCancellation = ##f
  \key af \major
  c8 ^> c ^> ~ c4 |
  f8 e!16 f df8 df |
  c2 |
  df ^> |
  c |
  f4 r |
  bf, c |
  f r8 <c' c,> ^> |
  <c c,>4 r |
  \tuplet 3/2 { df,8 f f } e!4 |
  r r8 g |
  af8. c16 af (g) f8 |
  bf4 r |
  r8 bf,4 ^> bf8 |
  c4 r |
  r r8 g' |
  af8. c16 af (g) f8 |
  c'4 c,8 ^> r |
  r df ^> r bf ^> |
  f'4 r |
  
  \key f \major
  c8 ^> c ^> ~ c4 |
  R2
  r4 r8 d |
  g4. a8 |
  e4 \tuplet 3/2 { f8 f d } |
  c2 |
  f8 f4 g8 |
  g4. g8 |
  f4 \tuplet 3/2 { e8 e e } |
  f,2 ~ |
  f4 r |
  R2*17
  
  f'8 ^> f ^> ~ f4 |
  R2
  r4 r8 c |
  \slashedGrace { d16 ( } f8) e16 c e8 f |
  g2 ( |
  f4) r |
  r8 df4 df8 |
  c4. c'8 |
  a16 (c) a (f) f8 g |
  c, d4 b!8 |
  bf2 |
  R2
  r8 df4 df8 |
  c4. c'8 |
  a16 ([c]) a (g) f8 g |
  c, d4 b!8 |
  c2 |
  R2
  r8 df4 df8 |
  c4. c'8 |
  a16 ([c]) a (g) f8 g |
  c, <c' c,>4 <bf c,>8 |
  <a f,>2 ~ |
  <a f,>4 r |
  
  f8 ^> f ^> ~ f4 |
  r8 f ^> bf r |
  r4 r8 c, |
  \slashedGrace { d16 ( } f8) d16 c f8 g |
  a2 |
  bf4. g8 |
  g4. f8 |
  e d c d |
  d4 r8 d |
  bf a g c |
  c4 r |
  R2
  f8 ^> c ^> d ^> e ^> |
  f4 d ^> |
  c8 ^> d ^> e ^> f ^> |
  g4 d8 b! |
  c4 f8 e |
  <<
    {
      \voiceOne
      g4. f8
    }
    \new Voice = "splitpart" {
      \voiceTwo
      g4 g,
    }
  >>
  \oneVoice
  <<
    {
      e'4 a8. bf16 |
      g8 a f g |
      e4
    }
    {
      c4 f8. g16 |
      e8 f d b! |
      c4
    }
  >>
  \oneVoice
  r4 |
  f8. f16 ef8 ^> d ^> |
  r4 g8. g16 |
  f8 ^> e ^> r f |
  bf, bf4 <f' a,>8 |
  <bf g,>4 <bf c,> |
  <a f,>2 ~ |
  <a f,>4
}

% Lời
loiPhienKhucSop = \lyricmode {
  \repeat unfold 21 { _ }
  No -- el Chúa đâu ở trong đền thờ.
  Cao quá đối với Ngài
  Sang quá đối với Ngài,
  Đẹp quá đối với Ngài,
  không được mịn màng,
  không được mịn màng như mây sơn Bạch Tuyết.
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
  Cố giữ vững nụ cười vì không sao khóc được nữa.
  
  No -- el, Chúa đâu ở trong đền thờ.
  Nếu không gặp Ngài trong tăm tối,
  thấy Ngài trong ánh sáng,
  Nếu không gặp Ngài trong nghèo khó,
  thấy Ngài trong cao sang,
  Nếu không gặp Ngài ở dưới đất,
  thấy Ngài cõi thiên đàng.
  No -- el, Chúa đâu ở trong đền thờ.
  Ta tìm Ngài và muôn năm không gặp Ngài,
  và muôn năm khôn gặp Ngài
  nếu lòng ta không mở,
  nếu lòng ta không mở,
  không mở cho những ai thiếu ánh sáng mặt trời.
  của một thế giới
  của một thế giới dư súng đạn và thiếu bánh cơm.
}

loiPhienKhucAlto = \lyricmode {
  No -- el
  No -- el
  Cao quá đối với Ngài
  Sang quá đối với Ngài,
  Đẹp quá đối với Ngài,
  không được mịn màng,
  không được mịn màng như mây sơn Bạch Tuyết.
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
  No -- el, No -- el
  Ta tìm Ngài va muôn năm không gặp Ngài,
  và muôn năm khôn gặp Ngài
  nếu lòng ta không mở,
  nếu lòng ta không mở,
  không mở cho những ai thiếu ánh sáng mặt trời.
  của một thế giới
  của một thế giới dư súng đạn
  và thiếu bánh cơm.
}

loiPhienKhucTenor = \lyricmode {
  No -- el Chúa đâu ở trong hang đá
  Hm __ _ _ _ _ _ _ _
  khóc thét khỏi cần ai thương
  Vì chỉ có một người thương đã chết đi,
  còn bảy đứa trẻ mồ côi.
  Ơ ơ ơ ơ
  No -- el Ngài đang chống nạng đi trên vỉa hè,
  Lê la kiếp sống mãi nghe nhạc khúc hòa bình.
}

loiPhienKhucBas = \lyricmode {
  \repeat unfold 11 { _ }
  No -- el, No -- el Ngài nằm nơi cửa đền thánh
  Vì Ngài đâu bằng viên đá thấp nhất.
  Vì tất cả Ngài giá không bằng một vòng xích sắt.
  Vì da dẻ Ngài nhăn nheo không được mịn màng,
  không được mịn màng như nước sơn Bạch Tuyết.
  No -- el, Chúa đâu ở trong đền thờ,
  đang nằm, nằm ngoài hè phố
  bơ vơ mưa gió nhạc rượu say sưa.
  No -- el
  Ngài đang ngồi đó ở đáy nhà thờ bên anh và bên tôi.
  No -- el Chúa đâu ở trong hang lừa
  Hm __ _ _ _ _ _
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
  %page-count = #7
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
    \override Lyrics.LyricSpace.minimum-distance = #0.8
    %\override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
