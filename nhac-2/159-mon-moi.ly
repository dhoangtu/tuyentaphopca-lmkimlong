% Cài đặt chung
\version "2.22.1"
\include "english.ly"

\header {
  title = \markup { \fontsize #3 "Mòn Mỏi" }
  poet = "Ý: Is. 40, 8"
  composer = "Thơ: Lm. Xuân Ly Băng"
  arranger = "Nhạc: Lm. Kim Long"
  tagline = ##f
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

% Nhạc
nhacDiepKhucSop = \relative c'' {
  \set Staff.printKeyCancellation = ##f
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  a2 |
  f8 a4 f8 |
  e4. e'8 |
  d2 |
  bf8 g4 bf8 |
  a2 ~ |
  a4 r |
  R2
  d8 e4 d8 |
  cs2 ~ |
  cs4 r |
  r \tuplet 3/2 { f8 ^> e d } |
  g2 |
  e8 ^\f f4 e8 |
  d2 ~ |
  d4 \tuplet 3/2 { g,8 g e } |
  a2 ~ |
  a4 \tuplet 3/2 { a8 bf a } |
  d2 ~ |
  d ~ |
  d4 r |
  r r8 d |
  bf ^> bf4 ^> bf8 |
  bf4. d8 |
  d4 g, |
  a2 |
  e'8 f4 e8 |
  \set Score.repeatCommands = #'((volta "1"))
  d2 ~ |
  d4 r8 d,16 g |
  \set Score.repeatCommands = #'((volta #f))
  \break
  
  \time 3/4
  g4. g8 \tuplet 3/2 { g g f } |
  e2 r8
  a,16
  <<
    {
      f' |
      f4. e8 \tuplet 3/2 { g8 f g } |
      a2 r8 d16 bf |
      bf4. g8 \tuplet 3/2 { bf d a } |
      a2 r8 e16 g |
      bf4. f8 \tuplet 3/2 { e c d }
    }
    \notBePhu -2 {
      d16 |
      d4. a8 \tuplet 3/2 { bf a d } |
      f2 r8 fs16 g |
      g4. e8 \tuplet 3/2 { g f d } |
      d2 r8 c16 d |
      bf4. d8 \tuplet 3/2 { a8 a a }
    }
  >>
  \once \override Score.RehearsalMark.font-size = #0.1
  \tweak extra-offset #'(8 . 0)
  \mark \markup { \musicglyph #"scripts.segno" }
  d2.
  \bar "||" 
  \break
  
  \time 2/4
  \set Score.repeatCommands = #'((volta "2"))
  d'2 ~ |
  d4 r |
  \set Score.repeatCommands = #'((volta #f))
  d4. c8 |
  bf2 |
  d8 d4 d8 |
  e2 |
  cs8 b!4 cs8 |
  d2 ~ |
  d4 d \bar "||"
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  
  \time 3/4
  \key g \major
  b2 c4 |
  c4. (b8) g4 |
  a2. |
  c4 c c |
  e2 a,4 |
  a2 cs4 |
  d2. ~ |
  d4 r d |
  b2 c4 |
  c4. (b8) a4 |
  e2. |
  e4 d fs |
  a2 e4 |
  e (d) g |
  
  \time 2/4
  g2 ~ |
  g4 r8 \bar "||" \break
  
  \set Staff.explicitClefVisibility = #end-of-line-invisible
  \key bf \major
  g16 bf |
  bf4. c16 bf |
  a4. c8 |
  d4. d,16 d |
  e!4. d8 |
  bf' bf4 a8 |
  g2 ~ |
  g4 r8
  <<
    {
      d'16 d |
      d4. bf8 |
      bf c4 bf8 |
      a4 a16 ^([bf) a8] |
      g2 |
      c8 c4 cs8 |
      d2 ~ |
      d4 d
    }
    \notBePhu -2 {
      bf16 bf |
      bf4. g8 |
      g a4 g8 |
      d4 d8 [c] |
      bf2 |
      e!8 ef4 ef8 |
      d2 ~ |
      d4 <fs d>
    }
  >>
  \once \override Score.RehearsalMark.font-size = #0.1
  \mark \markup { \musicglyph #"scripts.segno" }
  \bar "||"
}

nhacDiepKhucAlto = \relative c' {
  \set Staff.printKeyCancellation = ##f
  f2 |
  d2 ~ |
  d4 cs |
  d8 e f a |
  g4. g8 |
  e2 ~ |
  e4 r |
  g4. ^> g8 |
  f4 r8 f |
  e2 ~ |
  e4 r |
  \tuplet 3/2 { g8 ^> f e } a4 |
  bf8 d4 bf8 |
  a4 g8 g |
  f2 ~ |
  f4 r |
  r \tuplet 3/2 { f8 f \slashedGrace { g16 ( } f8) } |
  e2 |
  r4 \tuplet 3/2 { d8 d g } |
  f2 ~ |
  f4 r |
  r r8 a |
  f8 ^> f4 ^> f8 |
  g4. bf8 |
  bf4 e, |
  f2 |
  g8 a4 g8 |
  f2 ~ |
  f4 r
  
  \time 3/4
  R2.*8
  
  \time 2/4
  f2 ~ |
  f4 r |
  a f8 e |
  d2 |
  f8 f4 f8 |
  g2 |
  g8 e4 g8 |
  fs2 ~ |
  fs4 fs |
  
  \time 3/4
  \key g \major
  g2 g4 |
  a4. (g8) e4 |
  fs2. |
  a4 a a |
  b2 e,4 |
  d2 g4 |
  g (fs8 e fs4) ~ |
  fs r fs |
  g2 g4 |
  fs4. (g8) d4 |
  e2. |
  a,4 b d |
  e2 c4 |
  c2 c4 |
  
  \time 2/4
  b2 ~ |
  b4 r8
}

nhacDiepKhucTenor = \relative c' {
  \set Staff.printKeyCancellation = ##f
  d4 c8 bf |
  a d4 a8 |
  bf4 a ~ |
  a d ~ |
  d e8 d |
  cs2 ~ |
  cs4 r |
  bf4. ^> bf8 |
  a4 r8 a |
  a2 ~ |
  a4 r |
  r \tuplet 3/2 { d8 ^> c a } |
  d2 |
  c8 d4 c8 |
  a2 ~ |
  a4 r |
  r \tuplet 3/2 { d8 d \slashedGrace { e16 (} d8) } |
  c2 |
  r4 \tuplet 3/2 { g8 g bf } |
  a2 ~ |
  a4 r |
  r r8 f' |
  d ^> d4 ^> d8 |
  d2 ~ |
  d4 r |
  r8 d ^> d ^> d ^> |
  d d4 cs8 |
  a2 ~ |
  a4 r |
  
  \time 3/4
  R2.*8
  
  \time 2/4
  a2 ~ |
  a4 \tuplet 3/2 { a,8 d e } |
  f4 \tuplet 3/2 { d8 e f } |
  g2 |
  a8 a4 a8 |
  bf2 |
  a4 a |
  a2 ~ |
  a4 d |
  
  \time 3/4
  \key g \major
  d2 e4 |
  d2 d4 |
  d2. |
  e4 e e |
  e4. (d8) c4 |
  a2 a4 |
  a2. ~ |
  a4 r a |
  g2 a4 |
  d2 fs,4 |
  a4. a8 g4 |
  fs4 g b |
  c2 a8 (g) |
  fs2 a4 |
  
  \time 2/4 g2 ~ |
  g4 r8
}

nhacDiepKhucBas = \relative c {
  \set Staff.printKeyCancellation = ##f
  d2 ~ |
  d |
  g |
  f8 d4 f8 |
  g4 e |
  a2 |
  g8 ^\f a4 g16 (f) |
  d2 ~ |
  d4 r8 d |
  a2 ~ |
  a4 \tuplet 3/2 { a'8 ^> g f } |
  bf4 (a) |
  g8 f4 g8 |
  a4 a, |
  d2 ~ |
  d4 r |
  r \tuplet 3/2 { d8 d d } |
  a2 |
  r4 \tuplet 3/2 { bf8 g g } |
  d'4. d8 ^\f |
  f4 f |
  a2 |
  bf8 ^> bf4 ^> bf8 |
  g2 ~ |
  g4 r |
  r8 d' ^> d ^> d ^> |
  bf8 a4 a8 |
  d,2 ~ |
  d4 r |
  
  \time 3/4
  R2.*8
  
  \time 2/4
  d2 ~ |
  d4 \tuplet 3/2 { a8 d e } |
  f4 \tuplet 3/2 { d8 e f } |
  g2 |
  d8 d4 d8 |
  g4. e8 |
  a4 a, |
  d2 ~ |
  d4 d |
  
  \time 3/4
  \key g \major
  g2 g4 |
  fs2 g4 |
  d4. d'8 c ([b]) |
  a4 a a |
  gs2 a4 |
  f!2 e4 |
  d2. ~ |
  d4 r d |
  e2 ef4 |
  d2 d4 |
  cs2. |
  c!?4 b b |
  a2 a4 |
  d2 d4 |
  
  \time 2/4
  g,2 ~ |
  g4 r8
}

% Lời
loiDiepKhucSop = \lyricmode {
  Hm __ \repeat unfold 10 { _ }
  Sông núi bâng khuâng.
  Gió than niềm gió.
  Trăng khóc ý trăng.
  Si -- on vàng võ mòn mỏi chờ mong.
  nhớ hận ngập tràn lòng.
  Gia -- liêm vạn thuở, xương núi
  máu sông.
  Lòng Si -- on hoang vu hơn cỏ dại.
  Sầu Si -- on sầu hơn sầu quan tài.
  Mắt Si -- on buồn hơn mắt người mù.
  Nhạc Si -- on thảm hơn nhạc chinh phu.
  sông.
  Hm __ \repeat unfold 2 { _ }
  nghe chăng ai oán chảy tràn muôn môi.
  Ước mong quá lắm, trời ơi
  Cho sương sa xuống ruộng đời hoang liêu.
  Chắp tay vái đám mây chiều
  mưa người công chính là điều tâm tư.
  Sầu tâm tư đã chín rồi chưa hái,
  rừng thời gian bạc tóc đứng mênh mông.
  Si -- on ơi! Lệ chãy mãi trong lòng
  biết bao giờ Vua ngươi mới đến. Ước
}

loiDiepKhucAlto = \lyricmode {
  Hm __ \repeat unfold 9 { _ }
  Hm __ _ _ bâng khuâng.
  gió than niềm gió trăng khóc ý trăng, khóc ý trăng.
  Si -- on võ vàng mòn mỏi nhớ mong,
  nhớ hận ngập tràn lòng,
  Gia -- liêm vạn thuở, xương núi máu sông.
  sông.
  Hm __ \repeat unfold 3 { _ }
  nghe chăng ai oán chảy tràn muôn môi.
  Ước mong quá lắm, trời ơi
  Cho sương sa xuống ruộng đời hoang liêu.
  Chắp tay vái đám mây chiều
  mưa người công chính là điều tâm tư.
}

loiDiepKhucTenor = \lyricmode {
  Hm __ \repeat unfold 11 { _ }
  Hm __ _ _ bâng khuâng.
  Gió than niềm gió trăng khóc ý trăng.
  Si -- on võ vàng mòn mỏi nhớ mong.
  nhớ hận ngập tràn lòng.
  Gia -- liêm nay xương núi máu sông.
  sông.
  Ngày đêm năm tháng, dòng thời gian trôi,
  nghe chăng ai oán chảy muôn môi.
  Ước mong quá lắm, hỡi ơi
  Cho sương sa xuống ruộng đời hoang liêu.
  Chắp tay vái đám mây chiều
  hãy mau mưa người công chính là điều tâm tư.
}

loiDiepKhucBas = \lyricmode {
  Hm __ \repeat unfold 7 { _ }
  Mây nước lạnh lùng bâng khuâng.
  Gió than niềm gió trăng mọc cô vắng vì trăng.
  Si -- on võ vàng mòn mỏi chờ mong.
  Đồi Ly -- băng nhớ hận ngập tràn lòng Gia -- liêm
  nay xương núi, máu sông.
  sông.
  Ngày đêm năm tháng dòng thời gian trôi,
  nghe chăng ai oán tràn chày ngàn môi.
  Ước mong quá lắm hỡi ơi
  hãy mau cho sương sa xuống ruộng đời hoang liêu.
  Chắp tay vái đám mây chiều
  mưa người công bình là điều tâm tư.
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
  %page-count = #4
  %ragged-bottom = ##f
}

TongNhip = {
  \key f \major \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1)
}

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
        \clef "violin_8"
        \new Voice = beTenor {
          \TongNhip \nhacDiepKhucTenor
        }
      \new Lyrics \lyricsto beTenor \loiDiepKhucTenor
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
    \override Lyrics.LyricSpace.minimum-distance = #1
    \override Score.BarNumber.break-visibility = ##(#f #f #f)
    \override Score.SpacingSpanner.uniform-stretching = ##t
    \context {
      \Staff \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}
